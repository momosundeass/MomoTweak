
function momoIRTweak.compatibility.SpaceX()
	-- drydock-assembly  drydock-structural  
	-- fusion-reactor  hull-component  protection-field  
	-- space-thruster  fuel-cell  habitation  
	-- life-support  command  astrometrics  
	-- ftl-drive
	if (settings.startup["momo-spaceEx"].value) then
		--- using
	
		local ITEM = momoIRTweak.FastItem
		local Repi = momoIRTweak.recipe.ReplaceIngredient
		local AddIng = momoIRTweak.recipe.AddIngredient
		local GetIng = momoIRTweak.recipe.GetIngredient


		local function ReplaceItem(recipeName, targetItem, newItemName, defaultAmount)
			local amount = defaultAmount
			local ing = GetIng(recipeName, targetItem)
			if (ing) then
				amount = math.floor(ing.amount / 4)
			end
			
			Repi(recipeName, targetItem, ITEM(newItemName, amount))
		end

		ReplaceItem("drydock-assembly", "processing-unit", "controller-mk3", 50)
		ReplaceItem("space-thruster",   "processing-unit", "controller-mk3", 25)
		ReplaceItem("fuel-cell",        "processing-unit", "controller-mk3", 25)
		ReplaceItem("habitation",       "processing-unit", "controller-mk3", 25)
		ReplaceItem("life-support",     "processing-unit", "controller-mk3", 25)
		ReplaceItem("command",          "processing-unit", "controller-mk3", 25)
		ReplaceItem("astrometrics",     "processing-unit", "controller-mk3", 75)
		ReplaceItem("ftl-drive",        "processing-unit", "controller-mk3", 125)


		local function AddIngredient(recipeName, refItem, ingredient, increaseFactor, defaultAmount)
			local amount = defaultAmount
			local ing = GetIng(recipeName, refItem)
			if (ing) then
				amount = math.floor(ing.amount * increaseFactor)
			end
			
			momoIRTweak.recipe.SaveAddIngredient(recipeName, ITEM(ingredient, amount))
		end

		AddIngredient("habitation", "steel-plate", "bronze-plate-heavy", 3, 100)
		AddIngredient("habitation", "controller-mk3", "menarite-processor", 3, 75)
		AddIngredient("habitation", "", "ion-probe", 1, 5)
				
		AddIngredient("hull-component", "steel-plate", "bronze-plate-heavy", 5, 100)
		
		AddIngredient("life-support", "pipe", "titanium-bulkhead", 1, 200)
		AddIngredient("life-support", "controller-mk3", "menarite-processor", 4, 100)
		AddIngredient("life-support", "", "ion-probe", 1, 10)
		
		AddIngredient("ftl-drive", "low-density-structure", "duranium-bulkhead", 1, 100)
		AddIngredient("ftl-drive", "controller-mk3", "menarite-processor", 6, 125 * 6)
		
		AddIngredient("astrometrics", "low-density-structure", "duranium-bulkhead", 1, 100)
		AddIngredient("astrometrics", "controller-mk3", "menarite-processor", 6, 75 * 6)
		AddIngredient("astrometrics", "", "impulse-probe", 1, 5)
		
		AddIngredient("command", "low-density-structure", "duranium-bulkhead", 1, 100)
		AddIngredient("command", "controller-mk3", "menarite-processor", 5, 250)
		
		AddIngredient("space-thruster", "low-density-structure", "duranium-bulkhead", 1, 100)
			
		--- replace technology ingredient with k science
		local spaceExTechnologies = {
			"space-assembly",
			"space-construction",
			"space-casings",
			"protection-fields",
			"fusion-reactor",
			"space-thrusters",
			"fuel-cells",
			"habitation",
			"life-support-systems",
			"spaceship-command",
			"astrometrics",
			"ftl-theory-A",
			"ftl-theory-B",
			"ftl-theory-C",
			"ftl-theory-D1",
			"ftl-theory-D2",
			"ftl-propulsion",
		}

		for	i, technology in pairs(spaceExTechnologies) do
			momoIRTweak.technology.ReplaceIngredient(technology, momoIRTweak.science.kMapping)
			
			if (momoIRTweak.technology.HasIngredient(technology, momoIRTweak.science.k3)) then
				table.insert(data.raw.technology[technology].unit.ingredients, {momoIRTweak.science.kMatter, 3})
			end
		end
	end
end
