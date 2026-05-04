local site_url = require("@util/site_url")

return {
	{
		id = "index",
		href = site_url "",
		title = "About"
	},
	{
		id = "dev",
		href = site_url "dev",
		title = "Roadmap"
	}
}