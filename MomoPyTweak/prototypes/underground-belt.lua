local function GetSheet(path)
	return "__MomoPyTweak__/graphics/entity/underground-belt/" .. path .. ".png" 
end
local function AssignSheet(sheet, newPath)
	sheet.filename = GetSheet(newPath)
	if (sheet.hr_version) then
		sheet.hr_version = nil
	end
end

function momoPyTweak.ExtraUndergroundBelt()
	local ref = data.raw["underground-belt"]["underground-belt"]
	local prototype = {}
	
	momoPyTweak.item.undergroundBelt = momoIRTweak.item.NewItemFixedSize("momo-underground-belt", 32, "belt", 50)
	momoPyTweak.item.undergroundBelt.order = "zz1"
	momoPyTweak.item.undergroundBelt.place_result = "momo-underground-belt"
	
	prototype = momoIRTweak.DeepCopy(ref)
	prototype.name = "momo-underground-belt"
	prototype.minable.result = "momo-underground-belt"
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.undergroundBelt.icon
	prototype.max_distance = (ref.max_distance * 2) + 1
	
	AssignSheet(prototype.structure.direction_in.sheet, "structure")
	AssignSheet(prototype.structure.direction_out.sheet, "structure")
	AssignSheet(prototype.structure.direction_in_side_loading.sheet, "structure")
	AssignSheet(prototype.structure.direction_out_side_loading.sheet, "structure")
	
	data:extend({prototype})
	
	ref = data.raw["underground-belt"]["fast-underground-belt"]
	momoPyTweak.item.fastUndergroundBelt = momoIRTweak.item.NewItemFixedSize("momo-fast-underground-belt", 32, "belt", 50)
	momoPyTweak.item.fastUndergroundBelt.order = "zz2"
	momoPyTweak.item.fastUndergroundBelt.place_result = "momo-fast-underground-belt"
	
	prototype = momoIRTweak.DeepCopy(ref)
	prototype.name = "momo-fast-underground-belt"
	prototype.minable.result = "momo-fast-underground-belt"
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.fastUndergroundBelt.icon
	prototype.max_distance = (ref.max_distance * 2) + 1
	
	AssignSheet(prototype.structure.direction_in.sheet, "fast-structure")
	AssignSheet(prototype.structure.direction_out.sheet, "fast-structure")
	AssignSheet(prototype.structure.direction_in_side_loading.sheet, "fast-structure")
	AssignSheet(prototype.structure.direction_out_side_loading.sheet, "fast-structure")
	
	data:extend({prototype})
	
	ref = data.raw["underground-belt"]["express-underground-belt"]
	momoPyTweak.item.expressUndergroundBelt = momoIRTweak.item.NewItemFixedSize("momo-express-underground-belt", 32, "belt", 50)
	momoPyTweak.item.expressUndergroundBelt.order = "zz3"
	momoPyTweak.item.expressUndergroundBelt.place_result = "momo-express-underground-belt"
	
	prototype = momoIRTweak.DeepCopy(ref)
	prototype.name = "momo-express-underground-belt"
	prototype.minable.result = "momo-express-underground-belt"
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.expressUndergroundBelt.icon
	prototype.max_distance = (ref.max_distance * 2) + 1
	
	AssignSheet(prototype.structure.direction_in.sheet, "express-structure")
	AssignSheet(prototype.structure.direction_out.sheet, "express-structure")
	AssignSheet(prototype.structure.direction_in_side_loading.sheet, "express-structure")
	AssignSheet(prototype.structure.direction_out_side_loading.sheet, "express-structure")
	
	data:extend({prototype})
end

function momoPyTweak.updates.ExtraUndergroundBelt()
	--- using
	local ITEM = momoIRTweak.FastItem
	
	momoIRTweak.recipe.NewRecipe("crafting", momoPyTweak.item.undergroundBelt.name, 2, {
		ITEM("underground-belt", 4),
		ITEM("stone-brick", 20),
	}, 4)
	
	momoIRTweak.recipe.NewRecipe("crafting", momoPyTweak.item.fastUndergroundBelt.name, 2, {
		ITEM("fast-underground-belt", 3),
		ITEM(momoPyTweak.item.undergroundBelt, 2),
		ITEM("concrete", 40),
		ITEM("small-parts-02", 12)
	}, 8)
	
	momoIRTweak.recipe.NewRecipe("crafting", momoPyTweak.item.expressUndergroundBelt.name, 2, {
		ITEM("express-underground-belt", 3),
		ITEM(momoPyTweak.item.fastUndergroundBelt, 2),
		ITEM("refined-concrete", 40),
		ITEM("super-alloy", 10),
		ITEM("small-parts-03", 12),
	}, 14)
end

function momoPyTweak.updates.ExtraUndergroundBeltTech()
	momoIRTweak.technology.AddUnlockEffect("logistics", momoPyTweak.item.undergroundBelt.name)
	momoIRTweak.technology.AddUnlockEffect("logistics-2", momoPyTweak.item.fastUndergroundBelt.name)
	momoIRTweak.technology.AddUnlockEffect("logistics-3", momoPyTweak.item.expressUndergroundBelt.name)
	
	local ref = data.raw["underground-belt"]["underground-belt"]
	local prototype = data.raw["underground-belt"]["momo-underground-belt"]
	prototype.max_distance = (ref.max_distance * 2) + 1
	
	ref = data.raw["underground-belt"]["fast-underground-belt"]
	prototype = data.raw["underground-belt"]["momo-fast-underground-belt"]
	prototype.max_distance = (ref.max_distance * 2) + 1
	
	ref = data.raw["underground-belt"]["express-underground-belt"]
	prototype = data.raw["underground-belt"]["momo-express-underground-belt"]
	prototype.max_distance = (ref.max_distance * 2) + 1
end

function momoPyTweak.finalFixes.ExtraUndergroundBelt()
	
end

