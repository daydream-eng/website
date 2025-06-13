local html = require("@util/html")
local html_text = require("@util/html_text")
local html_box = require("@util/html_box")
local site_url = require("@util/site_url")
local site_nav = require("@components/site_nav")
local site_footer = require("@components/site_footer")

local root = html "html"
local head = html_box "head"
local body = html_box "body"
local meta = html "meta"
local title = html_text "title"
local link = html "link"
local header = html_box "header"
local main = html_box "main"

return function(
	props: {
		title: string?,
		site_nav: {
			current_page: string?
		},
		header: html.Child,
		main: html.Child
	}
)
	return {
		"<!DOCTYPE html>",
		root {
			lang = "en",
			children = {
				head {
					meta { charset = "UTF-8" },
					meta { name = "viewport", content = "width=device-width, initial-scale=1.0" },

					title ((if props.title == nil then "" else (props.title .. " - ")) .. "Daydream"),

					link { rel = "icon", href = site_url "assets/images/icon.png", type = "image/png" },
					link { rel = "stylesheet", href = site_url "assets/style/font.css" },
					link { rel = "stylesheet", href = site_url "assets/style/common.css" }
				},
				body {
					site_nav { current_page = props.site_nav.current_page },
					header (props.header),
					main (props.main),
					site_footer {}
				}
			}
		}
	}
end