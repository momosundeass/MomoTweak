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
if not IsScienceCostM then
	require("prototypes.sci.recipe")
	require("prototypes.sci.sci30recipe")
	require("prototypes.sci.sci30extreme")
end

momoTweak.sciLogistic_ingredients = momoTweak.get_ingredients(momoTweak.sciLogistic)
-- ---------------------------------------------

if settings.startup["momo-harder-module"].value then
  require("prototypes.recipe.module")
end

require("prototypes.expensive")

if IsLoadBobextended then
	require("prototypes.bobextended.bobextended-update")
end

if (mods["angelsbioprocessing"]) then
	momoTweak.angel_bio_update()
end

require("prototypes.buff-solar")

require("prototypes.misc")

require("pycom.update")


