local html = require("@util/html")
local html_text = require("@util/html_text")
local html_box = require("@util/html_box")
local site_url = require("@util/site_url")
local common_urls = require("@config/common_urls")
local document = require("@components/document")
local button = require("@components/button")
local gallery = require("@components/gallery")
local newsletter_signup = require("@pages/news/newsletter_signup")

local h1 = html_text "h1"
local h2 = html_text "h2"
local p = html_text "p"
local a = html "a"
local p_box = html_box "p"
local link = html "link"
local script = html "script"

return function(
	props: {}
)
	return document {
		site_nav = { current_page = "index" },
		background_name = "cave_looking_out",
		extra_head = {
			link { rel = "stylesheet", href = site_url "assets/style/newsletter_signup.css" },
			link { id = "newsletter-error-page", href = site_url "news/fail" },
			link { id = "newsletter-success-page", href = site_url "news/success" },
			script { defer = true, src = site_url "assets/scripts/newsletter_signup.js" }
		},
		header = {
			h1 "Always dig down.",
			p "Cavey is the chill cave-spelunking heart of Beta Minecraft, finished as its own game.",
			p "No combat, no quests, just the core loop: dig kilometres deep, layer buffs from your tools, gems, and cooking, and perfect a productive, ever-expanding base with every haul.",
			p_box {
				"The 2026 alpha will be announced in the ",
				a {
					href = site_url "news",
					text = "newsletter"
				},
				"."
			},
			newsletter_signup {
				placeholder = "Enter your email address",
				action = "Get monthly news"
			}
		},
		main = {
			h2 "Caves that go kilometres deep.",
			p "Beneath a quiet surface, the ground opens into massive chambers lit only by the glow of magma and the glint of crystals. \
				The deeper you go, the rarer the materials - but you'll have to pay attention to find them.",
			p "Nothing's hunting you down here. The real hazards are long falls, explosive veins, fire, drowning, and \
				darkness that punishes you for under-packing torches.",
				
			h2 "Progression that doesn't end early.",
			p "Cavey was made for the players who hit diamond and stopped. Your crafting splits into multiple parallel \
				progressions that stack up, giving you more reasons to build your base and head back underground.", 
			p "Tools come with trade-offs: more durability, wider block range, or special effects like magnetism. \
				Gemstones add fortune effects that boost block drops. Cooked food doesn't just refill you; it stacks temporary \
				buffs on top — extra speed, mining impact, damage absorption, or even carrots that let you see in the dark.",

			gallery {
				images = {
					{ src = site_url "assets/images/galleries/deep_cave.jpg", alt = "A deep cave lit by offscreen magma" },
					{ src = site_url "assets/images/galleries/aerial_cave.jpg", alt = "Looking out from a cave entrance" },
					{ src = site_url "assets/images/galleries/morning_cliff.jpg", alt = "Steep hills bathed in morning sun" }
				}
			},
			
			h2 "Build because you want to.",
			p "Up top, Cavey leaves you alone. There are no quests, no dungeons, no NPCs to please. Just you, your materials, and \
				the awesome, alien terrain Beta Minecraft was known for.",
			p "Building works at sub-metre resolution, so you can shape fine details like never before. Coloured lighting mixes \
				and bounces across surfaces in real time. Multiple objects fit in a single block, so rooms hold detail most games flatten.",
				
			h2 "Solo or with a few friends.",
			p "Cavey supports co-op for small groups. Bring a couple of people and get to work digging, and build your home base together.",
			p "Or, play alone and keep the world to yourself. Steam Deck support is first-class, so you can settle into a long descent on \
				the couch.",
			
			gallery {
				images = {
					{ src = site_url "assets/images/galleries/morning_lake.jpg", alt = "A lake in the morning light" },
					{ src = site_url "assets/images/galleries/water_reflection.jpg", alt = "Water reflecting a shore and cliff face" },
					{ src = site_url "assets/images/galleries/beach_sunset.jpg", alt = "A beach at sunset" }
				}
			},

			h2 "Engineered all the way down.",
			p_box {
				"Cavey runs on its own, fully custom-built ",
				a {
					href = site_url "dev",
					text = "Cavey Engine"
				}, 
				" - uniquely designed to handle massive voxel worlds.",
			},
			p "Cave systems generate without seams, lighting stays smooth as you move, and the simulation handles whatever you throw at it.",

			h2 "Watch Cavey get built.",
			p_box {
				"Cavey is being developed openly ",
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
				"Want an early peek at what's in store, or want to learn more about the process?",
				button {
					href = site_url "dev",
					text = "How Cavey is developed"
				}
			},
			
		}
	}
end