local pipeRecipe = require("prototypes.recipes.pipes")
pipeRecipe.Updates()
local storageRecipe = require("prototypes.recipes.storages")
storageRecipe.Updates()

if (momoABTweak.settings.electronics) then
	local sc = require("prototypes.recipes.electronics")
	sc.Updates()
end