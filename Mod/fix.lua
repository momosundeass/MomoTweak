local itemSubgroup = data.raw["item-subgroup"]

local function FixWaterBore()
	if settings.startup["bobmods-plates-groundwater"].value == false then
		data.raw.technology["water-bore-1"].enabled = false
		data.raw.technology["water-bore-2"].enabled = false
		data.raw.technology["water-bore-3"].enabled = false
		data.raw.technology["water-bore-4"].enabled = false
	end
end
-- try to fix standalone group
local function FixGem()  
  local gemGroup = itemSubgroup["bob-gems-ore"].group
  local polishingCompoundSubgroup = data.raw.recipe["polishing-compound"].subgroup
  itemSubgroup[polishingCompoundSubgroup].group = gemGroup
  
  local refGroup = "bob-resource-products"
  local markSubgroup = {}
  
  for i, sg in pairs(itemSubgroup) do
	if sg.group == gemGroup then 
		table.insert(markSubgroup, sg.name)
	end
  end
  
  for i, sg in pairs(markSubgroup) do    
    if (itemSubgroup[sg]) then
		itemSubgroup[sg].group = refGroup
	end
  end
end

local function FixEQ()
  local refSubgroup = data.raw.item["gun-turret"].subgroup
  local eqGroup = itemSubgroup[refSubgroup].group
  local target = data.raw.armor["light-armor"].subgroup or data.raw.armor["heavy-armor"].subgroup
  itemSubgroup[target].group = eqGroup
end

if pcall(FixGem) then
  log("MTKL fix gem group complete~")
else
  log("MTKL can't fix gem group!!!!!!!!!")
end

if pcall(FixEQ) then
  log("MTKL fix EQ group complete~")
else
  log("MTKL can't fix EQ group!!!!!!!!!")
end

if pcall(FixWaterBore) then
	log("MTKL fix water bore tech complete~")
else
	error("remove water bore")
end
