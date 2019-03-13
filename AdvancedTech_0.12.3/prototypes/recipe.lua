
local a = false;
data:extend(
{
  {
	type = "recipe",
    name = "electromagnet-coil",
    category = "crafting",
    energy_required = 1,
	enabled = true,
    ingredients =
    {
		{"copper-cable",1},
		{"copper-plate",1},
    },
    result = "electromagnet-coil"
  },
  {
	type = "recipe",
    name = "coal-cube",
    category = "crafting",
    energy_required = 1,
	enabled = true,
    ingredients =
    {
		{"coal",2},
    },
    result = "coal-cube",
  },
  {
	type = "recipe",
    name = "electromagnet-power-box",
    category = "crafting",
    energy_required = 1,
	enabled = true,
    ingredients =
    {
		{"stone-gear-wheel",2},
		{"coal-cube",1},
		{"iron-plate", 1},
    },
    result = "electromagnet-power-box",
  }
}
)

--sc2
data:extend(
{
  {
	type = "recipe",
    name = "basic-infaturctation",
    category = "crafting-machine",
    energy_required = 2,
	enabled = a,
    ingredients =
    {
		{"basic-transport-belt",1},
		{"basic-inserter",1},
		{"tin-gear-wheel", 2},
		{"stone-brick", 3},
    },
    result = "basic-infaturctation"
  },
  {
	type = "recipe",
    name = "reactor-node",
    category = "crafting-machine",
    energy_required = 2,
	enabled = a,
    ingredients =
    {
		{"lead-plate",3},
		{"electromagnet-power-box", 1},
		{"electromagnet-coil", 3},
    },
    result = "reactor-node",
	result_count = 2
  },
  {
	type = "recipe",
    name = "spectrum-electronic-unit",
    category = "electronics-machine",
    energy_required = 2,
	enabled = a,
    ingredients =
    {
		{"basic-circuit-board",2},
		{"electronic-circuit",1},
		{"resin", 1},
		{"solder", 2},
    },
    result = "spectrum-electronic-unit",
	result_count = 3
  },
  {
	type = "recipe",
    name = "spectrum-control-system",
    category = "electronics-machine",
    energy_required = 2,
	enabled = a,
    ingredients =
    {
		{"spectrum-electronic-unit",2},
		{"tin-plate",1},
		{"tinned-copper-cable", 3},
		{"basic-electronic-components", 2}
    },
    result = "spectrum-control-system",
  }
}
)

--sc3

data:extend(
{
  {
	type = "recipe",
    name = "accelerator-coil",
    category = "crafting-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"lead-steel-alloy",6},
		{"reactor-node",3},
    },
    result = "accelerator-coil",
	result_count = 2
  },
  {
	type = "recipe",
    name = "relocator",
    category = "crafting-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"accelerator-coil",8},
		{"zinc-plate", 16},
		{"smart-inserter", 1}
    },
    result = "relocator",
	result_count = 6
  },
  {
	type = "recipe",
    name = "gas-pack",
    category = "chemistry",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"hydrogen-canister",4},
		{"hydrogen-chloride-canister", 1},
		{type = "fluid", name="sulfur-dioxide",amount=5},
		{type = "fluid", name="nitrogen-dioxide",amount=2},
		{"zinc-plate", 2},
    },
    result = "gas-pack",
	result_count = 1
  },
  {
	type = "recipe",
    name = "silver-electromagnet-coil",
    category = "crafting-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"electromagnet-coil",2},
		{"silver-cable",3},
		{"gold-plate", 2},
    },
    result = "silver-electromagnet-coil",
	result_count = 2
  },
  {
	type = "recipe",
    name = "plasma-cooler-pack",
    category = "crafting-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"silver-electromagnet-coil",2},
		{"brass-axe",1},
		{"battery", 1},
    },
    result = "plasma-cooler-pack",
  },
  {
	type = "recipe",
    name = "locator-control-unit",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"spectrum-electronic-unit",3},
		{"circuit-board",2},
		{"advanced-circuit", 1},
		{"electronic-components",5},
		{"silicon-wafer", 21},
    },
    result = "locator-control-unit",
	result_count = 3
  }
}
)

--sc4

data:extend(
{
  {
	type = "recipe",
    name = "atomic-emission-point",
    category = "crafting-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"accelerator-coil",5},
		{"reactor-node",4},
		{"titanium-axe", 1},
		{"silicon-nitride", 2},
		{"cobalt-plate", 6},
    },
    result = "atomic-emission-point",
	result_count = 2
  },
  {
	type = "recipe",
    name = "atomic-manipulator",
    category = "crafting-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"silver-electromagnet-coil",3},
		{"electrum-alloy", 2},
		{"lithium-ion-battery", 1},
		{"express-transport-belt", 1}
    },
    result = "atomic-manipulator",
  },
  {
	type = "recipe",
    name = "atomic-control-unit",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"spectrum-electronic-unit",6},
		{"superior-circuit-board",2},
		{"intergrated-electronics", 5},
		{"processing-unit", 1},
		{"alumina", 6},
    },
    result = "atomic-control-unit",
	result_count = 3
  },
  {
	type = "recipe",
    name = "uranium",
    category = "chemistry",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"electrum-alloy", 4},
		{"iron-oxide", 2},
		{"lead-oxide", 2},
		{"cobalt-oxide", 2},
		{type = "fluid", name="hydrogen",amount=10},
		{"sulfur", 3}
    },
    result = "uranium",
	result_count = 2
  },
  {
	type = "recipe",
    name = "atomic-fusion-reactor",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
	    {"silver-electromagnet-coil",3},
		{"spectrum-electronic-unit",2},
		{"relocator", 1},
		{"uranium",1},
		{"reactor-node",4},
		{"invar-alloy", 2},
    },
    result = "atomic-fusion-reactor",
  },
}
)

--ali

data:extend(
{
  {
	type = "recipe",
    name = "bio-processor",
    category = "crafting-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"advanced-circuit",1},
		{"circuit-board", 2},
		{"alien-artifact", 24},
    },
    result = "bio-processor",
	result_count = 3
  },
  {
	type = "recipe",
    name = "netural-liquid",
    category = "chemistry",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{type = "fluid", name="tf-biomass",amount=3},
		{"raw-wood", 4},
    },
    results = {
		{type = "fluid", name="netural-liquid",amount=2},
	},
  },
  {
	type = "recipe",
    name = "netural-processor",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"spectrum-electronic-unit",1},
		{type = "fluid", name="netural-liquid",amount = 2},
		{"resin", 2},
    },
    result = "netural-processor",
  },
}
)
