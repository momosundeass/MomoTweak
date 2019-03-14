
function fixWaterBore()
	if settings.startup["bobmods-plates-groundwater"].value == false then
		data.raw.technology["water-bore-1"].enabled = false
		data.raw.technology["water-bore-2"].enabled = false
		data.raw.technology["water-bore-3"].enabled = false
		data.raw.technology["water-bore-4"].enabled = false
	end
end
-- try to fix standalone group
function fixGem()  
  local gemGroup = data.raw["item-subgroup"]["bob-gems-ore"].group
  local polishingCompoundSubgroup = data.raw.recipe["polishing-compound"].subgroup
  data.raw["item-subgroup"][polishingCompoundSubgroup].group = gemGroup
  
  local refGroup = "bob-resource-products"
  local markSubgroup = {}
  
  for i, sg in pairs(data.raw["item-subgroup"]) do
	if sg.group == gemGroup then 
		table.insert(markSubgroup, sg.name)
	end
  end
  
  for i, sg in pairs(markSubgroup) do    
    if (data.raw["item-subgroup"][sg]) then
		data.raw["item-subgroup"][sg].group = refGroup
	end
  end
end

function fixEQ()
  local sub = data.raw.item["gun-turret"].subgroup
  local eqGroup = data.raw["item-subgroup"][sub].group
  local target = data.raw.armor["light-armor"].subgroup or data.raw.armor["heavy-armor"].subgroup
  data.raw["item-subgroup"][target].group = eqGroup
end

fixGem()
if pcall(fixGem) then
  log("MTKL fix gem group complete~")
else
  log("MTKL can't fix gem group!!!!!!!!!")
end

if pcall(fixEQ) then
  log("MTKL fix EQ group complete~")
else
  log("MTKL can't fix EQ group!!!!!!!!!")
end

if pcall(fixWaterBore) then
	log("MTKL fix water bore tech complete~")
else
	error("remove water bore")
end
