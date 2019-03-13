data:extend(
{
  { type = "recipe",
    name = "iron-oxide",
    category = "chemistry",
	icon = "__MiningStation__/graphics/icons/iron-oxide.png",
    energy_required = 2,
	subgroup = "bob-resource-chemical",
	enabled = false,
    ingredients =
    {
		{"iron-ore",1},
		{type = "fluid", name="oxygen", amount=2.5},
    },
    results = 
    {
      {type="item", name="iron-oxide", amount = 1},
	  {type="fluid", name="sulfur-dioxide", amount = 1},
	}
  },
  { type = "recipe",
    name = "iron-oxide-2",
    category = "chemistry",
	icon = "__MiningStation__/graphics/icons/iron-oxide.png",
    energy_required = 2,
	subgroup = "bob-resource-chemical",
	enabled = false,
    ingredients =
    {
		{type = "fluid", name = "molten-iron",amount = 0.6},
		{type = "fluid", name="oxygen", amount=2.5},
    },
    results = 
    {
      {type="item", name="iron-oxide", amount = 1},
	  {type="fluid", name="sulfur-dioxide", amount = 1},
	}
  },
  { type = "recipe",
    name = "lead-oxide-2",
    category = "chemistry",
	icon = "__bobplates__/graphics/icons/lead-oxide.png",
    energy_required = 2,
	subgroup = "bob-resource-chemical",
	enabled = false,
    ingredients =
    {
		{type = "fluid", name = "molten-lead",amount = 0.6},
		{type = "fluid", name="oxygen", amount=2.5},
    },
    results = 
    {
      {type="item", name="lead-oxide", amount = 1},
	  {type="fluid", name="sulfur-dioxide", amount = 1},
	}
  },
  { type = "recipe",
    name = "adv-iron",
    icon = "__MiningStation__/graphics/icons/adv-iron.png",
    category = "chemical-furnace",
    energy_required = 25,
	subgroup = "bob-material-chemical",
	enabled = false,
    ingredients =
    {
		{"iron-oxide",7},
		{"carbon", 3},
		{"nickel-plate", 1},
		{type = "fluid", name="sulfuric-acid", amount=4.2},
		
    },
    results = 
    {
      {type="item", name="iron-plate", amount = 9},
	}
  },
  { type = "recipe",
    name = "adv-nickel",
    category = "electrolysis",
    energy_required = 7,
	icon = "__MiningStation__/graphics/icons/adv-nickel.png",
	subgroup = "bob-material-electrolysis",
	enabled = false,
    ingredients =
    {
		{"nickel-ore",3},
		{"zinc-ore", 1},
		{type = "fluid", name = "nitric-acid", amount = 2},
    },
    results = 
    {
      {type="item", name="nickel-plate", amount = 5},
	}
  },
}
)
