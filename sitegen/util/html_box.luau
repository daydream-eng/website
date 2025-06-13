local html = require("@util/html")

return function(
	tag: string
)
	return function(
		children: html.Child
	)
		return html (tag) { children = children }
	end
end