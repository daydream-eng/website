local html = require("@util/html")
local html_box = require("@util/html_box")
local html_text = require("@util/html_text")
local site_url = require("@util/site_url")
local button = require("@components/button")
local logo = require("@components/logo")

local footer = html_box "footer"
local section = html_box "section"
local h3 = html_text "h3"
local p = html_text "p"
local br = html "br"

return function(
	props: {}
)
	return footer {
		section {
			h3 "Satisfy your curiosity.",
			p "Get monthly updates on Daydream, with tips and deep discussion.",
			p "And maybe even a few exclusives, just for you. ;)",
			button {
				href = site_url "news",
				text = "Learn more"
			}
		},
		section {
			logo {},
			br {},
			p "© Daniel P H Fox. All rights reserved."
		}
	}
end