function momoTweak.require.ExtendedGemUpdate()
	for i, gem in pairs({"ruby", "sapphire", "emerald", "amethyst", "topaz", "diamond"}) do
		local value = settings.startup["momo-enable-bob-extend-gem"].value
		if data.raw.recipe["bob-" .. gem .."-4"] then
			momoTweak.set_amount_ingredient("bob-" .. gem .. "-3", {gem .. "-ore", value} )
			momoTweak.set_amount_ingredient("bob-" .. gem .. "-4", {gem .. "-3", (value * 2) - 1} )
			momoTweak.set_amount_ingredient("bob-" .. gem .. "-5", {gem .. "-4", (value * 3) - 1} )
		else
			log("MTKL no recipe with name bob-" .. gem .. "-4")
		end
		
	end
end