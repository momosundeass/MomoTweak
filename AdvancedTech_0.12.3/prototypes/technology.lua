data:extend(
{   
    {
    type = "technology",
    name = "atech-1",
    icon = "__AdvancedTech__/graphics/icons/spectrum-control-system.png",
    prerequisites =
    {
	    "electronics",
		"steel-processing"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "basic-infaturctation"
		},
		{
			type = "unlock-recipe",
			recipe = "reactor-node"
		},
		{
			type = "unlock-recipe",
			recipe = "spectrum-electronic-unit"
		},
		{
			type = "unlock-recipe",
			recipe = "spectrum-control-system"
		}
    },
    unit =
    {
      count = 300,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "atech-2",
    icon = "__AdvancedTech__/graphics/icons/locator-control-unit.png",
    prerequisites =
    {
		"atech-1",
		"battery",
		"iron-oxide",
		"lead-processing",
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "accelerator-coil"
		},
		{
			type = "unlock-recipe",
			recipe = "relocator"
		},
		{
			type = "unlock-recipe",
			recipe = "silver-electromagnet-coil",
		},
		{
			type = "unlock-recipe",
			recipe = "plasma-cooler-pack",
		},
		{
			type = "unlock-recipe",
			recipe = "locator-control-unit",
		},
		{
			type = "unlock-recipe",
			recipe = "gas-pack",
		},
    },
    unit =
    {
      count = 500,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "atech-a",
    icon = "__AdvancedTech__/graphics/icons/bio-processor.png",
    prerequisites =
    {
		"atech-2",
		"alien-technology"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "netural-processor"
		},
		{
			type = "unlock-recipe",
			recipe = "bio-processor"
		},
		{
			type = "unlock-recipe",
			recipe = "netural-liquid"
		},
    },
    unit =
    {
      count = 500,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
   {
    type = "technology",
    name = "atech-3",
    icon = "__AdvancedTech__/graphics/icons/atomic-control-unit.png",
    prerequisites =
    {
		"atech-2",
		"advanced-research",
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "atomic-emission-point"
		},
		{
			type = "unlock-recipe",
			recipe = "atomic-manipulator"
		},
		{
			type = "unlock-recipe",
			recipe = "atomic-control-unit",
		},
		{
			type = "unlock-recipe",
			recipe = "uranium",
		},
		{
			type = "unlock-recipe",
			recipe = "atomic-fusion-reactor",
		},
    },
    unit =
    {
      count = 800,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
}
)
data:extend(
{
{
    type = "technology",
    name = "atechm-1",
    icon = "__AdvancedTech__/graphics/icons/module/b1-5.png",
    prerequisites =
    {
	    "atech-1",
		"modules",
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "oli"
		},
		{
			type = "unlock-recipe",
			recipe = "b1-1"
		},
		{
			type = "unlock-recipe",
			recipe = "b1-2"
		},
		{
			type = "unlock-recipe",
			recipe = "b1-3"
		},
		{
			type = "unlock-recipe",
			recipe = "b1-4"
		},
		{
			type = "unlock-recipe",
			recipe = "b1-5"
		},
    },
    unit =
    {
      count = 300,
      ingredients = 
      {
        {"science-pack-1", 2},
		{"science-pack-2", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "atechm-2",
    icon = "__AdvancedTech__/graphics/icons/module/b2-5.png",
    prerequisites =
    {
	    "atech-2",
		"atechm-1",
		"atech-a"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "pzs"
		},
		{
			type = "unlock-recipe",
			recipe = "b2-1"
		},
		{
			type = "unlock-recipe",
			recipe = "b2-2"
		},
		{
			type = "unlock-recipe",
			recipe = "b2-3"
		},
		{
			type = "unlock-recipe",
			recipe = "b2-4"
		},
		{
			type = "unlock-recipe",
			recipe = "b2-5"
		},
    },
    unit =
    {
      count = 600,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 2},
		{"science-pack-3", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "atechm-3",
    icon = "__AdvancedTech__/graphics/icons/module/b3-5.png",
    prerequisites =
    {
	    "atech-3",
		"atechm-2"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "rare-netural-essence"
		},
		{
			type = "unlock-recipe",
			recipe = "essence-processor"
		},
		{
			type = "unlock-recipe",
			recipe = "cpy"
		},
		{
			type = "unlock-recipe",
			recipe = "b3-1"
		},
		{
			type = "unlock-recipe",
			recipe = "b3-2"
		},
		{
			type = "unlock-recipe",
			recipe = "b3-3"
		},
		{
			type = "unlock-recipe",
			recipe = "b3-4"
		},
		{
			type = "unlock-recipe",
			recipe = "b3-5"
		},
    },
    unit =
    {
      count = 900,
      ingredients = 
      {
        {"science-pack-1", 4},
		{"science-pack-2", 3},
		{"science-pack-3", 2},
		{"science-pack-4", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "module-components",
    icon = "__AdvancedTech__/graphics/icons/module/nanoreplicator.png",
    prerequisites =
    {
		"modules"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "gold-slided"
		},
		{
			type = "unlock-recipe",
			recipe = "nickel-slided"
		},
		{
			type = "unlock-recipe",
			recipe = "nano-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "titanium-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "tungsten-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "silver-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "zinc-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "aluminium-replicator"
		},
    },
    unit =
    {
      count = 75,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 15
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "module-components-prism",
    icon = "__AdvancedTech__/graphics/icons/module/prism.png",
    prerequisites =
    {
		"module-components",
		"gem-processing-2"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "prism"
		},
		{
			type = "unlock-recipe",
			recipe = "p-nano-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "p-titanium-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "p-tungsten-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "p-silver-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "p-zinc-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "p-aluminium-replicator"
		},
    },
    unit =
    {
      count = 225,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 2},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "module-components-prism-2",
    icon = "__AdvancedTech__/graphics/icons/module/flawless-prism.png",
    prerequisites =
    {
		"module-components-prism",
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "flawless-prism"
		},
		{
			type = "unlock-recipe",
			recipe = "f-nano-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "f-titanium-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "f-tungsten-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "f-silver-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "f-zinc-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "f-aluminium-replicator"
		},
    },
    unit =
    {
      count = 450,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 2},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "module-components-prism-3",
    icon = "__AdvancedTech__/graphics/icons/module/perfect-prism.png",
    prerequisites =
    {
		"module-components-prism-2",
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "perfect-prism"
		},
		{
			type = "unlock-recipe",
			recipe = "c-nano-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "c-titanium-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "c-tungsten-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "c-silver-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "c-zinc-replicator"
		},
		{
			type = "unlock-recipe",
			recipe = "c-aluminium-replicator"
		},
    },
    unit =
    {
      count = 900,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 2},
		{"science-pack-4", 1},
		{"alien-science-pack", 2},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
}
)