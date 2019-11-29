function momoPyTweak.BuffUndergroundBelt()
	local ref = data.raw["underground-belt"]["underground-belt"].max_distance
	local fast = data.raw["underground-belt"]["fast-underground-belt"] 
	fast.max_distance = (ref * 2) + 1
	local express = data.raw["underground-belt"]["express-underground-belt"]
	express.max_distance = (fast.max_distance * 2) + 1
end

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
end

function momoPyTweak.updates.ExtraUndergroundBelt()

end

function momoPyTweak.updates.ExtraUndergroundBeltTech()

end