
function momoPyTweak.compatibility.SpaceEx()
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

		ReplaceItem("drydock-assembly", "processing-unit", "intelligent-unit", 50)
		ReplaceItem("space-thruster",   "processing-unit", "intelligent-unit", 25)
		ReplaceItem("fuel-cell",        "processing-unit", "intelligent-unit", 25)
		ReplaceItem("habitation",       "processing-unit", "intelligent-unit", 25)
		ReplaceItem("life-support",     "processing-unit", "intelligent-unit", 25)
		ReplaceItem("command",          "processing-unit", "intelligent-unit", 25)
		ReplaceItem("astrometrics",     "processing-unit", "intelligent-unit", 75)
		ReplaceItem("ftl-drive",        "processing-unit", "intelligent-unit", 125)


		local function AddIngredient(recipeName, refItem, ingredient, increaseFactor, defaultAmount)
			local amount = defaultAmount
			local ing = GetIng(recipeName, refItem)
			if (ing) then
				amount = math.floor(ing.amount * increaseFactor)
			end
			
			momoIRTweak.recipe.SaveAddIngredient(recipeName, ITEM(ingredient, amount))
		end

		AddIngredient("habitation", "steel-plate", "biopolymer", 3, 100)
		AddIngredient("habitation", "intelligent-unit", "kondo-processor", 3, 75)
		AddIngredient("habitation", "", "automated-factory-mk04", 1, 1)
				
		AddIngredient("hull-component", "steel-plate", "biopolymer", 5, 100)
		AddIngredient("hull-component", "steel-plate", "super-alloy", 1, 50)
		
		AddIngredient("life-support", "pipe", "super-alloy", 1, 200)
		AddIngredient("life-support", "intelligent-unit", "kondo-processor", 4, 100)
		AddIngredient("life-support", "", "automated-factory-mk04", 1, 2)
		
		AddIngredient("ftl-drive", "low-density-structure", "superconductor-servomechanims", 1, 100)
		AddIngredient("ftl-drive", "low-density-structure", "quantum-vortex-storage-system", 1, 250)
		AddIngredient("ftl-drive", "intelligent-unit", "kondo-processor", 6, 125 * 6)
		AddIngredient("ftl-drive", "", "quantum-computer", 1, 1)
		
		AddIngredient("astrometrics", "low-density-structure", "quantum-vortex-storage-system", 1, 100)
		AddIngredient("astrometrics", "intelligent-unit", "kondo-processor", 6, 75 * 6)
		AddIngredient("astrometrics", "", "particle-accelerator-mk04", 1, 2)
		AddIngredient("astrometrics", "", "quantum-computer", 1, 2)
		
		AddIngredient("command", "low-density-structure", "quantum-vortex-storage-system", 1, 100)
		AddIngredient("command", "intelligent-unit", "kondo-processor", 5, 250)
		AddIngredient("command", "", "nano-assembler-mk04", 1, 1)
		AddIngredient("command", "", "quantum-computer", 1, 1)
		
		AddIngredient("space-thruster", "low-density-structure", "quantum-vortex-storage-system", 1, 100)
			
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
	end
end
