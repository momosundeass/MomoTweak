-- cable
local multipler = settings.startup["momo-expensive-wire-electronics"].value
local copperL = "liquid-molten-copper"

if multipler ~= 1 then
momoTweak.multiple_amount_ingredient("copper-cable", "copper-plate", multipler)
	if data.raw.item["angels-wire-coil-copper"] then
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-copper-casting", copperL, multipler)
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-copper-casting-fast", copperL, multipler)
	end
	multipler = multipler * 1.6
	if data.raw.item["angels-wire-coil-gold"] then
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-gold-casting", copperL, multipler)
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-gold-casting-fast", copperL, multipler)
	end

	if data.raw.item["angels-wire-coil-silver"] then
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-silver-casting", copperL, multipler)
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-silver-casting-fast", copperL, multipler)
	end

	if data.raw.item["angels-wire-coil-tin"] then
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-tin-casting", copperL, multipler)
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-tin-casting-fast", copperL, multipler)
	end
end

-- Copper recipe -----------------------------------------------------
if data.raw.fluid[copperL] and multipler > 1 then
	data:extend({
		{
			  type = "recipe",
			  name = "momo-copper-molten-silver",
			  enabled = "false",
			  energy_required = 4,
			  category = "induction-smelting",
			  subgroup = "angels-copper-casting",
			  ingredients = {
				  {"ingot-copper", 12},
				  {"ingot-silver", 12}
			  },
			  results = {
				  {type="fluid", name=copperL, amount=240}
			  }
		},
		{
			  type = "recipe",
			  name = "momo-copper-molten-gold",
			  enabled = "false",
			  energy_required = 4,
			  category = "induction-smelting",
			  subgroup = "angels-copper-casting",
			  ingredients = {
				  {"ingot-copper", 12},
				  {"ingot-gold", 6}
			  },
			  results = {
				  {type="fluid", name=copperL, amount=180}
			  }
		},
	})
	bobmods.lib.tech.add_recipe_unlock("angels-copper-smelting-2", "momo-copper-molten-silver")
	bobmods.lib.tech.add_recipe_unlock("angels-copper-smelting-2", "momo-copper-molten-gold")
	
	if data.raw.item["ingot-magnesium"] then
		data:extend({
			{
				type = "recipe",
				name = "momo-copper-molten-magnesium-tin",
				enabled = "false",
				energy_required = 4,
				category = "induction-smelting",
				subgroup = "angels-copper-casting",
				ingredients = {
					{"ingot-copper", 12},
					{"ingot-tin", 18},
					{"ingot-magnesium", 6}
				},
				results = {
					{type="fluid", name=copperL, amount=360}
				}
			},
			{
				type = "recipe",
				name = "momo-copper-molten-magnesium-gold",
				enabled = "false",
				energy_required = 4,
				category = "induction-smelting",
				subgroup = "angels-copper-casting",
				ingredients = {
					{"ingot-copper", 6},
					{"ingot-gold", 12},
					{"ingot-magnesium", 12}
				},
				results = {
					{type="fluid", name=copperL, amount=300}
				}
			},
	    })
	bobmods.lib.tech.add_recipe_unlock("angels-copper-smelting-3", "momo-copper-molten-magnesium-tin")
	bobmods.lib.tech.add_recipe_unlock("angels-copper-smelting-3", "momo-copper-molten-magnesium-gold")
	end
end

-- Platinum ore -----------------------------------------------------

if data.raw.item["platinum-ore"] then
  data:extend({
    {
          type = "recipe",
          name = "momo-gold-processes-platinum",
          enabled = "false",
          energy_required = 2,
          category = "ore-processing",
          subgroup = "angels-gold",
          ingredients = {
              {"platinum-ore", 4},
              {"gold-ore", 4}
          },
          result = "processed-gold",
          result_count = 5
    }
  })
  bobmods.lib.tech.add_recipe_unlock("angels-gold-smelting-3", "momo-gold-processes-platinum")
end

-- Cobalt Steel --------------------------------s
if data.raw.fluid["liquid-molten-cobalt-steel"] then
  if data.raw.item["ingot-magnesium"] then
    data:extend({
      {
            type = "recipe",
            name = "momo-cobalt-steel",
            enabled = "false",
            energy_required = 4,
            category = "induction-smelting",
            subgroup = "angels-alloys-casting",
            order = "faa",
            ingredients = {
                {"ingot-magnesium", 24},
                {"ingot-steel", 12},
                {"ingot-cobalt", 12}
            },
            results = {{type="fluid", name="liquid-molten-cobalt-steel", amount=360 }}
      }
    })
    bobmods.lib.tech.add_recipe_unlock("angels-cobalt-steel-smelting-1", "momo-cobalt-steel")
  end
  data:extend({
    {
          type = "recipe",
          name = "momo-cobalt-steel-2",
          enabled = "false",
          energy_required = 4,
          category = "induction-smelting",
          subgroup = "angels-alloys-casting",
          order = "fab",
          ingredients = {
              {"ingot-lead", 16},
              {"ingot-steel", 16},
              {"ingot-cobalt", 12}
          },
          results = {{type="fluid", name="liquid-molten-cobalt-steel", amount=360 }}
    }
  })
  bobmods.lib.tech.add_recipe_unlock("angels-cobalt-steel-smelting-1", "momo-cobalt-steel-2")
end