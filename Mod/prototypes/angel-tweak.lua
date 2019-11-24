
if data.raw.technology["ore-crushing"] then
  data.raw.technology["ore-crushing"].unit = {
      count = 5,
      ingredients = {
        {momoTweak.sci1, 1},
      },
      time = 15
    }
end

if data.raw.item["solid-sand"] then data.raw.item["solid-sand"].stack_size = 1000 end
if data.raw.item["solid-clay"] then data.raw.item["solid-clay"].stack_size = 500 end
if data.raw.item["solid-mud"] then data.raw.item["solid-mud"].stack_size = 500 end

data.raw.item["glass"].stack_size = 300 

momoTweak.replace_with_ingredient("seafloor-pump", momoTweak.ele.unit[1], {momoTweak.ele.circuit[1], 4})
momoTweak.replace_with_ingredient("washing-plant", momoTweak.ele.unit[1], {momoTweak.ele.circuit[1], 4})
momoTweak.replace_with_ingredient("seafloor-pump", "steel-plate", {"iron-plate", 6})
momoTweak.replace_with_ingredient("washing-plant", "steel-plate", {"iron-plate", 12})

function momoTweak.ReworkAngelIndGroup() 
	if mods["angelsindustries"] then
		for i, subG in pairs(data.raw["item-subgroup"]) do
			local moved = false
			for k, group in pairs({"angels-logistics", "angels-components", "angels-tech", "angels-enhancement"}) do
				if subG.group == group then
					subG.group = "bob-logistics"
					subG.order = "zzz-zz"
					goto done
				end
			end
			::done::
		end
	end
end

function momoTweak.angelChemPlanTweak()
	for i, m in pairs({"angels-chemical-plant", "angels-chemical-plant-2", "angels-chemical-plant-3", "angels-chemical-plant-4"}) do
		if data.raw["assembling-machine"][m] then
			data.raw["assembling-machine"][m].fluid_boxes = {}
		end
	end
	
	if data.raw.item["bob-valve"] then
		bobmods.lib.recipe.replace_ingredient("angels-chemical-plant", "pipe", "bob-valve")
	end
end

function momoTweak.ReworkPressureTank()
	if (data.raw["storage-tank"]["angels-pressure-tank-1"]) then
		momoTweak.replace_with_ingredient("angels-pressure-tank-1", "steel-plate", {"steel-plate", 50})
		momoTweak.replace_with_ingredient("angels-pressure-tank-1", "stone-brick", {"stone-brick", 70})
		bobmods.lib.recipe.add_ingredient("angels-pressure-tank-1", {momoTweak.ele.circuit[1], 20})
		if (settings.startup["momo-enable-bob-extend-frame"].value) then
			bobmods.lib.recipe.add_ingredient("angels-pressure-tank-1", {"basic-structure-components", 4})
		end
	end
	data.raw["storage-tank"]["angels-storage-tank-1"].fluid_box.base_area = 600
	data.raw["storage-tank"]["angels-storage-tank-2"].fluid_box.base_area = 400
	data.raw["storage-tank"]["angels-storage-tank-3"].fluid_box.base_area = 100
end

local function setFluid(fluid, fuel, emissions)
	data.raw.fluid[fluid].fuel_value = fuel
	data.raw.fluid[fluid].emissions_multiplier = emissions
end

function momoTweak.angelChemFluidPower()
	setFluid("light-oil", "1.5MJ", 2)
	-- data.raw.fluid["light-oil"].fuel_value = "1.5MJ" --"3MJ"
	-- data.raw.fluid["light-oil"].emissions_multiplier = 2
	-- data.raw.fluid["heavy-oil"].fuel_value = "1MJ" --"2MJ"
	-- data.raw.fluid["heavy-oil"].emissions_multiplier = 3
	-- data.raw.fluid["petroleum-gas"].fuel_value = "2.3MJ" --"4.6MJ"
end


