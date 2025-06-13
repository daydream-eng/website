local html = require("@util/html")
local site_url = require("@util/site_url")

local img = html "img"

return function(
	props: {}
)
	return img {
		class = "logo-image",
		src = site_url "assets/images/logo.png",
		alt = "Daydream"
	}
end