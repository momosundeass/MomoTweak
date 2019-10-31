-- pipe  steel-pipe  
-- small-pipe-coupler  medium-pipe-coupler  large-pipe-coupler  
-- underground-pipe-segment-t1  underground-pipe-segment-t2  underground-pipe-segment-t3  
-- chromium-plate-heavy 

--- using 
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.AddToRecipe
local Rep = momoIRTweak.ReplaceIngredients

local subgroups = data.raw["item-subgroup"]

local refItem = data.raw.item["swivel-joint"]
local refGroup = subgroups[refItem.subgroup].group

-- recipe
momoIRTweak.RemoveFromRecipe("swivel-joint", "iron-gear-wheel")
AddIng("swivel-joint", ITEM("tin-gear-wheel", 1))

Rep("underground-pipe-segment-t1", {
	ITEM("pipe", 1)
})

Rep("underground-pipe-segment-t2", {
	ITEM("underground-pipe-segment-t1", 1),
	ITEM("steel-pipe", 1)
})
Rep("underground-pipe-segment-t3", {
	ITEM("underground-pipe-segment-t2", 1),
	ITEM("chromium-plate-heavy", 3)
})


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