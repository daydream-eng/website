local html = require("@util/html")
local class_list = require("@util/class_list")

local a = html "a"

return function(
	props: {
		jumbo: boolean?,
		href: string,
		text: string
	}
)
	return a {
		href = props.href,
		text = props.text,
		class = class_list { "button", props.jumbo and "jumbo" }
	}
end