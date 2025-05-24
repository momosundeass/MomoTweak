local funcs = {}

function funcs.AddRecipe(name, recipeName)
	MomoLib.GetTechnology(name, function(proto)
		if proto.effects == nil then return end
		
		proto.effects[#proto.effects + 1] = {type = "unlock-recipe", recipe = recipeName}
	end)
end

function funcs.RemoveRecipe(name, recipeName)
	MomoLib.GetTechnology(name, function(proto)
		if proto.effects == nil then return end
		
		for i, eff in pairs(proto.effects) do
			if eff.type == "unlock-recipe" and eff.recipe == recipeName then
				table.remove(proto.effects, i)
			return end
		end
	end)
end

function funcs.RemoveAllRecipe(recipeName)
	for _, t in pairs(data.raw.technology) do
		if t.effects == nil then goto continue end
		for i, eff in pairs(t.effects) do
			if eff.type == "unlock-recipe" and eff.recipe == recipeName then
				table.remove(t.effects, i)
			return end
		end
		::continue::
	end	
end

function funcs.AddRequired(name, required)
	MomoLib.GetTechnology(name, function(proto)
		if MomoLib.GetTechnology(required, nil) then
			table.insert(proto.prerequisites, required)
		end
	end)
end

function funcs.SetRequired(name, requires)
	MomoLib.GetTechnology(name, function(proto)
		requires = MomoLib.ToTable(requires)
		local newReqs = {}
		for _, t in pairs(requires) do
			if MomoLib.GetTechnology(t, nil) then
				table.insert(newReqs, t)
			end
		end
		proto.prerequisites = newReqs
	end)
end

MomoLib.technology = funcs