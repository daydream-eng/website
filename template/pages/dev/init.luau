local html_text = require("@util/html_text")
local common_urls = require("@config/common_urls")
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
		background_name = "aerial_cave",
		header = {
			h1 "Let's build voxels together!",
			p "I'm broadcasting the process of building Daydream (and its engine!)",
			p "Join me on my YouTube channel for occasional updates and explainers.",
			button {
				jumbo = true,
				href = common_urls.youtube_development_series,
				text = "Watch the YouTube playlist"
			}
		},
		main = {
			h2 "Introducing the Daydream Engine.",
			p "The Daydream Engine takes complete control of the game tech stack, from interfacing with rendering APIs \
				to simulating gameplay.",
			
			h3 "Modern, fast, scalable.",
			p "Rendering and input handling are connected as closely as possible on the main thread, so your controls \
				feel tight and responsive every time.",
			p "All other engine processes are massively multi-threaded, including fully deterministic & fully parallel \
				world generation to take full advantage of modern multi-core CPUs, and an asynchronous tick loop for \
				regularly scheduled updates.",
			p "Unlike other engines, the Daydream Engine minimises lock time by maintaining synchronised structures \
				across threads where sensible. This means that each process can run as independently as possible \
				without waiting for other processing to release resources.",
			p "As a cherry on top, the Daydream Engine is written in Rust, one of the lowest overhead languages \
				available today.",

			h3 "Your computer can run it.",
			p "The Daydream Engine does not target high-end hardware. Instead, mid-range hardware is Daydream's target \
				spec, with progressive enhancements on top. The core Daydream experience can be taken almost anywhere \
				you play, without relying on upsampling or frame generation.",
			p "What's more, the Daydream Engine is built to be cross-platform, including Vulkan support and a Linux \
				native version.",
			p "In particular, Daydream development natively targets a Steam Deck OLED at full resolution and refresh \
				rate when benchmarking performance, to ensure that most full-power hardware can enjoy a rock-solid \
				experience."
		}
	}
end