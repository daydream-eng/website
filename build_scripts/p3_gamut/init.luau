local fs = require("@lune/fs")
local process = require("@lune/process")

local function fix_one(
	path: string
)
	local result = process.exec("magick", {
		path,
		"+profile",
		"*",
		"-profile",
		"build_scripts/p3_gamut/p3.icc",
		(path:gsub("%.nogamut", ""))
	})
	if not result.ok then
		error(result.stderr)
	end
end

local function fix_all_in(
	path: string
)
	if fs.isDir(path) then
		for _, name in fs.readDir(path) do
			fix_all_in(path .. "/" .. name)
		end
	elseif path:match("%.nogamut") then
		fix_one(path)
	end
end

fix_all_in("docs")