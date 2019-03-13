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

-- -------------------------------------------

-- recipe science ------------------------------
require("prototypes.sci.recipe")
require("prototypes.sci.sci30recipe")
require("prototypes.sci.sci30extreme")
-- ---------------------------------------------



if settings.startup["momo-harder-module"].value then
  require("prototypes.recipe.module")
end

require("prototypes.expensive")

if IsLoadBobextended then
	require("prototypes.bobextended.bobextended-update")
end

require("prototypes.buff-solar")

require("prototypes.misc")


