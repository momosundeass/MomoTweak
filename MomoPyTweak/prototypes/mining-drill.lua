function momoPyTweak.MiningDrill()
	-- ref mining drill prototype in base//demo-mining-drill.lua

	local prototype = momoIRTweak.DeepCopy(data.raw["mining-drill"]["electric-mining-drill"])
	local path = "__MomoPyTweak__/graphics/entity/mining-drill/"
	
	local function AssignSprite(layer, spriteNames)
		if layer.filename then
			layer.filename = path .. spriteNames[1]
			layer.hr_version.filename = path .. "hr/hr-" .. spriteNames[1]
		else
			for i, sn in pairs(spriteNames) do
				if sn == "_" then goto continue end
				layer[i].filename = path .. sn
				layer[i].hr_version.filename = path .. "hr/hr-" .. sn
			::continue:: end
		end
		
	end
	
	local refItem = data.raw.item["electric-mining-drill"]
	momoPyTweak.item.miner = momoIRTweak.item.NewItemFixedSize("momo-express-miner", 32, refItem.subgroup, 50)
	momoPyTweak.item.miner.order = refItem.order .. "!"
	momoPyTweak.item.miner.place_result = "momo-express-miner"
	
	
	prototype.name = "momo-express-miner"
	prototype.minable.result = "momo-express-miner"

	local anim = prototype.graphics_set.animation
	AssignSprite(anim.east.layers, {"electric-mining-drill-E.png"})
	AssignSprite(anim.north.layers, {"electric-mining-drill-N.png"})
	AssignSprite(anim.west.layers, {"electric-mining-drill-W.png"})
		
	local front = prototype.graphics_set.working_visualisations[7]
	AssignSprite(front.east_animation, {"electric-mining-drill-E-front.png"})
	AssignSprite(front.south_animation.layers, {"electric-mining-drill-S-output.png", "electric-mining-drill-S-front.png"})
	AssignSprite(front.west_animation, {"electric-mining-drill-W-front.png"})
	
	local wetAnim = prototype.wet_mining_graphics_set.animation
	AssignSprite(wetAnim.east.layers, {"electric-mining-drill-E-wet.png"})
	AssignSprite(wetAnim.north.layers, {"electric-mining-drill-N-wet.png"})
	AssignSprite(wetAnim.west.layers, {"electric-mining-drill-W-wet.png"})
	
	local wetWorking = prototype.wet_mining_graphics_set.working_visualisations[13]
	AssignSprite(wetWorking.east_animation.layers, {"electric-mining-drill-E-wet-front.png"}) 
	AssignSprite(wetWorking.south_animation.layers, {"electric-mining-drill-S-output.png", "electric-mining-drill-S-wet-front.png"}) 
	AssignSprite(wetWorking.west_animation.layers, {"electric-mining-drill-W-wet-front.png"}) 
	
	prototype.mining_speed = 2
	prototype.energy_source.emissions_per_minute = 40
	prototype.energy_usage = "350kW"
	prototype.resource_searching_radius = 4.98
	prototype.module_specification.module_slots = 6
	
	data:extend({prototype})
	
end

function momoPyTweak.updates.MiningDrill()
	-- using
	local ITEM = momoIRTweak.FastItem

	momoIRTweak.recipe.NewRecipe("crafting", "momo-express-miner", 1, {
		ITEM("nbfe-alloy", 30),
		ITEM("small-parts-02", 20),
		ITEM("advanced-circuit", 10),
		ITEM("burner-inserter", 10),
		ITEM("electric-mining-drill", 1)
	}, 30)
	
	momoIRTweak.technology.AddUnlockEffect("rare-earth-tech", "momo-express-miner")
end