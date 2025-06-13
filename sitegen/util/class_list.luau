return function(
	classes: {[unknown]: string | boolean | nil}
): string
	local result = ""
	for _, class in classes do
		if typeof(class) == "string" then
			if result ~= "" then
				result ..= " "
			end
			result ..= class
		end
	end
	return result
end