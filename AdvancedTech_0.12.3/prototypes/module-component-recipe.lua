local a = false;
table.insert(data.raw.recipe["speed-processor"].ingredients, {type = "fluid", name = "silver-replicator", amount = 1})
table.insert(data.raw.recipe["speed-processor-2"].ingredients, {type = "fluid", name = "silver-replicator", amount = 2})
table.insert(data.raw.recipe["speed-processor-3"].ingredients, {type = "fluid", name = "silver-replicator", amount = 4})
table.insert(data.raw.recipe["effectivity-processor"].ingredients, {type = "fluid", name = "titanium-replicator", amount = 1})
table.insert(data.raw.recipe["effectivity-processor-2"].ingredients, {type = "fluid", name = "titanium-replicator", amount = 2})
table.insert(data.raw.recipe["effectivity-processor-3"].ingredients, {type = "fluid", name = "titanium-replicator", amount = 4})
table.insert(data.raw.recipe["productivity-processor"].ingredients, {type = "fluid", name = "tungsten-replicator", amount = 1})
table.insert(data.raw.recipe["productivity-processor-2"].ingredients, {type = "fluid", name = "tungsten-replicator", amount = 2})
table.insert(data.raw.recipe["productivity-processor-3"].ingredients, {type = "fluid", name = "tungsten-replicator", amount = 4})
table.insert(data.raw.recipe["pollution-clean-processor"].ingredients, {type = "fluid", name = "aluminium-replicator", amount = 1})
table.insert(data.raw.recipe["pollution-clean-processor-2"].ingredients, {type = "fluid", name = "aluminium-replicator", amount = 2})
table.insert(data.raw.recipe["pollution-clean-processor-3"].ingredients, {type = "fluid", name = "aluminium-replicator", amount = 4})
table.insert(data.raw.recipe["pollution-create-processor"].ingredients, {type = "fluid", name = "zinc-replicator", amount = 1})
table.insert(data.raw.recipe["pollution-create-processor-2"].ingredients, {type = "fluid", name = "zinc-replicator", amount = 2})
table.insert(data.raw.recipe["pollution-create-processor-3"].ingredients, {type = "fluid", name = "zinc-replicator", amount = 4})
--normal
data:extend({
  {
	type = "recipe",
	name = "gold-slided",
	category = "advanced-crafting",
	energy_required = 2,
	enabled = a,
	ingredients = {
		{"gold-plate", 1},
	},
	result = "gold-slided",
	result_count = 4
  },
  {
	type = "recipe",
	name = "nickel-slided",
	category = "advanced-crafting",
	energy_required = 2,
	enabled = a,
	ingredients = {
		{"nickel-plate", 1},
	},
	result = "nickel-slided",
	result_count = 6
  },
  {
	type = "recipe",
	name = "prism",
	category = "advanced-crafting",
	energy_required = 230,
	enabled = a,
	ingredients = {
		{"ruby-5", 30},
		{"sapphire-5", 15},
	},
	result = "prism",
  },
  {
	type = "recipe",
	name = "flawless-prism",
	category = "advanced-crafting",
	energy_required = 560,
	enabled = a,
	ingredients = {
		{"prism", 3},
		{"amethyst-5", 30},
		{"emerald-5", 15},
	},
	result = "flawless-prism",
  },
  {
	type = "recipe",
	name = "perfect-prism",
	category = "advanced-crafting",
	energy_required = 1052,
	enabled = a,
	ingredients = {
		{"flawless-prism", 3},
		{"topaz-5", 90},
		{"diamond-5", 45},
	},
	result = "perfect-prism",
  },
  {
	type = "recipe",
	name = "nano-replicator",
	category = "electrolysis",
	energy_required = 10,
	enabled = a,
	subgroup = "replicator-prism-1",
	order = "a-a",
	ingredients = {
		{"gold-slided", 7},
		{"nickel-slided", 7},
		{"crystal", 2},
		{"assembling-machine-3", 0},
	},
	results = {
		{type = "fluid", name = "nano-replicator", amount = 2}
	}
  },
  {
	type = "recipe",
	name = "titanium-replicator",
	category = "electrolysis",
	energy_required = 10,
	enabled = a,
	subgroup = "replicator-prism-1",
	order = "a-b",
	ingredients = {
		{"lithium", 4},
		{"silicon", 1},
		{"titanium-plate", 1},
		{"raw-wood", 1},
		{type = "fluid", name = "nano-replicator", amount = 1},
		{"chemical-plant-2", 0},
		
	},
	results = {
		{type = "fluid", name = "titanium-replicator", amount = 0.5}
	}
  },
  {
	type = "recipe",
	name = "tungsten-replicator",
	category = "electrolysis",
	energy_required = 10,
	enabled = a,
	subgroup = "replicator-prism-1",
	order = "a-c",
	ingredients = {
		{"tungsten-plate", 4},
		{"cobalt-plate", 1},
		{"lead-steel-alloy", 3},
		{"raw-wood", 1},
		{type = "fluid", name = "nano-replicator", amount = 1},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "tungsten-replicator", amount = 0.5}
	}
  },
  {
	type = "recipe",
	name = "silver-replicator",
	category = "electrolysis",
	energy_required = 10,
	enabled = a,
	subgroup = "replicator-prism-1",
	order = "a-d",
	ingredients = {
		{"silver-plate", 2},
		{"bronze-alloy", 4},
		{"raw-wood", 1},
		{type = "fluid", name = "nano-replicator", amount = 1},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "silver-replicator", amount = 0.5}
	}
  },
  {
	type = "recipe",
	name = "zinc-replicator",
	category = "electrolysis",
	energy_required = 10,
	enabled = a,
	subgroup = "replicator-prism-1",
	order = "a-e",
	ingredients = {
		{"zinc-plate", 6},
		{"raw-wood", 1},
		{type = "fluid", name = "nano-replicator", amount = 1},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "zinc-replicator", amount = 0.5}
	}
  },
  {
	type = "recipe",
	name = "aluminium-replicator",
	category = "electrolysis",
	energy_required = 10,
	enabled = a,
	subgroup = "replicator-prism-1",
	order = "a-f",
	ingredients = {
		{"aluminium-plate", 3},
		{"solder-alloy", 1},
		{"raw-wood", 1},
		{type = "fluid", name = "nano-replicator", amount = 1},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "aluminium-replicator", amount = 0.5}
	}
  },
}
)
--normal
--prism
local b = false
data:extend({
{
	type = "recipe",
	name = "p-nano-replicator",
	category = "electrolysis",
	energy_required = 12,
	enabled = b,
	subgroup = "replicator-prism-2",
	order = "a-a",
	ingredients = {
		{"gold-slided", 7},
		{"nickel-slided", 7},
		{"crystal", 2},
		{"prism", 0},
		{"assembling-machine-3", 0},
	},
	results = {
		{type = "fluid", name = "nano-replicator", amount = 3}
	}
  },
  {
	type = "recipe",
	name = "p-titanium-replicator",
	category = "electrolysis",
	energy_required = 12,
	enabled = b,
	subgroup = "replicator-prism-2",
	order = "a-b",
	ingredients = {
		{"lithium", 4},
		{"silicon", 1},
		{"titanium-plate", 1},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 2},
		{"prism", 0},
		{"chemical-plant-2", 0},
		
	},
	results = {
		{type = "fluid", name = "titanium-replicator", amount = 1}
	}
  },
  {
	type = "recipe",
	name = "p-tungsten-replicator",
	category = "electrolysis",
	energy_required = 12,
	enabled = b,
	subgroup = "replicator-prism-2",
	order = "a-c",
	ingredients = {
		{"tungsten-plate", 4},
		{"cobalt-plate", 1},
		{"lead-steel-alloy", 3},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 2},
		{"prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "tungsten-replicator", amount = 1}
	}
  },
  {
	type = "recipe",
	name = "p-silver-replicator",
	category = "electrolysis",
	energy_required = 12,
	enabled = b,
	subgroup = "replicator-prism-2",
	order = "a-d",
	ingredients = {
		{"silver-plate", 2},
		{"bronze-alloy", 4},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 2},
		{"prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "silver-replicator", amount = 1}
	}
  },
  {
	type = "recipe",
	name = "p-zinc-replicator",
	category = "electrolysis",
	energy_required = 12,
	enabled = b,
	subgroup = "replicator-prism-2",
	order = "a-e",
	ingredients = {
		{"zinc-plate", 6},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 2},
		{"prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "zinc-replicator", amount = 1}
	}
  },
  {
	type = "recipe",
	name = "p-aluminium-replicator",
	category = "electrolysis",
	energy_required = 12,
	enabled = b,
	subgroup = "replicator-prism-2",
	order = "a-f",
	ingredients = {
		{"aluminium-plate", 3},
		{"solder-alloy", 1},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 2},
		{"prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "aluminium-replicator", amount = 1}
	}
  },
})
--flawless-prism
data:extend({
{
	type = "recipe",
	name = "f-nano-replicator",
	category = "electrolysis",
	energy_required = 14,
	enabled = b,
	subgroup = "replicator-prism-3",
	order = "a-a",
	ingredients = {
		{"gold-slided", 7},
		{"nickel-slided", 7},
		{"crystal", 2},
		{"flawless-prism", 0},
		{"assembling-machine-3", 0},
	},
	results = {
		{type = "fluid", name = "nano-replicator", amount = 4}
	}
  },
  {
	type = "recipe",
	name = "f-titanium-replicator",
	category = "electrolysis",
	energy_required = 14,
	enabled = b,
	subgroup = "replicator-prism-3",
	order = "a-b",
	ingredients = {
		{"lithium", 4},
		{"silicon", 1},
		{"titanium-plate", 1},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 3},
		{"flawless-prism", 0},
		{"chemical-plant-2", 0},
		
	},
	results = {
		{type = "fluid", name = "titanium-replicator", amount = 1.5}
	}
  },
  {
	type = "recipe",
	name = "f-tungsten-replicator",
	category = "electrolysis",
	energy_required = 14,
	enabled = b,
	subgroup = "replicator-prism-3",
	order = "a-c",
	ingredients = {
		{"tungsten-plate", 4},
		{"cobalt-plate", 1},
		{"lead-steel-alloy", 3},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 3},
		{"flawless-prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "tungsten-replicator", amount = 1.5}
	}
  },
  {
	type = "recipe",
	name = "f-silver-replicator",
	category = "electrolysis",
	energy_required = 14,
	enabled = b,
	subgroup = "replicator-prism-3",
	order = "a-d",
	ingredients = {
		{"silver-plate", 2},
		{"bronze-alloy", 4},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 3},
		{"flawless-prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "silver-replicator", amount = 1.5}
	}
  },
  {
	type = "recipe",
	name = "f-zinc-replicator",
	category = "electrolysis",
	energy_required = 14,
	enabled = b,
	subgroup = "replicator-prism-3",
	order = "a-e",
	ingredients = {
		{"zinc-plate", 6},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 3},
		{"flawless-prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "zinc-replicator", amount = 1.5}
	}
  },
  {
	type = "recipe",
	name = "f-aluminium-replicator",
	category = "electrolysis",
	energy_required = 14,
	enabled = b,
	subgroup = "replicator-prism-3",
	order = "a-f",
	ingredients = {
		{"aluminium-plate", 3},
		{"solder-alloy", 1},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 3},
		{"flawless-prism", 0},
		{"chemical-plant-2", 0},
	},
	results = {
		{type = "fluid", name = "aluminium-replicator", amount = 1.5}
	}
  },
})
--perfect-prism
data:extend({
{
	type = "recipe",
	name = "c-nano-replicator",
	category = "electrolysis",
	energy_required = 16,
	enabled = b,
	subgroup = "replicator-prism-4",
	order = "a-a",
	ingredients = {
		{"gold-slided", 7},
		{"nickel-slided", 7},
		{"crystal", 2},
		{"perfect-prism", 0},
		{"assembling-machine-5", 0},
	},
	results = {
		{type = "fluid", name = "nano-replicator", amount = 5}
	}
  },
  {
	type = "recipe",
	name = "c-titanium-replicator",
	category = "electrolysis",
	energy_required = 16,
	enabled = b,
	subgroup = "replicator-prism-4",
	order = "a-b",
	ingredients = {
		{"lithium", 4},
		{"silicon", 1},
		{"titanium-plate", 1},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 4},
		{"perfect-prism", 0},
		{"chemical-plant-3", 0},
		
	},
	results = {
		{type = "fluid", name = "titanium-replicator", amount = 2}
	}
  },
  {
	type = "recipe",
	name = "c-tungsten-replicator",
	category = "electrolysis",
	energy_required = 16,
	enabled = b,
	subgroup = "replicator-prism-4",
	order = "a-c",
	ingredients = {
		{"tungsten-plate", 4},
		{"cobalt-plate", 1},
		{"lead-steel-alloy", 3},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 4},
		{"perfect-prism", 0},
		{"chemical-plant-3", 0},
	},
	results = {
		{type = "fluid", name = "tungsten-replicator", amount = 2}
	}
  },
  {
	type = "recipe",
	name = "c-silver-replicator",
	category = "electrolysis",
	energy_required = 16,
	enabled = b,
	subgroup = "replicator-prism-4",
	order = "a-d",
	ingredients = {
		{"silver-plate", 2},
		{"bronze-alloy", 4},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 4},
		{"perfect-prism", 0},
		{"chemical-plant-3", 0},
	},
	results = {
		{type = "fluid", name = "silver-replicator", amount = 2}
	}
  },
  {
	type = "recipe",
	name = "c-zinc-replicator",
	category = "electrolysis",
	energy_required = 16,
	enabled = b,
	subgroup = "replicator-prism-4",
	order = "a-e",
	ingredients = {
		{"zinc-plate", 6},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 4},
		{"perfect-prism", 0},
		{"chemical-plant-3", 0},
	},
	results = {
		{type = "fluid", name = "zinc-replicator", amount = 2}
	}
  },
  {
	type = "recipe",
	name = "c-aluminium-replicator",
	category = "electrolysis",
	energy_required = 16,
	enabled = b,
	subgroup = "replicator-prism-4",
	order = "a-f",
	ingredients = {
		{"aluminium-plate", 3},
		{"solder-alloy", 1},
		{"raw-wood", 2},
		{type = "fluid", name = "nano-replicator", amount = 4},
		{"perfect-prism", 0},
		{"chemical-plant-3", 0},
	},
	results = {
		{type = "fluid", name = "aluminium-replicator", amount = 2}
	}
  },
})
