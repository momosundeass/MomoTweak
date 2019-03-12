-- check for angel's ref
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

if data.raw.item["glass"] then
	data.raw.item["glass"].stack_size = 300 
end

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


