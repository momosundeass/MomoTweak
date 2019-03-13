data.raw["assembling-machine"]["assembling-machine-8"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid", "end-game-crafting"}
data.raw["assembling-machine"]["assembling-machine-8"].ingredient_count = 20
data.raw["assembling-machine"]["assembling-machine-8"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid", "end-game-crafting"}
data.raw["assembling-machine"]["electronics-machine-3"].crafting_categories = 
{"electronics", "electronics-machine", "electronics-machine-3"}
data.raw["assembling-machine"]["electronics-machine-4"].crafting_categories = 
{"electronics", "electronics-machine", "electronics-machine-3", "electronics-machine-4"}
table.insert(data.raw["recipe"]["satellite"].ingredients,{"teleporter", 1})
table.insert(data.raw["recipe"]["god-board-1"].ingredients,{"quantum-case", 1})
table.insert(data.raw["recipe"]["god-board-2"].ingredients,{"quantum-case", 4})
table.insert(data.raw["recipe"]["god-board-3"].ingredients,{"quantum-case", 8})
table.insert(data.raw["recipe"]["god-board-4"].ingredients,{"quantum-case", 14})
table.insert(data.raw["recipe"]["god-board-5"].ingredients,{"quantum-case", 20})
table.insert(data.raw.technology["god-module-1"].effects,{type = "unlock-recipe", recipe = "quantum-case"})
local a = false
data:extend(
{
  {
	type = "item",
	name = "quantum-case",
	icon = "__AdvancedTech__/graphics/icons/quantum-case.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "bob-boards",
	order = "z-z",
	stack_size = 200,
  },
  {
    type = "tool",
    name = "quantum-photon-printing-computer",
    icon = "__AdvancedTech__/graphics/icons/quantum-photon-printing-computer.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "end-game-tech",
    order = "a-b",
    stack_size = 5000,
	durability = 1,
  },
  {
    type = "item",
    name = "photon-manipulator",
    icon = "__AdvancedTech__/graphics/icons/photon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "end-game-tech",
    order = "a-z",
    stack_size = 1,
  },
  {
    type = "item",
    name = "teleporter",
    icon = "__AdvancedTech__/graphics/icons/teleporter.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "end-game-tech",
    order = "a-a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "quantum-chip-class1",
    icon = "__AdvancedTech__/graphics/icons/quantum-chip-class1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "end-game-tech",
    order = "a-c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "quantum-chip-class2",
    icon = "__AdvancedTech__/graphics/icons/quantum-chip-class2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "end-game-tech",
    order = "a-d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "quantum-chip-class3",
    icon = "__AdvancedTech__/graphics/icons/quantum-chip-class3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "end-game-tech",
    order = "a-e",
    stack_size = 200,
  },
  
  {
	type = "recipe",
    name = "quantum-chip-class1",
    category = "electronics-machine-3",
    energy_required = 20,
	enabled = a,
    ingredients =
    {
		{"quantum-case", 3},
		{"b1-1",16},
		{"b1-2",16},
		{"b1-3",16},
		{"b1-4",16},
		{"b1-5",16},
    },
    result = "quantum-chip-class1"
  },
  {
	type = "recipe",
    name = "quantum-chip-class2",
    category = "electronics-machine-3",
    energy_required = 40,
	enabled = a,
    ingredients =
    {
		{"quantum-case", 6},
		{"b2-1",8},
		{"b2-2",8},
		{"b2-3",8},
		{"b2-4",8},
		{"b2-5",8},
    },
    result = "quantum-chip-class2"
  },
  {
	type = "recipe",
    name = "quantum-chip-class3",
    category = "electronics-machine-3",
    energy_required = 80,
	enabled = a,
    ingredients =
    {
		{"quantum-case", 9},
		{"b3-1",4},
		{"b3-2",4},
		{"b3-3",4},
		{"b3-4",4},
		{"b3-5",4},
    },
    result = "quantum-chip-class3"
  },
  {
	type = "recipe",
    name = "photon-manipulator",
    category = "end-game-crafting",
    energy_required = 550,
	enabled = a,
    ingredients =
    {
		{"god-module-5", 5},
		{"alva", 200},
		{"advanced-processing-unit", 700},
		{"dytech-inserter-fast", 200};
	    {"flux-capacitor-4", 500},
		{"flux-capacitor-3", 1000},
		{"flux-capacitor-2", 1500},
		{"flux-capacitor-1", 2000},
		{"silver-zinc-battery", 4500},
		{"ruby-5", 3000},
		{"sapphire-5", 2500},
		{"amethyst-5", 2000},
		{"emerald-5", 1500},
		{"topaz-5", 1000},
		{"diamond-5", 500},
		{"uranium", 3500},
		{"ardite-plate",1500},
    },
    result = "photon-manipulator"
  },
  {
	type = "recipe",
    name = "quantum-photon-printing-computer",
    category = "electronics-machine-4",
    energy_required = 160,
	enabled = a,
    ingredients =
    {
		{"quantum-chip-class1", 20},
		{"quantum-chip-class2", 15},
		{"quantum-chip-class3", 10},
		{"photon-manipulator", 0},
    },
    result = "quantum-photon-printing-computer"
  },
  {
	type = "recipe",
    name = "teleporter",
    category = "end-game-crafting",
    energy_required = 160,
	enabled = a,
    ingredients =
    {
		{"quantum-photon-printing-computer", 5000},
		{"mold-machine", 500},
		{"mold-circuit", 1500},
		{"assembling-machine-8",1},
		{"electronics-machine-4", 1},
		{"electrolyser-5", 1},
		{"chemical-plant-5", 1},
		{"electric-chemical-mixing-furnace-3", 1},
		{"miningstation-5", 1}
    },
    result = "teleporter"
  },
  
}
)