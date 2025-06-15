local site_map = require("@template/site_map")
local flatten = require("@util/flatten")
local build_scripts = require("@config/build_scripts")
local fs = require("@lune/fs" :: any)
local process = require("@lune/process" :: any)

pcall(fs.removeDir, "docs")
fs.copy("static", "docs")

for _, location in site_map do
	local path = location.path:gsub("^/", ""):gsub("/$", ""):split("/")
	local parent_path = table.clone(path)
	parent_path[#parent_path] = nil

	local dir_path = "docs/" .. table.concat(path, "/")
	local file_path = dir_path .. "/index.html"

	local rendered = flatten(location.page(location.props or {}))

	fs.writeDir(dir_path)
	fs.writeFile(file_path, rendered)
end

for _, script in build_scripts do
	local result = process.spawn("lune", { "run", "build_scripts/" .. script })
	if not result.ok then
		print("Error in build script:", script)
		print(result.stderr)
	end
end