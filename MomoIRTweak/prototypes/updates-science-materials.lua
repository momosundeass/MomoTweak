--- using
local AddIng = momoIRTweak.AddOrUpdateToRecipe
local Rep = momoIRTweak.ReplaceIngredients
local Rem = momoIRTweak.RemoveFromRecipe
local ITEM = momoIRTweak.FastItem
local item = momoIRTweak.item
local NewRecipe = momoIRTweak.NewRecipe
local Unlock = momoIRTweak.AddUnlockEffect


local tech = momoIRTweak.technology
local sci = momoIRTweak.science
local eles = momoIRTweak.electronics

tech.military = momoIRTweak.FindTechnologyFromRecipe(sci.packMilitary)
tech.pack3 = momoIRTweak.FindTechnologyFromRecipe(sci.pack3)
tech.production = momoIRTweak.FindTechnologyFromRecipe(sci.packProduction)
tech.utility = momoIRTweak.FindTechnologyFromRecipe(sci.packUtility)

local recipe = {}
if (sci.isHarderPack) then
	recipe = momoIRTweak.NewRecipe("smelting-2", "momo-science-vial", 2, {
		momoIRTweak.FastItem("glass-ingot", 5)
	}, 26.6)
else
	recipe = momoIRTweak.NewRecipe("smelting", "momo-science-vial", 3, {
		momoIRTweak.FastItem("glass-ingot", 5)
	}, 26.6)
end
recipe.enabled = true

if (sci.isHarderPack) then
	recipe = NewRecipe("advanced-crafting", item.productionBox.name, 1, {
		ITEM("tin-plate", 2),
		ITEM("tin-tube", 1),
		ITEM("rubber-natural", 2)
	}, 6)
	Unlock(tech.military, recipe.name)
	
	recipe = NewRecipe("advanced-crafting", item.scienceBlueprint1.name, 3, {
		ITEM(item.productionBox, 1),
		ITEM("glass-plate", 3),
		ITEM("electronic-circuit", 1)
	}, 20)
	Unlock(tech.pack3, recipe.name)
	
	recipe = NewRecipe("advanced-crafting", item.scienceBlueprint2.name, 5, {
		ITEM(item.productionBox, 3),
		ITEM("gold-foil", 5),
		ITEM("advanced-battery", 3),
		ITEM("magnetron", 1)
	}, 20)
	Unlock(tech.production, recipe.name)
	
	recipe = NewRecipe("advanced-crafting", item.scienceBlueprint3.name, 3, {
		ITEM(item.productionBox, 5),
		ITEM("k-ram", 6),
		ITEM("k-processor", 3),
		ITEM("glass-cable-heavy", 4),
		ITEM("laser", 2)
	}, 40)
	Unlock(tech.production, recipe.name)
	
	recipe = NewRecipe("advanced-crafting", item.gpu.name, 1, {
		ITEM("k-silicon-wafer", 4),
		ITEM("gold-cable", 1),
		ITEM("k-ram", 2),
		ITEM("k-circuit-board", 1)
	}, 40)
	local techController = momoIRTweak.FindTechnologyFromRecipe("controller-mk3")
	Unlock(techController, recipe.name) 
	
	
	if (eles.isHarder) then
		AddIng(item.scienceBlueprint1.name, ITEM(eles.pcb1, 3))
		AddIng(item.scienceBlueprint2.name, ITEM(eles.pcb2, 5))
		AddIng(item.scienceBlueprint2.name, ITEM(eles.pcb3, 2))
		
		AddIng(item.gpu.name, ITEM(eles.pcb2, 1))
	end
end
	