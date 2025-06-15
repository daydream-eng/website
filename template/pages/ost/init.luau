local html = require("@util/html")
local html_text = require("@util/html_text")
local html_box = require("@util/html_box")
local common_urls = require("@config/common_urls")
local document = require("@components/document")
local button = require("@components/button")

local h1 = html_text "h1"
local h2 = html_text "h2"
local h3 = html_text "h3"
local p = html_text "p"
local a = html "a"
local p_box = html_box "p"

return function(
	props: {}
)
	return document {
		site_nav = { current_page = "ost" },
		background_name = "ravine",
		header = {
			h1 "Music to spelunk to.",
			p "Listen to some demos from the in-development Daydream OST!",
			p "Ambient, gentle tunes paying homage to classic soundtracks.",
			button {
				jumbo = true,
				href = common_urls.youtube_ost_demos,
				text = "Demos on YouTube"
			}
		},
		main = {
			h2 "New sound, classic tone.",
			p_box {
				"The Daydream OST blends together FM synths and analogue sounds with acoustic instruments, to create \
				an overall sound inspired by the earlier pioneering musical work of ",
				a {
					href = "https://c418.org/",
					text = "Daniel Rosenfeld"
				},
				"."
			},
			p "From there, the OST explores more subtle and lush directions, with a larger emphasis on space & pads, \
				dynamic contrast, and crafting distinct moods for different moments. The goal is to craft a soundtrack \
				that both amplifies every environment you're in, and lets you zone out as you play.",
			
			h3 "Quiet when it needs to be.",
			p "The Daydream OST is defined by silent moments as much as its music. Instead of running continuous mixes \
				of music as you play, Daydream aims to lean into the sound of the world around you, building up loops \
				and foley to create a world that's sonically alive without taking up space.",
			p "Further, Daydream's OST contains many 'interjections' - gentle, low volume musical motifs that stand on \
				their own without the backing of a full song. Interjections are designed to finely dust music onto \
				scenes, allowing a sparser soundtrack without becoming completely silent.",

			h3 "Reflective of the world around you.",
			p "Daydream will sport a dynamic music director to gently guide song selections as you play. Based on your \
				current surroundings, you'll hear music which evokes different tones and timbres to emphasise where \
				you are at each moment.",
			p "As you explore the depths, you'll hear warmer, contemplative pads and moodier synths. When you return, \
				enjoy sparser, lighter arrangements as you wander a lonely world. Even the time of day and weather \
				affect the music choices you hear!"
		}
	}
end