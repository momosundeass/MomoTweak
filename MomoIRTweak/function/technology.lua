if not momoIRTweak.technology then momoIRTweak.technology = {} end


function momoIRTweak.DumpTechnologies()
	momoIRTweak.dumpRecipesText = "Technology dump \n"
	for	i, r in pairs(data.raw.technology) do
		momoIRTweak.DumpTable(r)
		momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n"
	end
	momoIRTweak.Log(momoIRTweak.dumpText)
end

function momoIRTweak.technology.FindFromRecipe(recipeName)
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

function momoIRTweak.technology.FindAllFromRecipe(recipeName)
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

function momoIRTweak.technology.AddUnitCount(technologyName, addAmount)
	if (data.raw.technology[technologyName]) then
		local data = data.raw.technology[technologyName]
		data.unit.count = data.unit.count + addAmount
	else
		momoIRTweak.Log("no technology with name to add unit : " .. tostring(technologyName))
	end
end

function momoIRTweak.technology.AddUnlockEffect(technologyName, recipeName, overrideEnabled)
	if (data.raw.technology[technologyName]) then
		table.insert(data.raw.technology[technologyName].effects, {
			type = "unlock-recipe",
			recipe = recipeName
		})
		return true
	else
		if overrideEnabled == nil then overrideEnabled = true end
		if overrideEnabled then
			momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe) 
				recipe.enabled = true
			end)
		end
		momoIRTweak.Log("no technology with name to add unlock : " .. tostring(technologyName) .. "\n recipe name with be enabled : " .. recipeName)
		return false
	end
end

function momoIRTweak.technology.RemoveUnlockEffect(technologyName, recipeName)
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
		momoIRTweak.Log("no technology with name to remove unlock : " .. tostring(technologyName))
	end
	return false
end

function momoIRTweak.technology.HasIngredient(technology, ingredientToCheck)
	local technologyName = momoIRTweak.GetName(technology)
	local tech = data.raw.technology[technologyName]
	
	if (tech) then
		for index, ingredient in pairs(tech.unit.ingredients) do
			if (ingredient[1] == ingredientToCheck) then
				return true
			end
		end
	else
		momoIRTweak.Log("no technology with name to check ingredient : " .. tostring(technologyName))
		return false
	end
	
	return false
end

function momoIRTweak.technology.ReplaceIngredient(technology, tableMapping)
	local technologyName = momoIRTweak.GetName(technology)
	local tech = data.raw.technology[technologyName]
	
	if (tech) then
		for _, ingredient in pairs(tech.unit.ingredients) do
			local name = ingredient[1]
			
			if tableMapping[name] then
				local replacer = tableMapping[name]
				local oldAmount = 0
				
				if (momoIRTweak.technology.HasIngredient(technology, replacer)) then
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
		momoIRTweak.Log("no technology with name to replace ingredients : " .. tostring(technologyName))
		
		return false
	end
end

function momoIRTweak.technology.ClonePrototype(technologyName, newName)
	if (data.raw.technology[technologyName]) then
		local tech = momoIRTweak.DeepCopy(data.raw.technology[technologyName])
		tech.name = newName
		return tech
	else
		momoIRTweak.Log("no technology with name to clone : " .. tostring(technologyName))
		return false
	end
end

function momoIRTweak.technology.SetPrerequire(technology, prerequireTable)
	if (type(technology) == "table") then
		technology.prerequisites = prerequireTable
	else
		error("technology.SetPrerequire need table got " .. type(techonlogy))
	end
end

function momoIRTweak.technology.SetUnit(technology, ingredientsTable, timeUse, count)
	if (type(technology) == "table") then
		technology.unit = {}
		technology.unit.count = count
		technology.unit.time = timeUse
		technology.unit.ingredients = ingredientsTable
	else
		error("technology.SetUnit need table got " .. type(techonlogy))
	end
end

function momoIRTweak.technology.ClearEffects(technology)
	if (type(technology) == "table") then
		technology.effects = {}
	else
		error("technology.SetUnit need table got " .. type(techonlogy))
	end
end


















