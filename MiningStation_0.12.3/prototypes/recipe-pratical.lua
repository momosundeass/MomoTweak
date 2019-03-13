data.raw["assembling-machine"]["steel-furnace-mk2"].crafting_categories = {"smelting", "smelting-pratical"}
data.raw["assembling-machine"]["steel-furnace-mk3"].crafting_categories = {"smelting", "smelting-pratical"}
data.raw["assembling-machine"]["steel-furnace-mk4"].crafting_categories = {"smelting", "smelting-pratical"}
data.raw["assembling-machine"]["steel-furnace-mk5"].crafting_categories = {"smelting", "smelting-pratical"}
data.raw["item"]["iron-chunks"].stack_size = 500
data.raw["item"]["copper-chunks"].stack_size = 500
local a = false
data:extend(
{
  {
    type = "recipe",
    name = "iron-pratical",
    category = "smelting-pratical",
    energy_required = 10,
    enabled = a,
    ingredients =
    {
      {type="item", name="iron-chunks", amount=20},
    },
    result = "iron-pratical",
  },
  {
    type = "recipe",
    name = "copper-pratical",
    category = "smelting-pratical",
    energy_required = 10,
    enabled = a,
    ingredients =
    {
      {type="item", name="copper-chunks", amount=20},
    },
    result = "copper-pratical",
  },
  {
    type = "recipe",
    name = "iron-to-copper",
    category = "smelting-pratical",
	icon = "__MiningStation__/graphics/icons/iron-to-copper.png",
    energy_required = 22,
    enabled = a,
    ingredients =
    {
      {type="item", name="iron-pratical", amount=1},
    },
    result = "copper-pratical",
  },
  {
    type = "recipe",
    name = "copper-to-iron",
    category = "smelting-pratical",
	icon = "__MiningStation__/graphics/icons/copper-to-iron.png",
    energy_required = 22,
    enabled = a,
    ingredients =
    {
      {type="item", name="copper-pratical", amount=1},
    },
    result = "iron-pratical",
  },
  
  {
    type = "recipe",
    name = "titanium-pratical",
    category = "smelting-pratical",
    energy_required = 22,
    enabled = a,
    ingredients =
    {
      {type="item", name="iron-pratical", amount=10},
    },
    result = "titanium-pratical",
  },
  {
    type = "recipe",
    name = "silver-pratical",
    category = "smelting-pratical",
    energy_required = 22,
    enabled = a,
    ingredients =
    {
      {type="item", name="copper-pratical", amount=10},
    },
    result = "silver-pratical",
  },
  {
    type = "recipe",
    name = "tin-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back",
    energy_required = 16,
	order = "a-a",
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="iron-pratical", amount=2},
    },
    result = "tin-ore",
  },
  {
    type = "recipe",
    name = "zinc-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back",
	order = "a-b",
    energy_required = 16,
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="iron-pratical", amount=3},
    },
    result = "zinc-ore",
  },
  {
    type = "recipe",
    name = "lead-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back2",
    energy_required = 22,
	order = "a-a",
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="copper-pratical", amount=2},
    },
    result = "lead-ore",
  },
  {
    type = "recipe",
    name = "gold-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back2",
	order = "a-b",
    energy_required = 22,
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="copper-pratical", amount=4},
    },
    result = "gold-ore",
  },
  {
    type = "recipe",
    name = "nickel-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back",
    energy_required = 26,
	order = "a-c",
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="iron-pratical", amount=5},
    },
    result = "nickel-ore",
  },
  {
    type = "recipe",
    name = "aluminium-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back2",
	order = "a-c",
    energy_required = 26,
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="copper-pratical", amount=4},
    },
    result = "bauxite-ore",
  },
  {
    type = "recipe",
    name = "titanium-pratical-back",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back",
    energy_required = 32,
	order = "a-d",
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="titanium-pratical", amount=1},
    },
    result = "rutile-ore",
	results_count = 1
  },
  {
    type = "recipe",
    name = "silver-pratical-back",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back2",
	order = "a-d",
    energy_required = 32,
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="silver-pratical", amount=1},
    },
    result = "silver-ore",
  },
  {
    type = "recipe",
    name = "tungsten-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back",
    energy_required = 35,
	order = "a-e",
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="titanium-pratical", amount=3},
    },
    result = "tungsten-ore",
  },
  {
    type = "recipe",
    name = "cobalt-pratical",
    category = "smelting-pratical",
	subgroup = "ms-pratical-back2",
	order = "a-e",
    energy_required = 35,
    enabled = a,
    ingredients =
    {
	  {"sand", 1},
      {type="item", name="silver-pratical", amount=2},
    },
    result = "cobalt-ore",
  },
}
)
data:extend(
{
	{
	type = "recipe",
	name = "ms-go-iron",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical",
	icon = "__bobores__/graphics/icons/iron-ore.png",
	order = "a-a",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "iron-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "iron-chunks", amount = 20},
	}
	},
	{
	type = "recipe",
	name = "ms-go-copper",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical-copper",
	icon = "__base__/graphics/icons/copper-ore.png",
	order = "a-a",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "copper-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "copper-chunks", amount = 20},
	}
	},
	{
	type = "recipe",
	name = "ms-go-tin",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical",
	icon = "__bobores__/graphics/icons/tin-ore.png",
	order = "a-b",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "tin-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "iron-pratical", amount = 1},
	}
	},
	{
	type = "recipe",
	name = "ms-go-lead",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical-copper",
	icon = "__bobores__/graphics/icons/lead-ore.png",
	order = "a-b",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "lead-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "copper-pratical", amount = 1},
	}
	},
	{
	type = "recipe",
	name = "ms-go-zinc",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical",
	icon = "__bobores__/graphics/icons/zinc-ore.png",
	order = "a-c",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "tin-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "iron-pratical", amount = 2},
	}
	},
	{
	type = "recipe",
	name = "ms-go-gold",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical-copper",
	icon = "__bobores__/graphics/icons/gold-ore.png",
	order = "a-c",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "gold-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "copper-pratical", amount = 2},
	}
	},
	{
	type = "recipe",
	name = "ms-go-nickel",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical",
	icon = "__bobores__/graphics/icons/nickel-ore.png",
	order = "a-d",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "nickel-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "iron-pratical", amount = 4},
	}
	},
	{
	type = "recipe",
	name = "ms-go-bauxite",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical-copper",
	icon = "__bobores__/graphics/icons/bauxite-ore.png",
	order = "a-d",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "bauxite-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "copper-pratical", amount = 3},
	}
	},
	{
	type = "recipe",
	name = "ms-go-titanium",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical",
	icon = "__bobores__/graphics/icons/rutile-ore.png",
	order = "a-e",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "rutile-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "iron-pratical", amount = 7},
	}
	},
	{
	type = "recipe",
	name = "ms-go-silver",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical-copper",
	icon = "__bobores__/graphics/icons/silver-ore.png",
	order = "a-e",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "silver-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "copper-pratical", amount = 7},
	}
	},
	{
	type = "recipe",
	name = "ms-go-tungsten",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical",
	icon = "__bobores__/graphics/icons/tungsten-ore.png",
	order = "a-f",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "tungsten-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "iron-pratical", amount = 12},
	}
	},
	{
	type = "recipe",
	name = "ms-go-cobalt",
	category = "smelting-pratical",
	subgroup = "ms-ore-pratical-copper",
	icon = "__bobores__/graphics/icons/cobalt-ore.png",
	order = "a-f",
	energy_required = 7,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "cobalt-ore", amount = 1},
	},
	results = {
		{type = "item", name = "stone", amount = 1},
		{type = "item", name = "copper-pratical", amount = 12},
	}
	},
	{
	type = "recipe",
	name = "ms-go-i",
	category = "smelting-pratical",
	subgroup = "ms-pratical-back",
	order = "a-a-a",
	energy_required = 5,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "iron-pratical", amount = 1},
	},
	results = {
		{type = "item", name = "iron-chunks", amount = 18},
	}
	},
	{
	type = "recipe",
	name = "ms-go-c",
	category = "smelting-pratical",
	subgroup = "ms-pratical-back2",
	order = "a-a-a",
	energy_required = 5,
	enabled = a,
	ingredients = 
	{
		{type = "item", name = "copper-pratical", amount = 1},
	},
	results = {
		{type = "item", name = "copper-chunks", amount = 18},
	}
	},
}
)