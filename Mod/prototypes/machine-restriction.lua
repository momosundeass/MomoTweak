data:extend({
    {
		type = "recipe-category",
		name = "momo-pack-crafting-level-2"
    },
	{
		type = "recipe-category",
		name = "momo-pack-crafting-level-3"
    },
	{
		type = "recipe-category",
		name = "momo-pack-crafting-level-4"
    },
})

local crafting_2 = "momo-pack-crafting-level-2"
local crafting_3 = "momo-pack-crafting-level-3"
local crafting_4 = "momo-pack-crafting-level-4"

table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, crafting_2)
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, crafting_2)
table.insert(data.raw["assembling-machine"]["assembling-machine-4"].crafting_categories, crafting_2)
table.insert(data.raw["assembling-machine"]["assembling-machine-5"].crafting_categories, crafting_2)
table.insert(data.raw["assembling-machine"]["assembling-machine-6"].crafting_categories, crafting_2)

table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, crafting_3)
table.insert(data.raw["assembling-machine"]["assembling-machine-4"].crafting_categories, crafting_3)
table.insert(data.raw["assembling-machine"]["assembling-machine-5"].crafting_categories, crafting_3)
table.insert(data.raw["assembling-machine"]["assembling-machine-6"].crafting_categories, crafting_3)

table.insert(data.raw["assembling-machine"]["assembling-machine-5"].crafting_categories, crafting_4)
table.insert(data.raw["assembling-machine"]["assembling-machine-6"].crafting_categories, crafting_4)

data.raw.recipe[momoTweak.sci3].category = crafting_2
data.raw.recipe[momoTweak.sci3].energy = 20

data.raw.recipe[momoTweak.sciProduction].category = crafting_3
data.raw.recipe[momoTweak.sciProduction].energy = 14 * 3

data.raw.recipe[momoTweak.sciLogistic].category = crafting_3
data.raw.recipe[momoTweak.sciLogistic].energy = 14 * 3

data.raw.recipe[momoTweak.sciTech].category = crafting_4
data.raw.recipe[momoTweak.sciTech].energy = 14 * 4
