local html = require("@util/html")
local html_box = require("@util/html_box")
local for_each = require("@util/for_each")
local site_url = require("@util/site_url")
local class_list = require("@util/class_list")
local nav_pages = require("@config/nav_pages")
local common_urls = require("@config/common_urls")
local logo = require("@components/logo")
local button = require("@components/button")

local nav = html_box "nav"
local a = html "a"

return function(
	props: {
		current_page: string?
	}
)
	return nav {
		a {
			href = site_url "",
			children = logo {}
		},
		
		for_each (nav_pages, function(order, page)
			return order, a {
				class = class_list { page.id == props.current_page and props.current_page ~= nil and "selected" },
				href = page.href,
				text = page.title
			}
		end),

		button {
			href = common_urls.news,
			text = "Newsletter"
		}
	}
end