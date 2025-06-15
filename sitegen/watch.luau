local fs = require("@lune/fs" :: any)
local task = require("@lune/task" :: any)
local process = require("@lune/process" :: any)

local watch_paths = {}

local function watch(
	path: string
)
	if fs.isDir(path) then
		for _, name in fs.readDir(path) do
			watch(path .. "/" .. name)
		end
	elseif fs.isFile(path) then
		table.insert(watch_paths, path)
	end
end

watch("config")
watch("template")
watch("static")

local last_modified_at = {}

local NUM_TO_ALWAYS_CHECK = 3
local NUM_TO_SOMETIMES_CHECK = 10
local next_index = 0
local just_started = true
local needs_rebuild = false

while true do
	task.wait(0.2)
	local rebuild = nil
	local function consider(index)
		local path = watch_paths[index]
		local meta = fs.metadata(path)
		if meta.modifiedAt ~= last_modified_at[index] then
			last_modified_at[index] = meta.modifiedAt
			rebuild = index
		end
	end
	if just_started then
		for index = 1, #watch_paths do
			consider(index)
		end
		just_started = false
	else
		for index = 1, NUM_TO_ALWAYS_CHECK do
			consider(index)
		end
		for _ = 1, NUM_TO_SOMETIMES_CHECK do
			next_index += 1
			if next_index > #watch_paths then
				next_index = NUM_TO_ALWAYS_CHECK + 1
				just_started = false
			end
			consider(next_index)
		end
	end
	if rebuild then
		needs_rebuild = true
		watch_paths[1], watch_paths[rebuild] = watch_paths[rebuild], watch_paths[1]
		last_modified_at[1], last_modified_at[rebuild] = last_modified_at[rebuild], last_modified_at[1]
		task.wait(1)
	elseif needs_rebuild then
		needs_rebuild = false
		for _ = 1, 80 do
			print()
		end
		local result = process.spawn("lune", { "run", "sitegen/lune" })
		if result.ok then
			print("Build OK")
		else
			print(result.stderr)
			print("=====")
			print("Build failed")
		end
	end
end