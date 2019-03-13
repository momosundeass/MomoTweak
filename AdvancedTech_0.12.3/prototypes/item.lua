data:extend(
{
  {
    type = "item",
    name = "electromagnet-coil",
    icon = "__AdvancedTech__/graphics/icons/electromagnet-coil.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s1",
    order = "a-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "electromagnet-power-box",
    icon = "__AdvancedTech__/graphics/icons/electromagnet-box.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s1",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "coal-cube",
    icon = "__AdvancedTech__/graphics/icons/coal-cube.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s1",
    order = "a-c",
    stack_size = 200,
	fuel_value = "4.5MJ",
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "basic-infaturctation",
    icon = "__AdvancedTech__/graphics/icons/basic-infaturctation.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s2",
    order = "a-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "spectrum-control-system",
    icon = "__AdvancedTech__/graphics/icons/spectrum-control-system.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s2",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "spectrum-electronic-unit",
    icon = "__AdvancedTech__/graphics/icons/spectrum-electronic-unit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s2",
    order = "a-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "reactor-node",
    icon = "__AdvancedTech__/graphics/icons/reactor-node.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s2",
    order = "a-d",
    stack_size = 200
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "relocator",
    icon = "__AdvancedTech__/graphics/icons/relocator.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s3",
    order = "a-a-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "plasma-cooler-pack",
    icon = "__AdvancedTech__/graphics/icons/plasma-cooler-pack.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s3",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "locator-control-unit",
    icon = "__AdvancedTech__/graphics/icons/locator-control-unit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s3",
    order = "a-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "silver-electromagnet-coil",
    icon = "__AdvancedTech__/graphics/icons/silver-electromagnet-coil.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s3",
    order = "a-d",
    stack_size = 200
  },
  {
    type = "item",
    name = "accelerator-coil",
    icon = "__AdvancedTech__/graphics/icons/accelerator-coil.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s3",
    order = "a-e",
    stack_size = 200
  },
  {
    type = "item",
    name = "gas-pack",
    icon = "__AdvancedTech__/graphics/icons/gas-pack.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s3",
    order = "a-f",
    stack_size = 200
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "atomic-emission-point",
    icon = "__AdvancedTech__/graphics/icons/atomic-emission-point.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s4",
    order = "a-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "atomic-manipulator",
    icon = "__AdvancedTech__/graphics/icons/atomic-manipulator.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s4",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "atomic-control-unit",
    icon = "__AdvancedTech__/graphics/icons/atomic-control-unit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s4",
    order = "a-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "uranium",
    icon = "__AdvancedTech__/graphics/icons/uranium.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s4",
    order = "a-d",
    stack_size = 200
  },
  {
    type = "item",
    name = "atomic-fusion-reactor",
    icon = "__AdvancedTech__/graphics/icons/atomic-fusion-reactor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s4",
    order = "a-e",
    stack_size = 200
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "netural-processor",
    icon = "__AdvancedTech__/graphics/icons/netural-processor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s5",
    order = "a-a",
    stack_size = 200
  },
  {
    type = "item",
    name = "bio-processor",
    icon = "__AdvancedTech__/graphics/icons/bio-processor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-s5",
    order = "a-b",
    stack_size = 200
  },
  {
    type = "item",
    name = "essence-processor",
    icon = "__AdvancedTech__/graphics/icons/module/essence-processor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "at-m3",
    order = "a-a-b",
    stack_size = 200
  },
  {
	type = "fluid",
		name = "rare-netural-essence",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0.1, g=1.0, b=0.1},
		flow_color = {r=0.1, g=1.0, b=0.1},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/module/rare-netural-essence.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "at-m3",
		order = "a-a-a",
  },
  {
		type = "fluid",
		name = "netural-liquid",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0.1, g=0.5, b=0},
		flow_color = {r=0.1, g=0.5, b=0.0},
		max_temperature = 50,
		icon = "__AdvancedTech__/graphics/icons/netural-liquid.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "at-s5",
		order = "a-c",
	}
}
)