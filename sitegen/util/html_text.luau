local html = require("@util/html")

return function(
	tag: string
)
	return function(
		text: string
	)
		return html (tag) { text = text:gsub("%s+", " ") }
	end
end