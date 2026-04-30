local html_box = require("@util/html_box")
local html_text = require("@util/html_text")
local html = require("@util/html")
local site_url = require("@util/site_url")
local button = require("@components/button")
local logo = require("@components/logo")

local footer = html_box "footer"
local section = html_box "section"
local h3 = html_text "h3"
local p = html "p"
local a = html "a"

return function(
	props: {}
)
	return footer {
		section {
			h3 "Satisfy your curiosity.",
			p { text = "Get monthly updates on Cavey, with tips and deep discussion." },
			p { text = "And maybe even a few exclusives, just for you. ;)" },
			button {
				href = site_url "news",
				text = "Learn more"
			}
		},
		section {
			logo {},
			p {
				children = {
					"© Daniel P H Fox. All rights reserved.<br>",
					a {
						href = site_url "ai-policy",
						text = "Cavey's AI policy"
					}
				}
			 }
		}
	}
end