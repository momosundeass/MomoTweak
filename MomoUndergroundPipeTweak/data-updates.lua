require("prototypes.recipes.pipe-recipes")
require("prototypes.subgroups.pipe-subgroups")

if (settings.startup["momo-pipe-use-recipes"].value) then
	momoPipeTweak.recipes.Update()
end

momoPipeTweak.subgroups.Update()