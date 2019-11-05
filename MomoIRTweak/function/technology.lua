function momoIRTweak.DumpTechnologies()
	momoIRTweak.dumpRecipesText = "Technology dump \n"
	for	i, r in pairs(data.raw.technology) do
		momoIRTweak.PrintTable(r)
		momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n"
	end
	log("MIRTL => " .. momoIRTweak.dumpText)
end

function momoIRTweak.FindTechnologyFromRecipe(recipeName)
	for i, t in pairs(data.raw.technology) do
		if (t.effects) then
			for j, e in pairs(t.effects) do
				if (e.type == "unlock-recipe") then
					if (e.recipe == recipeName) then
						return i
					end
				end
			end
		end
	end
end

function momoIRTweak.FindTechnologiesFromRecipe(recipeName)
	local results = {}
	for i, t in pairs(data.raw.technology) do
		if (t.effects) then
			for j, e in pairs(t.effects) do
				if (e.type == "unlock-recipe") then
					if (e.recipe == recipeName) then
						table.insert(results, i)
					end
				end
			end
		end
	end
	return results
end

function momoIRTweak.AddUnlockEffect(technologyName, recipeName)
	if (data.raw.technology[technologyName]) then
		table.insert(data.raw.technology[technologyName].effects, {
			type = "unlock-recipe",
			recipe = recipeName
		})
	else
		log ("MIRTL => no technology with name to add unlock : " .. tostring(technologyName))
	end
end

function momoIRTweak.RemoveUnlockRecipeEffect(technologyName, recipeName)
	if (data.raw.technology[technologyName]) then
		for i, e in pairs(data.raw.technology[technologyName].effects) do
			if (e.type == "unlock-recipe") then
				if (e.recipe == recipeName) then
					data.raw.technology[technologyName].effects[i] = nil
					return true
				end
			end
		end
	else
		log ("MIRTL => no technology with name to remove unlock : " .. tostring(technologyName))
	end
	return false
end

function momoIRTweak.IsTechnologyHasIngredient(technology, ingredientToCheck)
	local technologyName = momoIRTweak.GetName(technology)
	local tech = data.raw.technology[technologyName]
	
	if (tech) then
		for index, ingredient in pairs(tech.unit.ingredients) do
			if (ingredient[1] == ingredientToCheck) then
				return true
			end
		end
	else
		log ("MIRTL => no technology with name to check ingredient : " .. tostring(technologyName))
		return false
	end
	
	return false
end

function momoIRTweak.ReplaceUnitIngredientsWith(technology, tableMapping)
	local technologyName = momoIRTweak.GetName(technology)
	local tech = data.raw.technology[technologyName]
	
	if (tech) then
		for _, ingredient in pairs(tech.unit.ingredients) do
			local name = ingredient[1]
			
			if tableMapping[name] then
				local replacer = tableMapping[name]
				local oldAmount = 0
				
				if (momoIRTweak.IsTechnologyHasIngredient(technology, replacer)) then
					for index, unitIngredient in pairs(tech.unit.ingredients) do
						if (unitIngredient[1] == replacer) then
							oldAmount = oldAmount + unitIngredient[2]
							tech.unit.ingredients[index] = nil
						end
					end	
				end
				
				ingredient[1] = replacer
				ingredient[2] = ingredient[2] + oldAmount				
			end
		end
		
		return true
	else
		log ("MIRTL => no technology with name to replace ingredients : " .. tostring(technologyName))
		
		return false
	end
end
























