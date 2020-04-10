
require("compatibility.more-science-pack.recipe")
require("prototypes.updates-solar")
require("prototypes.updates-recipe-science-components")
require("prototypes.updates-electronics")
require("prototypes.bobextended.bobextended-update")

momoTweak.recipe.ScienceComponents()

momoTweak.updates.Solar() 
momoTweak.updates.HarderElectronics()

momoTweak.updates.ExtendedUpdate()

if (momoTweak.mods.msp) then
	momoTweak.compatibility.msp.PackRecipe()
end