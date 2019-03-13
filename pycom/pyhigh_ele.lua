momoTweak.ele.circuit[2] = "pcb2"
momoTweak.ele.comp[5] = "silicon-carbide"

local e = momoTweak.ele

if settings.startup["momo-enable-progress-electronics"].value then

	data:extend({
		{type = "recipe-category", name = "momo_only_bob_electronics" },
		 {type = "recipe-category", name = "momo_py_automate_fac"}
	})

	local function recipe_to_ele (Item) 
		if data.raw.recipe[Item] then
			data.raw.recipe[Item].energy_required = 10 + (data.raw.recipe[Item].energy_required * 2.3)
			data.raw.recipe[Item].category = "momo_only_bob_electronics"	
		else
			log("MTKL no recipe name " .. Item)
		end
	end

	table.insert(data.raw["assembling-machine"]["electronics-machine-1"].crafting_categories, "momo_only_bob_electronics")
	table.insert(data.raw["assembling-machine"]["electronics-machine-2"].crafting_categories, "momo_only_bob_electronics")
	table.insert(data.raw["assembling-machine"]["electronics-machine-3"].crafting_categories, "momo_only_bob_electronics")
	
	local items = {"blanket", "coated-container", "coil-core", "magnetic-core", "nenbit-matrix", "sc-unit", "science-coating"}
	for i, recipe in pairs(items) do
		if data.raw.recipe[recipe] then
			data.raw.recipe[recipe].category = "momo_py_automate_fac"
		end
	end
	table.insert(data.raw["assembling-machine"]["automated-factory"].crafting_categories, "momo_py_automate_fac")

	recipe_to_ele("resistor3")
	recipe_to_ele("paradiamatic-resistor")
	recipe_to_ele("diode3")
	recipe_to_ele("diode-core")
	recipe_to_ele("csle-diode")

	recipe_to_ele("capacitor3")
	recipe_to_ele("supercapacitor")

	recipe_to_ele("inductor3")
	recipe_to_ele("fault-current-inductor")

	recipe_to_ele("processor")
	recipe_to_ele("transistor")
	recipe_to_ele("pi-josephson-junction")
	recipe_to_ele("var-josephson-junction")

	bobmods.lib.recipe.add_ingredient("kondo-core", {momoTweak.ele.unit[3], 2})
end

-- balanced recipe
bobmods.lib.recipe.replace_ingredient("microchip", e.cable[1], e.cable[2])
bobmods.lib.recipe.replace_ingredient("inductor2", e.cable[1], e.cable[2])


