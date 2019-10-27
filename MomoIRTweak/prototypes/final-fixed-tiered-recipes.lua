--using 
local AddIng = momoIRTweak.AddOrUpdateToRecipe
local ITEM = momoIRTweak.FastItem
local SCI = momoIRTweak.FastSciencePack
local Rem = momoIRTweak.RemoveFromRecipe 

-- for some reason this need to direct insert to table
-- if call form stdlib it will duplicated
local function AddIngredientToNormal(recipeName, ingredient)
	local r = data.raw.recipe[recipeName]
	table.insert(r.normal.ingredients, ingredient)
end

if (settings.startup["momo-tieredSciencePack"].value) then
	local sci = momoIRTweak.science
	AddIng(sci.pack2, SCI(sci.pack1, 1))
	AddIng(sci.pack3, SCI(sci.pack2, 1))
	
	AddIng(sci.packMilitary, SCI(sci.pack1, 1))
	
	AddIng(sci.packProduction, SCI(sci.pack1, 2))
	AddIng(sci.packProduction, SCI(sci.pack2, 1))
		
	AddIng(sci.packUtility, SCI(sci.pack2, 2))
	AddIng(sci.packUtility, SCI(sci.pack3, 1))
end

if (settings.startup["momo-tieredInserter"].value) then
	AddIng("inserter", ITEM("burner-inserter", 1))
	AddIng("fast-inserter", ITEM("inserter", 1))
	AddIng("stack-inserter", ITEM("fast-inserter", 1))
end

if (settings.startup["momo-tieredBelt"].value) then
	AddIng("fast-transport-belt", ITEM("transport-belt", 1))
	AddIngredientToNormal("express-transport-belt", ITEM("fast-transport-belt", 1))
	AddIng("k-transport-belt", ITEM("express-transport-belt", 2))
end

if (settings.startup["momo-tieredMotor"].value) then
	AddIng("iron-motor", ITEM("copper-motor", 1))
	Rem("iron-motor", "copper-cable")
	
	AddIng("steel-motor", ITEM("iron-motor", 1))
end

if (settings.startup["momo-tieredAssembler"].value) then
	AddIngredientToNormal("assembling-machine-2", ITEM("assembling-machine-1", 1))
	AddIng("assembling-machine-3", ITEM("assembling-machine-2", 1))
	AddIng("advanced-assembler", ITEM("assembling-machine-3", 1))
end

if (settings.startup["momo-tieredFurnace"].value) then
	AddIng("bronze-furnace", ITEM("stone-age-furnace", 1))
	AddIng("iron-furnace", ITEM("bronze-furnace", 1))
	AddIng("steel-age-furnace", ITEM("iron-furnace", 1))
	AddIng("k-advanced-furnace", ITEM("steel-age-furnace", 5))	
end

if (settings.startup["momo-tieredCrusher"].value) then
	AddIng("iron-grinder", ITEM("bronze-grinder", 1))
	AddIng("steel-grinder", ITEM("iron-grinder", 1))
end

if (settings.startup["momo-tieredComputer"].value) then
	AddIng("computer-mk2", ITEM("computer-mk1", 1))
	AddIng("computer-mk2-2", ITEM("computer-mk1", 1))
	AddIng("computer-mk3", ITEM("computer-mk2", 1))
	AddIng("computer-mk3-2", ITEM("computer-mk2", 1))
end
