return function<KI, KO, VI, VO>(
	input: {[KI]: VI},
	func: (KI, VI) -> (KO, VO)
): {[KO]: VO}
	local output = {}
	for key_in, value_in in input do
		local key_out, value_out = func(key_in, value_in)
		if key_out == nil or value_out == nil then continue end
		assert(output[key_out] == nil, "Key collision")
		output[key_out] = value_out
	end
	return output
end