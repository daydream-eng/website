local site_map = require("@template/site_map")
local flatten = require("@util/flatten")
local fs = require("@lune/fs" :: any)

pcall(fs.removeDir, "docs")
fs.copy("static", "docs")

for _, location in site_map do
	local path = location.path:gsub("^/", ""):gsub("/$", ""):split("/")
	local parent_path = table.clone(path)
	parent_path[#parent_path] = nil

	local dir_path = "docs/" .. table.concat(path, "/")
	local file_path = dir_path .. "/index.html"

	local rendered = flatten(location.page { path = path })

	fs.writeDir(dir_path)
	fs.writeFile(file_path, rendered)
end
