export type Child = string | {Child}

local function flatten(
	child: Child
): string
	if typeof(child) == "string" then
		return child
	else
		local flat = ""
		for _, sub_child in child do
			flat ..= flatten(sub_child)
		end
		return flat
	end
end

return flatten