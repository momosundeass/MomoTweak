local function AssignSprite(sprite, path)
	local fullPath = "__MomoPyTweak__/graphics/entity/mining-drill/" .. path .. ".png"
	local hr_fullPath = "__MomoPyTweak__/graphics/entity/mining-drill/hr-" .. path .. ".png"
	sprite.filename = fullPath
	sprite.hr_version.filename = hr_fullPath
end

function momoPyTweak.MiningDrill()
	local prototype = momoIRTweak.DeepCopy(data.raw["mining-drill"]["electric-mining-drill"])

	local refItem = data.raw.item["electric-mining-drill"]
	momoPyTweak.item.miner = momoIRTweak.item.NewItemFixedSize("momo-express-miner", 32, refItem.subgroup, 50)
	momoPyTweak.item.miner.order = refItem.order .. "!"
	momoPyTweak.item.miner.place_result = "momo-express-miner"
	
	
	prototype.name = "momo-express-miner"
	prototype.minable.result = "momo-express-miner"
	AssignSprite(prototype.animations.north, "N")
	AssignSprite(prototype.animations.east, "E")
	AssignSprite(prototype.animations.south, "S")
	AssignSprite(prototype.animations.west, "W")
	
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