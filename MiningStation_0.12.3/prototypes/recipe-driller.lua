local a = false
data:extend(
{
  {
    type = "recipe",
    name = "ms-d-component",
    category = "crafting-machine",
    energy_required = 5,
	order = "a",
    enabled = a,
    ingredients =
    {
      {type="item", name="raw-wood", amount=5},
	  {"stone", 2},
    },
    result = "ms-d-component",
	result_count = 10
  },
  {
    type = "recipe",
    name = "ms-d-class1",
    category = "crafting-machine",
    energy_required = 5,
    enabled = a,
    ingredients =
    {
      {type="item", name="ms-d-component", amount=5},
	  {"iron-plate", 1},
    },
    result = "ms-d-class1",
	result_count = 5
  },
  {
    type = "recipe",
    name = "ms-d-class2",
    category = "crafting-machine",
    energy_required = 10,
    enabled = a,
    ingredients =
    {
      {type="item", name="ms-d-component", amount=5},
	  {"bronze-alloy", 1},
    },
    result = "ms-d-class2",
	result_count = 5
  },
  {
    type = "recipe",
    name = "ms-d-class3",
    category = "crafting-machine",
    energy_required = 15,
    enabled = a,
    ingredients =
    {
      {type="item", name="ms-d-component", amount=5},
	  {"aluminium-plate", 1},
    },
    result = "ms-d-class3",
	result_count = 5
  },
  {
    type = "recipe",
    name = "ms-d-class4",
    category = "crafting-machine",
    energy_required = 20,
    enabled = a,
    ingredients =
    {
      {type="item", name="ms-d-component", amount=5},
	  {"titanium-plate", 1},
    },
    result = "ms-d-class4",
	result_count = 5
  },
  {
    type = "recipe",
    name = "ms-d-oil",
    category = "crafting-machine",
    energy_required = 15,
    enabled = a,
    ingredients =
    {
      {type="item", name="ms-d-component", amount=5},
	  {"lead-plate", 1},
    },
    result = "ms-d-oil",
	result_count = 5
  },
  {
    type = "recipe",
    name = "ms-d-lava",
    category = "crafting-machine",
    energy_required = 20,
    enabled = a,
    ingredients =
    {
      {type="item", name="ms-d-component", amount=5},
	  {"tungsten-plate", 1},
    },
    result = "ms-d-lava",
	result_count = 5
  },
}
)