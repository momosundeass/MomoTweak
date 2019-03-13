data:extend(
{
  {
    type = "recipe",
    name = "carbon-steel",
    category = "mixing-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = false,
    ingredients =
    {
      {type="item", name="iron-plate", amount=1},
      {type="item", name="carbon", amount=2},
    },
    result = "steel-plate",
    result_count = 2,
  },
  
  {
    type = "recipe",
    name = "carbon-tin",
    category = "mixing-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = false,
    ingredients =
    {
      {type="item", name="tin-ore", amount=1},
      {type="item", name="carbon", amount=2},
    },
    result = "tin-plate",
    result_count = 2,
  },
}
)