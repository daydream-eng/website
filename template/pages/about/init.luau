local html_text = require("@util/html_text")
local site_url = require("@util/site_url")
local common_urls = require("@config/common_urls")
local document = require("@components/document")
local button = require("@components/button")
local gallery_with_prelude = require("@pages/about/gallery_with_prelude")

local h1 = html_text "h1"
local p = html_text "p"

return function(
	props: {}
)
	return document {
		site_nav = { current_page = "about" },
		header = {
			h1 "This is Daydream.",
			p "Daydream is a casual, focused voxel survival game by Daniel P H Fox.",
			p "Dig resources from the ground. Build out your base. Rinse, repeat.",
			p "The engine is actively under development, and I'd love to show it to you.",
			button {
				jumbo = true,
				href = common_urls.news,
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
					{ src = site_url "assets/images/galleries/cave.jpg", alt = "Magma lights up a huge cave" },
					{ src = site_url "assets/images/galleries/forest_cliff.jpg", alt = "Cliffs tower over a forest" }
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
			}
		}
	}
end