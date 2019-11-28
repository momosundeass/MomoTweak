local function GetInserterImage(path)
	return "__MomoPyTweak__/graphics/entity/inserter/" .. path .. ".png"
end

local function ConvertSpriteToOnlyHR(sprite)
	if (sprite.hr_version) then
		sprite.filename = sprite.hr_version.filename
		sprite.width = sprite.hr_version.width
		sprite.height = sprite.hr_version.height
	end
end
local function ConvertSheetToOnlyHR(sheet)
	if (sheet.hr_version) then
		sheet.filename = sheet.hr_version.filename
		sheet.width = sheet.hr_version.width
		sheet.height = sheet.hr_version.height
		sheet.shift = sheet.shift
	end
end


function momoPyTweak.Inserter()
	local prototype = {}
	
	-- express
	momoPyTweak.item.inserter = momoIRTweak.item.NewItemFixedSize("momo-express-inserter", 32, "inserter", 50)
	momoPyTweak.item.inserter.order = "zz1"
	momoPyTweak.item.inserter.place_result = "momo-express-inserter"
	
	prototype = momoIRTweak.DeepCopy(data.raw.inserter["fast-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.inserter.icon
	prototype.name = "momo-express-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "10KJ"
    prototype.energy_per_rotation = "10KJ"
    prototype.energy_source.drain = "0.7kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-inserter"
		
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express/hr-hand-base")
	ConvertSpriteToOnlyHR(prototype.hand_base_picture)
	
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express/hr-hand-closed")
	ConvertSpriteToOnlyHR(prototype.hand_closed_picture)
		
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express/hr-hand-open")
	ConvertSpriteToOnlyHR(prototype.hand_open_picture)
		
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express/hr-platform")
	ConvertSheetToOnlyHR(prototype.platform_picture.sheet)
	
	data:extend({prototype})
	
	--- express filter
	momoPyTweak.item.filterInserter = momoIRTweak.item.NewItemFixedSize("momo-express-filter-inserter", 32, "inserter", 50)
	momoPyTweak.item.filterInserter.order = "zz2"
	momoPyTweak.item.filterInserter.place_result = "momo-express-filter-inserter"
	
	prototype = momoIRTweak.DeepCopy(data.raw.inserter["filter-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.filterInserter.icon
	prototype.name = "momo-express-filter-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "12KJ"
    prototype.energy_per_rotation = "12KJ"
    prototype.energy_source.drain = "1kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-filter-inserter"
	
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express-filter/hr-hand-base")
	ConvertSpriteToOnlyHR(prototype.hand_base_picture)
	
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express-filter/hr-hand-closed")
	ConvertSpriteToOnlyHR(prototype.hand_closed_picture)
		
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express-filter/hr-hand-open")
	ConvertSpriteToOnlyHR(prototype.hand_open_picture)
		
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express-filter/hr-platform")
	ConvertSheetToOnlyHR(prototype.platform_picture.sheet)
	
	data:extend({prototype})
	
	-- stack express
	momoPyTweak.item.stackInserter = momoIRTweak.item.NewItemFixedSize("momo-express-stack-inserter", 32, "inserter", 50)
	momoPyTweak.item.stackInserter.order = "zz3"
	momoPyTweak.item.stackInserter.place_result = "momo-express-stack-inserter"
	
	prototype = momoIRTweak.DeepCopy(data.raw.inserter["stack-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.stackInserter.icon
	prototype.name = "momo-express-stack-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "30KJ"
    prototype.energy_per_rotation = "30KJ"
    prototype.energy_source.drain = "1kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-stack-inserter"
	
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express-stack/hr-hand-base")
	ConvertSpriteToOnlyHR(prototype.hand_base_picture)
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express-stack/hr-hand-closed")
	ConvertSpriteToOnlyHR(prototype.hand_closed_picture)
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express-stack/hr-hand-open")
	ConvertSpriteToOnlyHR(prototype.hand_open_picture)	
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express-stack/hr-platform")
	ConvertSheetToOnlyHR(prototype.platform_picture.sheet)
	
	data:extend({prototype})
	
	-- stack express filter
	momoPyTweak.item.stackFilterInserter = momoIRTweak.item.NewItemFixedSize("momo-express-stack-filter-inserter", 32, "inserter", 50)
	momoPyTweak.item.stackFilterInserter.order = "zz4"
	momoPyTweak.item.stackFilterInserter.place_result = "momo-express-stack-filter-inserter"
		
	prototype = momoIRTweak.DeepCopy(data.raw.inserter["stack-filter-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.stackFilterInserter.icon
	prototype.name = "momo-express-stack-filter-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "31KJ"
    prototype.energy_per_rotation = "31KJ"
    prototype.energy_source.drain = "1kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-stack-filter-inserter"
	
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express-stack-filter/hr-hand-base")
	ConvertSpriteToOnlyHR(prototype.hand_base_picture)	
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express-stack-filter/hr-hand-closed")
	ConvertSpriteToOnlyHR(prototype.hand_closed_picture)	
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express-stack-filter/hr-hand-open")
	ConvertSpriteToOnlyHR(prototype.hand_open_picture)	
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express-stack-filter/hr-platform")
	ConvertSheetToOnlyHR(prototype.platform_picture.sheet)
	
	data:extend({prototype})
end

function momoPyTweak.updates.Inserter()
	local ITEM = momoIRTweak.FastItem
	local item = momoPyTweak.item
	
	momoIRTweak.recipe.NewRecipe("crafting", item.inserter.name, 1, {
		ITEM("fast-inserter", 1),
		ITEM("processing-unit", 5),
		ITEM("super-alloy", 10),
		ITEM("small-parts-02", 5)
	}, 30)
	
	momoIRTweak.recipe.NewRecipe("crafting", item.filterInserter.name, 1, {
		ITEM("filter-inserter", 1),
		ITEM("advanced-circuit", 10),
		ITEM("processing-unit", 5),
		ITEM("super-alloy", 10),
		ITEM("small-parts-02", 5)
	}, 30)
	
	momoIRTweak.recipe.NewRecipe("crafting", item.stackInserter.name, 1, {
		ITEM("stack-inserter", 1),
		ITEM("processing-unit", 10),
		ITEM("super-alloy", 5),
		ITEM("super-steel", 5),
		ITEM("small-parts-02", 5)
	}, 30)
	
	momoIRTweak.recipe.NewRecipe("crafting", item.stackFilterInserter.name, 1, {
		ITEM("stack-filter-inserter", 1),
		ITEM("processing-unit", 10),
		ITEM("advanced-circuit", 10),
		ITEM("super-alloy", 5),
		ITEM("super-steel", 5),
		ITEM("small-parts-02", 5)
	}, 30)
	
end

function momoPyTweak.updates.InserterTechnology()
	local tech = momoIRTweak.technology
	local item = momoPyTweak.item
	
	local prototype = tech.ClonePrototype("fast-inserter", "momo-inserter")
	tech.SetPrerequirePrototype(prototype, {"stack-inserter", "fine-electronics"})
	tech.ClearEffects(prototype)
	tech.SetUnit(prototype, {
		{momoPyTweak.science.pack1, 1},
		{momoPyTweak.science.pack2, 1},
		{momoPyTweak.science.pack3, 1}
	}, 60, 300)
	data:extend({prototype})
	
	momoPyTweak.technology.inserter = data.raw.technology["momo-inserter"]
	
	if (settings.startup["momo-inserter"].value) then
		momoPyTweak.technology.inserter.enabled = true
		
		tech.AddUnlockEffect("momo-inserter", item.inserter.name)
		tech.AddUnlockEffect("momo-inserter", item.filterInserter.name)
		tech.AddUnlockEffect("momo-inserter", item.stackInserter.name)
		tech.AddUnlockEffect("momo-inserter", item.stackFilterInserter.name)
	else
		momoPyTweak.technology.inserter.enabled = false
	end
end
