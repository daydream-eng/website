local html = require("@util/html")

local aside = html "aside"

return function(
	props: {
		current_page: string?
	}
)
	return aside {
		class = "compatibility-warning",
		text = "This browser doesn't support all necessary web features. For a better experience, try a different browser."
	}
end