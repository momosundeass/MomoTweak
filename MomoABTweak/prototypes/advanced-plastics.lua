local ICON = "__MomoTweak__/graphics/icons/"
local subgroup = data.raw.item["iron-stick"].subgroup
local name = "advanced-plastics"
local expectResult = {"advanced-plastics", 1}
local recipeName = momoTweak.genRecipeNameFromResult(expectResult)

data:extend({
    {
      type = "item",
      name = "advanced-plastics",
      icon = ICON .."advanced-plastics.png",
      icon_size = 32,
      subgroup = subgroup,
      order = "f[advanced-plastics]",
      stack_size = 200
    },
	{
		type = "recipe",
		name = recipeName,
		category = "advanced-chemistry",
		enabled = false,
		energy_required = 20,
		ingredients = {
			{type="fluid", name="liquid-plastic", amount=25},
			{type="fluid", name="liquid-resin", amount=12},
			{type="fluid", name="liquid-ferric-chloride-solution", amount=15},
			{type="item", name="solid-carbon", amount=3}
		},
		results = {expectResult},
	}
})

bobmods.lib.tech.add_recipe_unlock("plastic-2", recipeName)
bobmods.lib.recipe.add_ingredient("low-density-structure", {"advanced-plastics", 8})

if data.raw.item["habitation"] then
	bobmods.lib.recipe.add_ingredient("habitation", {"advanced-plastics", 500})
end

if data.raw.item["command"] then
	bobmods.lib.recipe.add_ingredient("command", {"advanced-plastics", 200})
end
