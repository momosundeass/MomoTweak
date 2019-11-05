--- fast-transport-belt  fast-underground-belt  fast-splitter  


--- using 
local Rem = momoIRTweak.recipe.RemoveIngredient
local AddIng = momoIRTweak.recipe.AddIngredient
local ITEM = momoIRTweak.FastItem
local Repi = momoIRTweak.recipe.ReplaceIngredient

local machine = momoIRTweak.machine

--- reduce iron use more tin
Rem("inserter", "iron-plate")
AddIng("inserter", ITEM("tin-plate", 4))


Rem("fast-transport-belt", "iron-plate")
AddIng("fast-transport-belt", ITEM("tin-plate", 2))

Rem("fast-splitter", "iron-plate")
AddIng("fast-splitter", ITEM("tin-plate", 3))

Rem("fast-underground-belt", "iron-plate")
AddIng("fast-underground-belt", ITEM("tin-plate", 7))

Rem("small-lamp", "iron-plate")
AddIng("small-lamp", ITEM("tin-plate", 5))


-- furnace 
AddIng(machine.furnace3, ITEM("glass-plate", 20))
AddIng(machine.furnace4, ITEM("glass-plate", 36))
AddIng(machine.furnace5, ITEM("glass-plate", 100))


AddIng(machine.quantumComputer, ITEM("glass-plate", 300))

AddIng(machine.filtration1, ITEM(machine.scrapper1, 1))
AddIng(machine.filtration2, ITEM(machine.scrapper2, 2))

AddIng(machine.airFilter, ITEM(machine.scrapper12, 1))

AddIng(machine.flareStack, ITEM(machine.incinerator1, 1))
AddIng(machine.evaporator, ITEM(machine.incinerator2, 1))

AddIng(machine.oliRefinery, ITEM(machine.incinerator1, 1))
AddIng(machine.chemicalPlant1, ITEM(machine.incinerator1, 1))

Repi(machine.chemicalPlant2, "processing-unit", ITEM("computer-mk3", 5))
AddIng(machine.chemicalPlant2, ITEM("controller-mk3", 20))

Repi(machine.quantumComputer, "processing-unit", ITEM("computer-mk3", 15))
AddIng(machine.quantumComputer, ITEM("controller-mk3", 50))

Repi(machine.beacon2, "processing-unit", ITEM("computer-mk3", 3))
AddIng(machine.beacon2, ITEM("controller-mk3", 10))

Repi(machine.beacon1, "computer-mk3", ITEM("computer-mk3", 3))

Repi(machine.server1, "processing-unit", ITEM("computer-mk3", 3))
AddIng(machine.server1, ITEM("controller-mk3", 10))


Repi(machine.stabilizer, "processing-unit", ITEM("computer-mk3", 3))
AddIng(machine.stabilizer, ITEM("controller-mk3", 10))

Repi(machine.matterFactory, "processing-unit", ITEM("computer-mk3", 20))
AddIng(machine.matterFactory, ITEM("controller-mk3", 50))
Repi(machine.matterConverter, "processing-unit", ITEM("computer-mk3", 5))
AddIng(machine.matterConverter, ITEM("controller-mk3", 20))
Repi(machine.matterAssembler, "processing-unit", ITEM("computer-mk3", 5))
AddIng(machine.matterAssembler, ITEM("controller-mk3", 20))

--- antimatter 500


