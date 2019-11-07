
if momoTweak.mods.sct or momoTweak.py.coal then
	require("prototypes.sci.sct-pre-recipe")
end

-- additional item ---------------------------
require("prototypes.advanced-plastics")
-- -------------------------------------------

require("prototypes.angel-tweak")
require("prototypes.game-progress")

-- recipe tweak ------------------------------
require("prototypes.recipe.assembler")
require("prototypes.recipe.sandclay")
require("prototypes.recipe.bobs-electrolysis")
require("prototypes.recipe.logistic")
require("prototypes.recipe.miner")
require("prototypes.recipe.misc")
require("prototypes.recipe.angels-machine")

-- -------------------------------------------

-- recipe science ------------------------------
momoTweak.isLoadScienceRecipeInUpdates = ( not momoTweak.mods.sct ) and ( not momoTweak.py.coal )
if momoTweak.isLoadScienceRecipeInUpdates then
	require("prototypes.sci.recipe")
	require("prototypes.sci.sci30recipe")
	require("prototypes.sci.sci30extreme")
end

momoTweak.logisticSciencePackIngredients = momoTweak.get_ingredients(momoTweak.sciLogistic)
-- ---------------------------------------------

if settings.startup["momo-harder-module"].value then
  require("prototypes.recipe.module")
end

require("prototypes.expensive")

if momoTweak.settings.isLoadBobExtended then
	require("prototypes.bobextended.bobextended-update")
end

if (momoTweak.mods.angelBio) then
	momoTweak.AngelBioUpdate()
end

require("prototypes.buff-solar")

require("prototypes.misc")

require("pycom.update")


