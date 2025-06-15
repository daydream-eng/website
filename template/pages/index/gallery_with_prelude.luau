local html_text = require("@util/html_text")

local gallery = require("@components/gallery")
local h2 = html_text "h2"
local p = html_text "p"

return function(
	props: {
		title: string,
		desc: string,
		images: { gallery.Image }
	}
)
	return {
		h2 (props.title),
		p (props.desc),
		gallery { images = props.images }
	}
end