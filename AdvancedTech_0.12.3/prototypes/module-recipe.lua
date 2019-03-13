data.raw["lab"]["lab-module"].inputs =
    {
      "module-case",
      "module-circuit-board",
      "b1-1",
	  "b1-2",
	  "b1-3",
	  "b1-4",
	  "b1-5",
   }
data.raw["lab"]["lab-module-2"].inputs =
    {
      "module-case",
      "module-circuit-board",
      "b2-1",
	  "b2-2",
	  "b2-3",
	  "b2-4",
	  "b2-5",
   }
data.raw["lab"]["lab-module-3"].inputs =
    {
      "module-case",
      "module-circuit-board",
      "b3-1",
	  "b3-2",
	  "b3-3",
	  "b3-4",
	  "b3-5",
   }
local a = false;
local b = false;
data:extend({
  {
	type = "recipe",
	name = "rare-netural-essence",
	category = "electrolysis",
	icon = "__AdvancedTech__/graphics/icons/module/rare-netural-essence.png",
	energy_required = 2,
	subgroup = "at-m3",
	order = "a-a-a",
	enabled = b,
	ingredients = {
		{"raw-wood", 1},
		{type = "fluid",name = "crude-oil",amount = 2},
		{type = "fluid",name = "clean-water", amount = 25},
	},
	results = {
		{type="fluid", name="rare-netural-essence", amount_min=1, amount_max=1, probability=0.1},
		{type="fluid", name="light-oil", amount = 2},
	}
  },
  {
	type = "recipe",
	name = "essence-processor",
	category = "electronics-machine",
	energy_required = 5,
	enabled = b,
	ingredients = {
		{"netural-processor", 1},
		{"processing-electronics", 1},
		{"solder", 1},
		{type = "fluid", name = "rare-netural-essence",amount = 2},
		
	},
	result = "essence-processor",
  },
  {
	type = "recipe",
	name = "quantum-case",
	category = "electronics-machine",
	enabled = false,
	ingredients = {
		{type = "fluid", name = "molten-tungsten", amount = 1.2},
		{"mold-circuit", 1},
		{"flux-capacitor-4", 1},
		{"glass",6},
		{"silver-cable", 3},
		{"fibreglass-board", 2},
	},
	result = "quantum-case"
  },
  
})
data:extend(
{
  {
	type = "recipe",
    name = "oli",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"spectrum-electronic-unit",3},
		{"circuit-board",2},
		{"advanced-circuit", 1},
		{"gold-plate", 3}
    },
    result = "oli",
	result_count = 3,
  },
  {
	type = "recipe",
    name = "pzs",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"netural-processor",3},
		{"oli", 1},
		{"superior-circuit-board",2},
		{"processing-unit", 1},
		{"aluminium-plate", 3}
    },
    result = "pzs",
	result_count = 3,
  },
  {
	type = "recipe",
    name = "cpy",
    category = "electronics-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"essence-processor",3},
		{"pzs", 1},
		{"multi-layer-circuit-board",2},
		{"advanced-processing-unit", 1},
		{"tungsten-plate", 3}
    },
    result = "cpy",
	result_count = 3,
  },
}
)

--class 1
data:extend
(
{
{
	type = "recipe",
    name = "b1-1",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"oli",5},
		{"science-pack-1",2},
		{"science-pack-2",1},
		{"effectivity-processor",5},
    },
    result = "b1-1",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b1-2",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"oli",5},
		{"science-pack-1",2},
		{"science-pack-2",1},
		{"pollution-clean-processor",5},
    },
    result = "b1-2",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b1-3",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"oli",5},
		{"science-pack-1",2},
		{"science-pack-2",1},
		{"pollution-create-processor",5},
    },
    result = "b1-3",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b1-4",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"oli",5},
		{"science-pack-1",2},
		{"science-pack-2",1},
		{"productivity-processor",5},
    },
    result = "b1-4",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b1-5",
    category = "electronics-machine",
    energy_required = 4,
	enabled = a,
    ingredients =
    {
		{"oli",5},
		{"science-pack-1",2},
		{"science-pack-2",1},
		{"speed-processor",5},
    },
    result = "b1-5",
	result_count = 5,
  },
}
)
--class 2
data:extend
(
{
{
	type = "recipe",
    name = "b2-1",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"pzs",5},
		{"science-pack-1",3},
		{"science-pack-2",2},
		{"science-pack-3",1},
		{"effectivity-processor-2",5},
    },
    result = "b2-1",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b2-2",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"pzs",5},
		{"science-pack-1",3},
		{"science-pack-2",2},
		{"science-pack-3",1},
		{"pollution-clean-processor-2",5},
    },
    result = "b2-2",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b2-3",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"pzs",5},
		{"science-pack-1",3},
		{"science-pack-2",2},
		{"science-pack-3",1},
		{"pollution-create-processor-2",5},
    },
    result = "b2-3",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b2-4",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"pzs",5},
		{"science-pack-1",3},
		{"science-pack-2",2},
		{"science-pack-3",1},
		{"productivity-processor-2",5},
    },
    result = "b2-4",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b2-5",
    category = "electronics-machine",
    energy_required = 8,
	enabled = a,
    ingredients =
    {
		{"pzs",5},
		{"science-pack-1",3},
		{"science-pack-2",2},
		{"science-pack-3",1},
		{"speed-processor-2",5},
    },
    result = "b2-5",
	result_count = 5,
  },
}
)

--class 3
data:extend
(
{
{
	type = "recipe",
    name = "b3-1",
    category = "electronics-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"cpy",5},
		{"science-pack-1",4},
		{"science-pack-2",3},
		{"science-pack-3",2},
		{"science-pack-4",1},
		{"effectivity-processor-3",5},
    },
    result = "b3-1",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b3-2",
    category = "electronics-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"cpy",5},
		{"science-pack-1",4},
		{"science-pack-2",3},
		{"science-pack-3",2},
		{"science-pack-4",1},
		{"pollution-clean-processor-3",5},
    },
    result = "b3-2",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b3-3",
    category = "electronics-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"cpy",5},
		{"science-pack-1",4},
		{"science-pack-2",3},
		{"science-pack-3",2},
		{"science-pack-4",1},
		{"pollution-create-processor-3",5},
    },
    result = "b3-3",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b3-4",
    category = "electronics-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"cpy",5},
		{"science-pack-1",4},
		{"science-pack-2",3},
		{"science-pack-3",2},
		{"science-pack-4",1},
		{"productivity-processor-3",5},
    },
    result = "b3-4",
	result_count = 5,
  },
  {
	type = "recipe",
    name = "b3-5",
    category = "electronics-machine",
    energy_required = 16,
	enabled = a,
    ingredients =
    {
		{"cpy",5},
		{"science-pack-1",4},
		{"science-pack-2",3},
		{"science-pack-3",2},
		{"science-pack-4",1},
		{"speed-processor-3",5},
    },
    result = "b3-5",
	result_count = 5,
  },
}
)