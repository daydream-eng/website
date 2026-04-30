local html_text = require("@util/html_text")
local html = require("@util/html")
local site_url = require("@util/site_url")
local document = require("@components/document")

local h1 = html_text "h1"
local h2 = html_text "h2"
local h3 = html_text "h3"
local p = html_text "p"
local img = html "img"

return function(
	props: {}
)
	return document {
		site_nav = { current_page = "ai-policy" },
		background_name = "blocks_closeup",
		header = {
			h1 "Cavey's AI policy",
			p "Cavey is a pro-human project of passion.",
			p "Here's how Cavey does (not) use AI, and why."
		},
		main = {
			h2 "Core principles",
			p "I've thought about the AI controversy a lot, and wanted to spend the time to properly articulate my thoughts. \
				To help do this, I decided to codify what I think the core direction and principles of Cavey are, so that \
				they can inform me how Cavey should be developed in the future.",
			
			h3 "1. Cavey is a personal project of passion.",
			img { class = "photo", src = site_url "assets/images/ai-policy/history.jpg", alt = "Screenshots from old Cavey development videos." },
			p "This game is not any other game that you would ship to market. It is instead a personal expression of the kind \
				of game that I specifically want to see in the world, informed by my nostalgia and opinions on the games \
				that I played growing up. I am making this game for myself, and I am the target audience.",
			p "If I lose interest in the project, I should not outsource development to an AI, or to anyone else. \
				I should instead allow myself to leave the project in the state that it is in, and to move on to other \
				things that I am more passionate about. Without my voice in the project, it would not have any special reason \
				to exist, and would very likely lose its opinion and soul.",

			h3 "2. Cavey is about the details.",
			img { class = "photo", src = site_url "assets/images/ai-policy/details.jpg", alt = "Screenshots from old Cavey development videos." },
			p "I've pored over the code, algorithms, profiles and RenderDoc captures of Cavey for years. I care about the game \
				at the lowest technical level, up to the highest artistic level. I'm not above rearranging the way voxel data sits \
				in memory, or spending months working on music tracks for the game's soundtrack. They may not be directly quantifiable \
				but I believe it is these details that bring Cavey legitimacy as a game worth playing. The game must feel responsive under \
				the hand, look smooth upon the eyes, and feel balanced as you play.",
			p "I don't want to sacrifice these details on the altar of productivity. Even when it makes more business sense to move on \
				to the next feature, or to leave something underpolished, I often ignore the common wisdom and work on it anyway. \
				Cavey generally is not a project of efficiency, but of care and attention, and that's a core proposition of the game. \
				Current-day AI tools require serious coaxing to prioritise the same.",

			h3 "3. Cavey is a way to teach others.",
			img { class = "photo", src = site_url "assets/images/ai-policy/education.jpg", alt = "Screenshots from old Cavey development videos." },
			p "This is not a project that I am doing to make money. I am doing it to learn, and to share what I learn with others. I want to \
				help other people make games like this, and lift up other projects in the space. When I spend hours refining algorithms or \
				debugging performance pitfalls, those are things I can contribute back to help guide others who find themselves in the same place.",
			p "When I take on more work, I can share more work. When I understand what's going on from a new perspective, I can share that perspective. \
				Even though the project is closed-source, it's open-knowledge, and it's what I think is best for the voxel game development scene.",

			h2 "Where AI lands with these principles",
			p "The simple truth is that many of the current AI vendors promote a hands-off philosophy, focused more about obtaining end products than about \
				elevating the human doing the work. This is not how I want to use AI. I want to use AI as a tool that I can control, that can help me with \
				specific tasks, but that does not take away from my ownership and artisanship of the project.",
			p "I'm not inherently against the technology of matrix multiplications producing stochastically useful outputs. That'd be like being against the \
				concept of addition. I'm against the way that the current market of AI tools is structured, which encourages you to hand off work to a black \
				box and hope for the best. I want to be able to open up the hood, understand how my code works, and have a say in how my code works.",
			p "Indie programming is at its best when people can connect through the design and construction of the projects they share with the world. \
				Part of the reason I'm writing these words by hand is because I want to connect with others through them. While I fully believe and advocate \
				for Cavey being appreciated as a standalone work devoid of the artist, that doesn't mean it isn't inherently also a product of the artist. \
				That's why the tools and thoughts I use to build the project matter.",

			h2 "How Cavey does not use AI",
			p "AI is not used in an undirected capacity for coding ('vibecoding'), or for generating music or art.",
			p "That means that I architect every algorithm and call every shot on technical decisions. I grok and understand how the game technically works at \
				the same deep level I have always done. AI can write boilerplate for me, or look up physics equations, or even help with some mathematical reasoning \
				at times, but it does not get to make any of the core decisions. That has always been my job, and according to these principles, it should be.",
			p "AI is not a replacement for my creativity. It remains firmly in the assistive seat, helping but never replacing my voice. That is where I draw \
				the line on AI use in Cavey.",
			p "I have played around with tools like Claude Code to see what they are capable of; they can be helpful for certain tasks, but they are not a black box \
				that I can hand off work to without thought. They are not a magic bullet, and I don't treat them as such. Anything that is produced by Claude is \
				subject to the same scrutiny and standards as anything that is produced by me, and if it doesn't meet those standards, it doesn't go in the game. \
				That means extensive profiling, editing, testing, and oftentimes complete reworking. It does not save me time, and it does not save me work. \
				It is just a tool that lets me do the work in overspecified English, which does not accomodate losing concept of what the program does.",
			p "I have also played around with other tools that generate images or music. These are even less convincing to me; I am incredibly protective of my \
			creative style and I am very particular about what passes my quality bar. Simply put: these tools don't produce anything worth incorporating, so it's \
			still easy for me to reject these outright. They are not a part of my process. I still draw every pixel, tune every FM synth, and play every piano \
			note by hand, just like I always have done. To some degree, I suspect these will never be good enough for Cavey, as the human touch in the music and the \
			art is what makes it uniquely compelling, even in its alien soundscape and with its clean pixel style."
		}
	}
end