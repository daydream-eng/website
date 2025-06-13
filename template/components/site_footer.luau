local html = require("@util/html")
local html_box = require("@util/html_box")
local html_text = require("@util/html_text")
local common_urls = require("@config/common_urls")
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
			p "Get monthly updates on Daydream, with tips and extra discussion.",
			p "You'll also be first in line for exciting new opportunities.",
			button {
				href = common_urls.news,
				text = "Join the club"
			}
		},
		section {
			logo {},
			br {},
			p "© Daniel P H Fox. All rights reserved."
		}
	}
end