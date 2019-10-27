

local subgroups = data.raw["item-subgroup"]

local refItem = data.raw.item["swivel-joint"]
local refGroup = subgroups[refItem.subgroup].group

-- recipe
momoIRTweak.RemoveFromRecipe("swivel-joint", "iron-gear-wheel")
momoIRTweak.AddToRecipe("swivel-joint", momoIRTweak.FastItem("tin-gear-wheel", 1))

-- move 
if (settings.startup["momo-moveUndergroundPipePack"].value) then
	local order = 0
	local inserter = data.raw.item["inserter"]
	local subgroupInserter = subgroups[inserter.subgroup]
	
	for i, subgroup in pairs(subgroups) do 
		if (subgroup.group == refGroup) then
			subgroup.group = subgroupInserter.group
			subgroup.order = "zz" .. order
			order = order + 1
		end
	end
end