require("prototypes.sci.sct-pre-recipe")

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
require("prototypes.recipe.module")
-- -------------------------------------------

require("prototypes.sci.recipe")
require("prototypes.sci.sci30recipe")
require("prototypes.sci.sci30extreme")

require("prototypes.bobextended.bobextended-update")

require("prototypes.buff-solar")
require("prototypes.expensive")

if momoTweak.mods.sct or momoTweak.py.coal then
	momoTweak.require.SctPreRecipe()
end

-- recipe science ------------------------------
momoTweak.isLoadScienceRecipeInUpdates = ( not momoTweak.mods.sct ) and ( not momoTweak.py.coal )
if momoTweak.isLoadScienceRecipeInUpdates then
	momoTweak.require.SciRecipe()
	momoTweak.require.Sci30Recipe()
	momoTweak.require.Sci30Extreme()
end

momoTweak.logisticSciencePackIngredients = momoTweak.get_ingredients(momoTweak.sciLogistic)
-- ---------------------------------------------

if settings.startup["momo-harder-module"].value then
	momoTweak.require.RecipeModule()
end

if momoTweak.settings.isLoadBobExtended then
	momoTweak.require.ExtendedUpdate()
end

if (momoTweak.mods.angelBio) then
	momoTweak.angelBio.Update()
end



if momoTweak.mods.modularChests then
	momoTweak.compatibility.modularChests.Recipe()
	momoTweak.compatibility.modularChests.Technology()
end

if momoTweak.mods.undergroundPipePack then
	momoTweak.compatibility.underGroundPipePack.Recipe()
end
-- still dont support py
-- require("pycom.update")


