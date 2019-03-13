-- remove decomposition decrease UI lag when select
for i, j in pairs({"b1", "b2", "b3", "b4", "b5"}) do
	local name = momoTweak.genRecipeNameFromResult({j, 3})
	if data.raw.recipe[name] then
		data.raw.recipe[name].allow_decomposition = false
	else
		log("MTKL no recipe => " .. name)
	end
end
local atcrecipe = momoTweak.genRecipeNameFromResult({"atc", 1})
if data.raw.recipe[atcrecipe] then
	data.raw.recipe[atcrecipe].allow_decomposition = false
else
	log("MTKL no recipe => " .. atcrecipe)
end

bobmods.lib.recipe.replace_ingredient("zipir", "fbreactor", "pulp-mill")
bobmods.lib.recipe.add_ingredient("cadaveric-arum", {"moondrop-greenhouse", 2})	
bobmods.lib.recipe.add_ingredient("phosphate-mine", {"clay-pit", 1})
bobmods.lib.recipe.add_ingredient("rare-earth-mine", {"clay-pit", 1})
bobmods.lib.recipe.add_ingredient("kmauts-enclosure", {"moondrop-greenhouse", 2})
bobmods.lib.recipe.add_ingredient("pulp-mill", {"wpu", 1})
bobmods.lib.recipe.add_ingredient("kicalk-plantation", {"wpu", 2})

bobmods.lib.recipe.add_ingredient("biopolymer", {"plastic-bar", 6})
--bobmods.lib.recipe.add_ingredient("yag-laser-module", {"plastic-bar", 4})
bobmods.lib.recipe.add_ingredient("nxag-matrix", {"plastic-bar", 9})
bobmods.lib.recipe.add_ingredient("resorcinol", {"plastic-bar", 3})

data.raw["assembling-machine"]["electronics-machine-1"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = true
    }
data.raw["assembling-machine"]["electronics-machine-1"].ingredient_count=20
data.raw["assembling-machine"]["electronics-machine-2"].ingredient_count=20
data.raw["assembling-machine"]["electronics-machine-3"].ingredient_count=20


if data.raw.item["solid-limestone"] then
	data:extend({
		{
			type = "recipe",
			name = "momo-py-limestone-sand",
			localised_name = "Limestone cracking",
			enabled = "false",
			subgroup = "ore-processing-a",
			order = "zzzz",
			energy_required =4,
			category = "clay",
			ingredients = {
				{type="item", name="solid-limestone", amount= 1 },
				{type="fluid", name="steam", amount=100, minimum_temperature=165 }
			},
			results = {
				{type="item", name="solid-sand", amount=6},
				{type="item", name="stone", amount=1}
			},
			icon = "__angelsrefining__/graphics/icons/solid-sand.png",
			icon_size = 32
			}
		})
	bobmods.lib.tech.add_recipe_unlock("water-washing-1", "momo-py-limestone-sand")
end

if data.raw.fluid["gas-ammonia"] then
	momoTweak.createRecipe("fbreactor", {
		{"melamine", 20},
		{type="fluid", name="gas-carbon-dioxide", amount=30},
		{type="fluid", name="dirty-water", amount=50},
	},
	{
		{type="fluid", name="water", amount=200},
		{type="fluid", name="gas-melamine", amount=100},
		{type="fluid", name="gas-ammonia", amount=20}
	}, 10, "angels-nitrogen-processing-3")
	momoTweak.createRecipe("advanced-chemistry", {
		{type="fluid", name="cyanic-acid", amount=30},
		{type="fluid", name="gas-ammonia", amount=10},
	},
	{
		{type="fluid", name="gas-urea", amount=100},
	}, 10, "angels-nitrogen-processing-2")
		
end


-- Advanced plastics recipe 
momoTweak.replace_with_ingredient("anotherworld-structure-components", "plastic-bar", {"advanced-plastics", 800})
momoTweak.replace_with_ingredient("advanced-structure-components", "plastic-bar", {"advanced-plastics", 80})
bobmods.lib.recipe.add_ingredient("low-density-structure", {"advanced-plastics", 8})


bobmods.lib.recipe.add_ingredient("more-science-pack-28", {"advanced-plastics", 5})


bobmods.lib.recipe.add_ingredient(momoTweak.genRecipeNameFromResult({"py-superconductor", 4}), {"advanced-plastics", 8})
bobmods.lib.recipe.add_ingredient(momoTweak.genRecipeNameFromResult({"pre-high-sci", 1}), {"advanced-plastics", 4})



if data.raw.item["habitation"] then
	bobmods.lib.recipe.add_ingredient("habitation", {"advanced-plastics", 500})
	bobmods.lib.recipe.add_ingredient("command", {"advanced-plastics", 200})
end

bobmods.lib.recipe.add_ingredient("nexelit-matrix", {"advanced-plastics", 3})