local html = require("@util/html")
local html_text = require("@util/html_text")
local html_box = require("@util/html_box")
local site_url = require("@util/site_url")
local common_urls = require("@config/common_urls")
local document = require("@components/document")
local button = require("@components/button")
local gallery_with_prelude = require("@pages/index/gallery_with_prelude")

local h1 = html_text "h1"
local h2 = html_text "h2"
local p = html_text "p"
local a = html "a"
local p_box = html_box "p"

return function(
	props: {}
)
	return document {
		site_nav = { current_page = "index" },
		background_name = "beach_cliff",
		header = {
			h1 "A subterranea of your own.",
			p "Daydream is a peaceful voxel caving & building game by Daniel P H Fox.",
			p "Pick resources from the ground. Expand your base. Go down and grow out.",
			p "The engine is early in development, and I'd love to show it to you.",
			button {
				jumbo = true,
				href = site_url "news",
				text = "Get monthly updates"
			}
		},
		main = {
			gallery_with_prelude {
				title = "Your dream worlds.",
				desc = "Explore an infinite world full of exciting terrain and impossibly deep caves - tuned to be \
						awesome. Live the adventures you've always wanted to play.",
				images = {
					{ src = site_url "assets/images/galleries/sunset_cave.jpg", alt = "A cave at golden hour" },
					{ src = site_url "assets/images/galleries/forest_cliff.jpg", alt = "Cliffs tower over a forest" },
					{ src = site_url "assets/images/galleries/cave.jpg", alt = "Magma lights up a huge cave" }
				}
			},
			
			gallery_with_prelude {
				title = "Grow from simple roots.",
				desc = "Plant your stake with an ever-evolving base of operations. Use a creative range of \
						workstations to unfold multiple engaging crafting progressions.",
				images = {
					{ src = site_url "assets/images/galleries/looking-out-cave.jpg", alt = "Looking out from a cave entrance" }
				}
			},
			
			gallery_with_prelude {
				title = "Think on your feet.",
				desc = "Everything interacts. Use blocks, material interactions, and physics to master \
						environmental hazards and navigate a world that's larger than you.",
				images = {
					{ src = site_url "assets/images/galleries/sunny_hills.jpg", alt = "Steep hils bathed in afternoon sun" }
				}
			},
			
			gallery_with_prelude {
				title = "Shape your creations.",
				desc = "Use smaller, more detailed blocks to build anything you can imagine. Paint the world in \
						coloured lighting that realistically mixes with every surface.",
				images = {
					{ src = site_url "assets/images/galleries/cave_light_beam.jpg", alt = "A patch of sunlight shines into a cave" }
				}
			},

			h2 "Powered by the Daydream Engine.",
			p "Daydream runs on the Daydream Engine - hyper-optimised for massive voxel worlds, high-quality graphics, \
			   and real-time object interactions.",
			p "Play the full Daydream experience on a wide range of hardware, including dedicated Steam Deck support \
			   for casual play on-the-go.",

			h2 "Follow along with development.",
			p_box {
				"Daydream is being developed openly ",
				a {
					href = common_urls.youtube_development_series,
					text = "as part of a YouTube series"
				},
				" and you can ",
				a {
					href = site_url "news",
					text = "get monthly updates to your inbox"
				},
				"."
			},
			p_box {
				"Want an early peek at what's in store, or learn more about the process?",
				button {
					href = site_url "dev",
					text = "How Daydream is developed"
				}
			},
			
		}
	}
end