if (momoABTweak.mods.clownScience) then
	local clownScience = require("prototypes.clown-science")
	clownScience.UpdateUnlockRecipes()
end


momoIRTweak.ChangeGroup("intermediate-products", "angels-components")
momoIRTweak.ChangeGroup("bob-gems", "angels-components")
momoIRTweak.ChangeGroup("logistics", "bob-logistics")
momoIRTweak.ChangeGroup("bobmodules", "production")

