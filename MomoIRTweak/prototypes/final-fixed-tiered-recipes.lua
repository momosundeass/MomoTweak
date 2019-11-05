--using 
local AddIng = momoIRTweak.recipe.AddOrUpdateIngredient
local ITEM = momoIRTweak.FastItem
local SCI = momoIRTweak.FastSciencePack
local Rem = momoIRTweak.recipe.RemoveIngredient 

local machine = momoIRTweak.machine

-- for some reason this need to direct insert to table
-- if call form stdlib it will duplicated
local function AddIngredientToNormal(recipeName, ingredient)
	local r = data.raw.recipe[recipeName]
	table.insert(r.normal.ingredients, ingredient)
end

if (momoIRTweak.science.isTiered) then
	local sci = momoIRTweak.science
	AddIng(sci.pack2, SCI(sci.pack1, 1))
	AddIng(sci.pack3, SCI(sci.pack2, 1))
	
	AddIng(sci.packMilitary, SCI(sci.pack1, 1))
	
	AddIng(sci.packProduction, SCI(sci.pack1, 2))
	AddIng(sci.packProduction, SCI(sci.pack2, 1))
		
	AddIng(sci.packUtility, SCI(sci.pack2, 2))
	AddIng(sci.packUtility, SCI(sci.packMilitary, 1))
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

	AddIng("fast-underground-belt", ITEM("underground-belt", 1))
	AddIng("express-underground-belt", ITEM("fast-underground-belt", 1))
	AddIng("k-underground-belt", ITEM("express-underground-belt", 1))
	
	AddIng("fast-splitter", ITEM("splitter", 1))
	AddIng("express-splitter", ITEM("fast-splitter", 1))
	AddIng("k-splitter", ITEM("express-splitter", 1))
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
	AddIng(machine.furnace2, ITEM(machine.furnace1, 1))
	AddIng(machine.furnace3, ITEM(machine.furnace2, 1))
	AddIng(machine.furnace4, ITEM(machine.furnace3, 1))
	AddIng(machine.furnace5, ITEM(machine.furnace4, 5))	
end

if (settings.startup["momo-tieredCrusher"].value) then
	AddIng("iron-grinder", ITEM("bronze-grinder", 1))
	AddIng("steel-grinder", ITEM("iron-grinder", 1))
end

if (settings.startup["momo-tieredComputer"].value) then
	AddIng("computer-mk2", ITEM("computer-mk1", 1))
	AddIng("computer-mk2-2", ITEM("computer-mk1", 2))
	AddIng("computer-mk3", ITEM("computer-mk2", 1))
	AddIng("computer-mk3-2", ITEM("computer-mk2", 2))
end

if (settings.startup["momo-tieredBot"].value) then
	AddIng("logistic-robot", ITEM("steambot", 1))
	AddIng("construction-robot", ITEM("steambot", 1))
end
