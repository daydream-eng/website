local html = require("@util/html")
local html_text = require("@util/html_text")
local html_box = require("@util/html_box")
local site_url = require("@util/site_url")
local common_urls = require("@config/common_urls")
local document = require("@components/document")
local button = require("@components/button")
local gallery_with_prelude = require("@pages/index/gallery_with_prelude")
local gallery = require("@components/gallery")

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
			h1 "Dig down, build out, craft up.",
			p "Get creative with your tools to navigate impossibly deep caves, master environmental hazards, and \
				discover a lonely overworld.",
			p "Plant your stake by building an ever-evolving base of operations, and thrive by unfolding multiple \
				rich, complex crafting progressions.",
			button {
				jumbo = true,
				href = site_url "news",
				text = "Get monthly updates"
			}
		},
		main = {
			h2 "Your dream worlds.",
			p "Explore an infinite world full of exciting terrain and sprawling 3D networks of caves. Master the \
				massive subterranea and its extreme shapes, tuned to generate fantastical chambers filled with \
				stunning magma pools and eye-catching resources.",
				
			h2 "Grow from simple roots.",
			p "Plant your stake with an ever-evolving base of operations, built from the blocks you find in the world. \
				Assemble a creative range of workstations to unfold multipe rich, complex crafting progressions. \
				Expand your abilities by investing in tools that change the way you interact with the world.",

			gallery {
				images = {
					{ src = site_url "assets/images/galleries/sunset_cave.jpg", alt = "A cave at golden hour" },
					{ src = site_url "assets/images/galleries/forest_cliff.jpg", alt = "Cliffs tower over a forest" },
					{ src = site_url "assets/images/galleries/cave.jpg", alt = "Magma lights up a huge cave" }
				}
			},
			
			h2 "Think on your feet.",
			p "Everything interacts. Use blocks, material interactions, and physics to master environmental hazards \
				and navigate a world that's larger than you. Keep your eyes open and select your tools wisely to adapt \
				to any situation you find yourself in.",
				
			h2 "Shape your creations.",
			p "Use smaller, more detailed blocks to build anything you can imagine. Paint the world in coloured \
				lighting that realistically mixes with every surface. Mix-and-match blocks in ways you've never done \
				before, with multiple objects per block.",
			
			gallery {
				images = {
					{ src = site_url "assets/images/galleries/sunny_hills.jpg", alt = "Steep hils bathed in afternoon sun" },
					{ src = site_url "assets/images/galleries/looking-out-cave.jpg", alt = "Looking out from a cave entrance" },
					{ src = site_url "assets/images/galleries/cave_light_beam.jpg", alt = "A patch of sunlight shines into a cave" },
				}
			},

			h2 "Powered by the Daydream Engine.",
			p_box {
				"Daydream runs on the ",
				a {
					href = site_url "development",
					text = "Daydream Engine"
				}, 
				" - hyper-optimised for massive voxel worlds, high-quality graphics, and real-time object interactions.",
			},
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