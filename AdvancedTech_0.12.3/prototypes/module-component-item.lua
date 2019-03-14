data:extend(
{
  {
    type = "item-subgroup",
    name = "module-resource",
    group = "bob-gems",
    order = "i-a"
  },
  {
    type = "item-subgroup",
    name = "replicator-nonprism",
    group = "bob-fluid-products",
    order = "e-a"
  },
  {
    type = "item-subgroup",
    name = "replicator-prism-1",
    group = "bob-fluid-products",
    order = "e-b"
  },
  {
    type = "item-subgroup",
    name = "replicator-prism-2",
    group = "bob-fluid-products",
    order = "e-c"
  },
  {
    type = "item-subgroup",
    name = "replicator-prism-3",
    group = "bob-fluid-products",
    order = "e-d"
  },
  {
    type = "item-subgroup",
    name = "replicator-prism-4",
    group = "bob-fluid-products",
    order = "e-e"
  },
  {
    type = "item",
    name = "prism",
    icon = "__AdvancedTech__/graphics/icons/module/prism.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-resource",
    order = "a-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "flawless-prism",
    icon = "__AdvancedTech__/graphics/icons/module/flawless-prism.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-resource",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "perfect-prism",
    icon = "__AdvancedTech__/graphics/icons/module/perfect-prism.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-resource",
    order = "a-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "gold-slided",
    icon = "__AdvancedTech__/graphics/icons/module/gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-intermediates",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "nickel-slided",
    icon = "__AdvancedTech__/graphics/icons/module/nickel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-intermediates",
    order = "a-b",
    stack_size = 200
  },
  {
		type = "fluid",
		name = "nano-replicator",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=1, g=1, b=0},
		flow_color = {r=1, g=1, b=0.0},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/nanoreplicator.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "replicator-nonprism",
		order = "a-c",
	},
	{
		type = "fluid",
		name = "titanium-replicator",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=1, b=0},
		flow_color = {r=0, g=1, b=0},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/titanium.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "replicator-nonprism",
		order = "a-d",
	},
	{
		type = "fluid",
		name = "tungsten-replicator",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=1},
		flow_color = {r=0, g=0, b=1},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/tungsten.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "replicator-nonprism",
		order = "a-e",
	},
	{
		type = "fluid",
		name = "silver-replicator",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=1, g=1, b=0},
		flow_color = {r=1, g=1, b=0},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/silver.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "replicator-nonprism",
		order = "a-f",
	},
	{
		type = "fluid",
		name = "zinc-replicator",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0.6, g=0.1, b=0},
		flow_color = {r=0.6, g=0.1, b=0},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/zinc.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "replicator-nonprism",
		order = "a-g",
	},
	{
		type = "fluid",
		name = "aluminium-replicator",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0, g=0, b=0},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/aluminium.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "replicator-nonprism",
		order = "a-h",
	},
}
)