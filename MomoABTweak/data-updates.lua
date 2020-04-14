
require("compatibility.more-science-pack.recipe")
require("compatibility.more-science-pack.recipe-science-pack")
require("compatibility.underground-pipe-pack")
require("prototypes.updates-solar")
require("prototypes.updates-misc-recipe")
require("prototypes.updates-recipe-science-components")
require("prototypes.updates-recipe-science-pack")
require("prototypes.updates-electronics")
require("prototypes.updates-recipe-nickel")
require("prototypes.updates-recipe-zinc")
require("prototypes.updates-recipe-silicon")
require("prototypes.updates-recipe-silver")
require("prototypes.updates-recipe-gold")
require("prototypes.updates-recipe-cobalt")
require("prototypes.updates-recipe-alloy")
require("prototypes.updates-recipe-plastic")
require("prototypes.updates-recipe-carbon")
require("prototypes.updates-recipe-momo-item")

require("prototypes.updates-recipe-module")

require("prototypes.updates-stack-size")
require("prototypes.bobextended.bobextended-update")

momoTweak.recipe.CreateElectronicsRecipe()

momoTweak.recipe.Nickel()
momoTweak.recipe.Zinc()
momoTweak.recipe.Silicon()
momoTweak.recipe.Silver()
momoTweak.recipe.Gold()
momoTweak.recipe.Cobalt()
momoTweak.recipe.Alloy()
momoTweak.recipe.Plastic()
momoTweak.recipe.Carbon()
momoTweak.recipe.ScienceComponents()
momoTweak.recipe.SciencePack()
momoTweak.recipe.MiscRecipe()

momoTweak.recipe.StoneSlab()
momoTweak.recipe.CarbonPlate()

momoTweak.updates.Solar() 
momoTweak.updates.HarderElectronics()
momoTweak.updates.ExtendedUpdate()
momoTweak.updates.StackSize()
momoTweak.recipe.Module()

momoTweak.updates.StackSize()

if (momoTweak.mods.msp) then
	momoTweak.compatibility.msp.PackRecipe()
	momoTweak.compatibility.msp.MspToScienceRecipe()
end

if (momoTweak.mods.undergroundPipePack) then
	momoTweak.compatibility.undergroundPipePack.Recipe()
end