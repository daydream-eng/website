local site_url = require("@config/site_url")

return function(suffix: string)
	return `{site_url.base}/{suffix}`
end