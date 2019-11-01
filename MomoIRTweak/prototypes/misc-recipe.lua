--- fast-transport-belt  fast-underground-belt  fast-splitter  


--- using 
local Rem = momoIRTweak.RemoveFromRecipe
local AddIng = momoIRTweak.AddToRecipe
local ITEM = momoIRTweak.FastItem

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

