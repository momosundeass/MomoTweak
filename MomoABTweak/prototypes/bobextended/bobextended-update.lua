require("bobextended-update-gem")
-- require("bobextended-update-ele")
-- require("bobextended-update-slag")

function momoTweak.updates.ExtendedUpdate()
	-- momoTweak.updates.ExtendedGemUpdate()			
	-- momoTweak.updates.ExtendedSlagUpdate()
	for _, class in pairs({"purple", "green"}) do
		local tech = momoIRTweak.technology.FindFromRecipe(momoTweak.extended.belt.map[class])
		if (momoTweak.extended.belt[class]) then
			bobmods.lib.tech.add_recipe_unlock(tech, momoTweak.extended.belt[class]) 
		end
	end
end