local html = require("@util/html")
local html_box = require("@util/html_box")
local for_each = require("@util/for_each")

export type Image = { src: string, alt: string }

local section = html "section"
local figure = html_box "figure"
local img = html "img"

return function(
	props: {
		images: { Image }
	}
)
	return section {
		class = "gallery",
		children = for_each (props.images, function(order, image)
			return order, figure (img (image))
		end)
	}
end