local sanitise = require("@util/sanitise")
local flatten = require("@util/flatten")

export type Child = flatten.Child

local SELF_CLOSING = {
	meta = true,
	link = true,
	img = true,
	br = true
}

return function(
	tag: string
)
	return function(
		props: {
			[string]: unknown,
			text: string?,
			children: Child?
		}
	): string
		local attributes = ""
		for name, value in props do
			if name == "text" or name == "children" or value == "" or value == false then
				continue
			elseif value == true then
				attributes ..= ` {name}`
			else
				attributes ..= ` {name}="{value}"`
			end
		end
		return `<{tag}{attributes}>{sanitise(props.text or "")}{flatten(props.children or "")}` .. (if SELF_CLOSING[tag] then "" else `</{tag}>`)
	end
end