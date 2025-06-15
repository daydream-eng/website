local html_text = require("@util/html_text")
local html_box = require("@util/html_box")
local html = require("@util/html")
local site_url = require("@util/site_url")
local document = require("@components/document")
local newsletter_signup = require("@pages/news/newsletter_signup")

local h1 = html_text "h1"
local h2 = html_text "h2"
local h3 = html_text "h3"
local p = html_text "p"
local small = html_box "small"
local span = html "span"
local link = html "link"
local script = html "script"

return function(
	props: {
		page_type: "success" | "fail" | nil
	}
)
	return document {
		site_nav = { current_page = "news" },
		background_name = "forest",
		extra_head = {
			link { rel = "stylesheet", href = site_url "assets/style/newsletter_signup.css" },
			link { id = "newsletter-error-page", href = site_url "news/fail" },
			link { id = "newsletter-success-page", href = site_url "news/success" },
			script { defer = true, src = site_url "assets/scripts/newsletter_signup.js" }
		},
		header = if props.page_type == "success" then {
			h1 "You're in!",
			p "Thanks for joining the newsletter. Enjoy your updates!",
		} elseif props.page_type == "fail" then {
			h1 "Something went wrong.",
			p "But don't worry - you can try again below.",
			p "(Or, if it keeps breaking, get in touch!)",
			small {
				"Details: ",
				span { id = "fail-reason", text = "Unknown error." }
			},
			newsletter_signup {}
		} else {
			h1 "From my email to yours.",
			p "The monthly newsletter is the easiest way to keep up to date with Daydream.",
			p "Enjoy tips, discussion and - just maybe - some exclusives :)",
			p "Joining is 100% free and takes only a few seconds. Be curious!",
			newsletter_signup {}
		},
		main = {
			h2 "Get closer to Daydream!",
			p "Excited about Daydream, and wish you could get your hands on it? Then, the monthly newsletter is the \
				place to be. It's everything current with Daydream, all in one place, right in your inbox - and there's \
				plenty to get excited about.",

			h3 "See the process as it is.",
			p "With the monthly newsletter, you'll get a log of everything I've been working on, even if it's not yet \
				ready for public consumption. You'll even see the dead ends I explore and the grunt work that never \
				gets shown off in a glossy video.",
			p "It's less refined. It's more real. I think there's so much more to learn from that. I can't wait to \
				show you more of the process!",
			p "(Also, it doesn't take six months between uploads - bonus.)",
			
			h3 "Get pointed at cool stuff.",
			p "Sometimes there's cool things out in the world that the Daydreamers should know about. For example, \
				there's tons of great voxel projects out there, or perhaps some thought provoking YouTube analysis. \
				I would love to share that!",
			p "WIth the Daydream newsletter, you get a little portal into the incredible world around Daydream, too.",

			h3 "Extra treats.",
			p "As a special thank-you for being part of the Daydream community and following along throughout \
				development, I'd like to extend a few exciting opportunities down-the-line, just for the newsletter.",
			p "What exactly, you ask? Only one way to find out!",
		}
	}
end