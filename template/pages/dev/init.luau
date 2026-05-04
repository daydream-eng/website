local html_text = require("@util/html_text")
local common_urls = require("@config/common_urls")
local site_url = require("@util/site_url")
local document = require("@components/document")
local button = require("@components/button")

local h1 = html_text "h1"
local h2 = html_text "h2"
local h3 = html_text "h3"
local p = html_text "p"

return function(
	props: {}
)
	return document {
		site_nav = { current_page = "dev" },
		background_name = "blocks_closeup",
		header = {
			h1 "Building blocks.",
			p "I've been building the Cavey Engine since 2022. It's time to make a game with it.",
			p "Private alpha builds of Cavey will be made available in 2026.",
			button {
				jumbo = true,
				href = site_url "news",
				text = "Get notified via email"
			}
		},
		main = {
			h2 "Roadmap",
			p "I'm organising Cavey's development into four distinct phases with clear criteria. I'm making them public so that \
				you can follow along with development progress, too.",
			p "While dates are subject to change, I'm reasonably confident in any dates I publicly have shared here.",
			
			h3 "Pre-alpha (2024 - 2026)",
			p "Ensuring that the Cavey Engine is a smooth and reliable foundation to build gameplay systems on top of.",
			p "No gameplay is present at this stage. Validation on the Steam Deck OLED is being performed to ensure that \
				the engine can achieve sufficient throughput on the target hardware and meet framerate targets.",

			h3 "Alpha (2026 - ???)",
			p "Engine foundations have been established. Performance target has been validated and is being monitored.",
			p "Gameplay development begins with a focus on core mechanics and content, and remaining engine systems are \
				fleshed out to help support them. Feature implementations may be buggy or incorrect.",
			p "Closed testing begins with privately distributed builds on Patreon. Builds are not yet playable end-to-end. \
				Cavey is available for wishlisting on Steam.",

			h3 "Beta (??? - ???)",
			p "Essential gameplay loops are in place and a vertical slice of the game is playable end-to-end. Engine and performance \
				work has broadly concluded and all forward progress is polish, content, and bug-fixing.",
			p "The game is ready to be presented to a wider audience. Public demo of Cavey is released, while private builds continue \
				to be distributed on Patreon.",

			h3 "Release (??? - ???)",
			p "Gameplay design is complete and represents the full vision of what I wanted Cavey to be. All major bugs are fixed and \
				Cavey meets the quality bar on the target hardware.",

			p "Cavey is released on Steam as a one-time purchase. The Patreon testing program is concluded."
		}
	}
end