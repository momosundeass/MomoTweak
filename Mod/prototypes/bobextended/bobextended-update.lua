require("bobextended-update-frame")
require("bobextended-update-gem")
require("bobextended-update-ele")
require("bobextended-update-slag")

function momoTweak.require.ExtendedUpdate()
	if settings.startup["momo-enable-bob-extend"].value then
		if settings.startup["momo-enable-bob-extend-frame"].value then
			momoTweak.require.ExtendedFrameUpdate()			
		end
		
		if settings.startup["momo-enable-bob-extend-gem"].value > 0 then
			momoTweak.require.ExtendedGemUpdate()			
		end
		
		if settings.startup["momo-enable-bob-extend-ele"].value then
			momoTweak.require.ExtendedEleUpdate()
		end
		
		if settings.startup["momo-enable-bob-extend-slag"].value then
			momoTweak.require.ExtendedSlagUpdate()
		end
		
		if (momoTweak.extended.belt) then
			for i, class in pairs({"purple", "green"}) do
				local tech = momoTweak.get_tech_of_recipe(momoTweak.extended.belt.map[class])
				if (momoTweak.extended.belt[class]) then
					bobmods.lib.tech.add_recipe_unlock(tech, momoTweak.extended.belt[class]) 
				end
				if (momoTweak.extended.belt[class.."-backward"]) then
					bobmods.lib.tech.add_recipe_unlock(tech, momoTweak.extended.belt[class].."-backward")
				end
			end
		end
	end
end