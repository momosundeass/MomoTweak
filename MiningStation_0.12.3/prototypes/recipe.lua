
data:extend(
{
  { type = "recipe",
    name = "mining-class-1",
    icon = "__MiningStation__/graphics/icons/c1.png",
    category = "MiningStation-1",
    energy_required = 20,
    subgroup = "ms-crafting",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="water",amount= 40},
		{"ms-d-class1",1},
    },
    results = 
    {
      {type="item", name="stone", amount_min=1, amount_max=2, probability=0.8},
      {type="item", name="coal", amount_min=1, amount_max=2, probability=0.8},
      {type="item", name="iron-ore", amount_min=2, amount_max=6, probability=0.6},
	  {type="item", name="copper-ore", amount_min=1, amount_max=2, probability=0.6},
	  {type="item", name="tin-ore", amount_min=1, amount_max=2, probability=0.6},
	}
  },
  { type = "recipe",
    name = "mining-class-0-1",
    icon = "__MiningStation__/graphics/icons/c0.png",
    category = "MiningStation-1",
    energy_required = 20,
    subgroup = "ms-crafting",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="water",amount= 40},
		{"ms-d-class1",1},
    },
    results = 
    {
      {type="item", name="stone", amount_min=4, amount_max=8, probability=0.9},
      {type="item", name="coal", amount_min=2, amount_max=4, probability=0.9},
	  {type="item", name="sand", amount_min=25, amount_max=50, probability=0.9},
	  {type="item", name="iron-ore", amount_min=1, amount_max=2, probability=0.6},
	}
  },
  { type = "recipe",
    name = "mining-class-2",
    icon = "__MiningStation__/graphics/icons/c2.png",
    category = "MiningStation-2",
    energy_required = 40,
    subgroup = "ms-crafting",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="hydrogen",amount= 10},
		{"ms-d-class2",1},
    },
    results = 
    {
      {type="item", name="stone", amount_min=1, amount_max=2, probability=0.8},
      {type="item", name="iron-ore", amount_min=1, amount_max=2, probability=0.4},
	  {type="item", name="gold-ore", amount_min=1, amount_max=2, probability=0.5},
	  {type="item", name="lead-ore", amount_min=1, amount_max=3, probability=0.5},
	  {type="item", name="zinc-ore", amount_min=1, amount_max=3, probability=0.5},
	  {type="item", name="nickel-ore", amount_min=1, amount_max=4, probability=0.25},
	}
  },
  { type = "recipe",
    name = "mining-class-3",
    icon = "__MiningStation__/graphics/icons/c3.png",
    category = "MiningStation-3",
    energy_required = 80,
    subgroup = "ms-crafting",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="hydrogen",amount= 25},
		{"ms-d-class3",1},
    },
    results = 
    {
      {type="item", name="copper-ore", amount_min=1, amount_max=2, probability=0.4},
	  {type="item", name="tin-ore", amount_min=1, amount_max=2, probability=0.4},
	  {type="item", name="quartz", amount_min=1, amount_max=2, probability=0.3},
	  {type="item", name="silver-ore", amount_min=1, amount_max=3, probability=0.4},
	  {type="item", name="cobalt-ore", amount_min=1, amount_max=3, probability=0.2},
	  {type="item", name="bauxite-ore", amount_min=2, amount_max=6, probability=0.6},
	}
  },
  { type = "recipe",
    name = "mining-crystal",
    icon = "__MiningStation__/graphics/icons/cs.png",
    category = "MiningStation-3",
    energy_required = 80,
    subgroup = "ms-crafting",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="hydrogen",amount= 25},
		{"ms-d-class3",1},
    },
    results = 
    {
      {type="item", name="stone", amount_min=1, amount_max=2, probability=0.2},
	  {type="item", name="crystal", amount_min=1, amount_max=5, probability=0.5},
	  {type="item", name="diamond-ore", amount_min=1, amount_max=1, probability=0.1},
	  {type="item", name="topaz-ore", amount_min=1, amount_max=1, probability=0.2},
	  {type="item", name="emerald-ore", amount_min=1, amount_max=1, probability=0.3},
	  {type="item", name="amethyst-ore", amount_min=1, amount_max=1, probability=0.35},
	  {type="item", name="sapphire-ore", amount_min=1, amount_max=1, probability=0.4},
	  {type="item", name="ruby-ore", amount_min=1, amount_max=1, probability=0.5},
	}
  },
  { type = "recipe",
    name = "mining-class-4",
    icon = "__MiningStation__/graphics/icons/c4.png",
    category = "MiningStation-4",
    energy_required = 120,
    subgroup = "ms-crafting",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="hydrogen",amount= 40},
		{"ms-d-class4",1},
    },
    results = 
    {
      {type="item", name="iron-ore", amount_min=1, amount_max=3, probability=0.2},
	  {type="item", name="copper-ore", amount_min=1, amount_max=3, probability=0.2},
	  {type="item", name="tungsten-ore", amount_min=1, amount_max=2, probability=0.4},
	  {type="item", name="rutile-ore", amount_min=2, amount_max=6, probability=0.6},
	  {type="item", name="cobalt-ore", amount_min=1, amount_max=3, probability=0.2},
	  {type="item", name="ardite-ore", amount_min=1, amount_max=3, probability=0.1},
	}
  },
}
)
data:extend(
{
  { type = "recipe",
    name = "mining-station-1",
    category = "crafting",
    energy_required = 20,
    subgroup = "a-MiningStation",
	enabled = false,
    ingredients =
    {
		{"assembling-machine-1", 2},
		{"basic-mining-drill", 4},
		{"pipe", 50},
		{"frame-1", 10},
		{"basic-circuit-board", 40},
		{"rotor-1", 10},
		
		
    },
    result = "miningstation-1"
  },
  { type = "recipe",
    name = "mining-station-2",
    category = "crafting",
    energy_required = 30,
    subgroup = "a-MiningStation",
	enabled = false,
    ingredients =
    {
		{"miningstation-1", 1},
		{"brass-pipe", 50},
		{"assembling-machine-2", 2},
		{"basic-mining-drill-mk2", 4},
		{"item-exit-1", 4},
		{"frame-1", 20},
		{"electronic-circuit", 40},
		{"rotor-1", 20},
    },
    result = "miningstation-2"
  },
  { type = "recipe",
    name = "mining-station-3",
    category = "crafting",
    energy_required = 40,
    subgroup = "a-MiningStation",
	enabled = false,
    ingredients =
    {
		{"miningstation-2", 1},
		{"tungsten-pipe", 50},
		{"assembling-machine-3", 2},
		{"basic-mining-drill-mk3", 4},
		{"item-exit-2", 4},
		{"frame-2", 20},
		{"advanced-circuit", 40},
		{"rotor-2", 20},
    },
    result = "miningstation-3"
  },
  { type = "recipe",
    name = "mining-station-4",
    category = "crafting",
    energy_required = 50,
    subgroup = "a-MiningStation",
	enabled = false,
    ingredients =
    {
		{"miningstation-3", 1},
		{"ceramic-pipe", 50},
		{"assembling-machine-4", 2},
		{"basic-mining-drill-mk4", 4},
		{"item-exit-3", 4},
		{"frame-3", 20},
		{"processing-unit", 40},
		{"rotor-3", 20},
    },
    result = "miningstation-4"
  },
  { type = "recipe",
    name = "mining-station-5",
    category = "crafting",
    energy_required = 50,
    subgroup = "a-MiningStation",
	enabled = false,
    ingredients =
    {
		{"miningstation-4", 1},
		{"tungsten-pipe", 50},
		{"ceramic-pipe", 50},
		{"assembling-machine-8", 2},
		{"basic-mining-drill-mk6", 2},
		{"item-exit-4", 4},
		{"frame-4", 20},
		{"advanced-processing-unit", 40},
		{"alva", 25},
		{"rotor-4", 20},
    },
    result = "miningstation-5"
  },
  
  { type = "recipe",
    name = "mining-oil",
    category = "MiningStation-3",
    energy_required = 10,
    subgroup = "ms-fluid",
	enabled = false,
    ingredients =
    {
		{type = "fluid", name="hydrogen",amount= 25},
		{"ms-d-oil",1},
    },
     results =
    {
      {type="fluid", name="crude-oil", amount=10},
    },
  },
  { type = "recipe",
    name = "mining-lava",
    category = "MiningStation-4",
    energy_required = 10,
    subgroup = "ms-fluid",
	enabled = false,
    ingredients =
    {
	    {type = "fluid", name="hydrogen",amount= 50},
		{"ms-d-lava",1},
    },
     results =
    {
      {type="fluid", name="lava-600", amount=10},
    },
  },
}
)
