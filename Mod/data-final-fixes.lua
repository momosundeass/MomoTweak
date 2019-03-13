-- disable chemical plant from angel's petro

data.raw.item[momoTweak.burner].subgroup = data.raw.item["assembling-machine-1"].subgroup

local cat_override = "bob-distillery"

if settings.startup["momo-30-sci-extreme"].value then
	cat_override = "momo-sci-recipe"
end

if data.raw.technology["angels-advanced-chemistry-4"] and settings.startup["momo-fix-angels-chemistry-machine"].value then 
	bobmods.lib.tech.remove_recipe_unlock("electrolysis-1", "bob-distillery")
	if settings.startup["momo-30-sci-extreme"].value == false then
		bobmods.lib.tech.remove_recipe_unlock("basic-chemistry-2", "angels-chemical-plant")
		bobmods.lib.tech.remove_recipe_unlock("angels-advanced-chemistry-2", "angels-chemical-plant-2")
		bobmods.lib.tech.remove_recipe_unlock("angels-advanced-chemistry-3", "angels-chemical-plant-3")
		bobmods.lib.tech.remove_recipe_unlock("angels-advanced-chemistry-4", "angels-chemical-plant-4")
	end
  
	  -- put it on distillery cause there no recipe for it
	  local chemBase = momoTweak.deepcopy(data.raw["assembling-machine"]["chemical-plant"].crafting_categories)
	  local dirty = false
	  for i, angel in pairs( data.raw["assembling-machine"]["angels-chemical-plant"].crafting_categories ) do
		local have = false
		for k, base in pairs( data.raw["assembling-machine"]["chemical-plant"].crafting_categories ) do
			if (angel == base) then have = true end
		end
		
		if have == false then
			log ("MTKL => Angel chem not overlap = " .. angel)
			table.insert(chemBase, angel)
			dirty = true
		end
	  end
	  
	  if not dirty then log("MTKL => no standalone category for angels chem.") end
	  
	  data.raw["assembling-machine"]["angels-chemical-plant"].crafting_categories = {cat_override}
	  data.raw["assembling-machine"]["angels-chemical-plant-2"].crafting_categories = {cat_override}
	  data.raw["assembling-machine"]["angels-chemical-plant-3"].crafting_categories = {cat_override}
	  data.raw["assembling-machine"]["angels-chemical-plant-4"].crafting_categories = {cat_override}

	  data.raw["assembling-machine"]["angels-chemical-plant"]  .ingredient_count = 50
	  data.raw["assembling-machine"]["angels-chemical-plant-2"].ingredient_count = 50
	  data.raw["assembling-machine"]["angels-chemical-plant-3"].ingredient_count = 50
	  data.raw["assembling-machine"]["angels-chemical-plant-4"].ingredient_count = 50
	  
	  
	  data.raw["assembling-machine"]["chemical-plant"].crafting_categories = chemBase
	  data.raw["assembling-machine"]["chemical-plant-2"].crafting_categories = chemBase
	  data.raw["assembling-machine"]["chemical-plant-3"].crafting_categories = chemBase
	  data.raw["assembling-machine"]["chemical-plant-4"].crafting_categories = chemBase
	  
	  momoTweak.angelChemPlanTweak()
end

require("prototypes.sci.sci30result-preset")

momoTweak.ReworkAngelIndGroup()

require("fix");