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
		log ("MIRTL => no technology with name : " .. tostring(technologyName))
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
		log ("MIRTL => no technology with name : " .. tostring(technologyName))
	end
	return false
end