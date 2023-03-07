local AddIng = momoIRTweak.recipe.SafeAddIngredient
local Replace = momoIRTweak.recipe.ReplaceIngredient
local SetIngredients = momoIRTweak.recipe.ReplaceAllIngredient
local Remove = momoIRTweak.recipe.RemoveIngredient
local ITEM = momoIRTweak.FastItem

local belts = {
	"transport-belt",
	"ultra-fast-belt",
	"extreme-fast-belt",
	"fast-transport-belt",
	"ultra-express-belt",
	"extreme-express-belt",
	"express-transport-belt",
	"ultimate-belt"
}
local splitters = {
	"splitter",
	"ultra-fast-splitter",
	"extreme-fast-splitter",
	"fast-splitter",
	"ultra-express-splitter",
	"extreme-express-splitter",
	"express-splitter",
	"original-ultimate-splitter"
}
local uBelts = {
	"underground-belt",
	"ultra-fast-underground-belt",
	"extreme-fast-underground-belt",
	"fast-underground-belt",
	"ultra-express-underground-belt",
	"extreme-express-underground-belt",
	"express-underground-belt",
	"original-ultimate-underground-belt"
}
local originalBelts = {
	"transport-belt",
	"fast-transport-belt",
	"express-transport-belt",
	"ultra-fast-belt",
	"extreme-fast-belt",
	"ultra-express-belt",
	"extreme-express-belt",
	"ultimate-belt"
}
	
local speed = {}
	
local function DisableTechnology(tech) 
	local prototype = data.raw.technology[tech]
	prototype.enabled = false
	prototype.hidden = true
	prototype.valid = false
	prototype.effect = {}
end

local prefix = {
	"",
	"slightly-better",
	"better",
	"fast",
	"very-fast",
	"superior",
	"express",
	"ultimate"
}
	
function momoPyTweak.compatibility.UltimateBeltAE()
	if not (settings.startup["momo-ultimateBelt"].value) then
		return
	end

	for i, ob in pairs(originalBelts) do
		local prototype  = data.raw["transport-belt"][ob]
		speed[i] = prototype.speed
		
	end
	
	
	local range = {9, 17, 33, 40, 47, 55, 62, 67}
	local function ChangeName(item, inName)
		local name = "entity-name." .. inName
		local belt = data.raw["transport-belt"][item]
		if (belt) then belt.localised_name = {name} end
		local splitter = data.raw["splitter"][item]
		if (splitter) then splitter.localised_name = {name} end
		local uBelt = data.raw["underground-belt"][item]
		if (uBelt) then uBelt.localised_name = {name} end
		
		data.raw.item[item].localised_name = {name}
	end
	
	local function ChangeNameFor(index)
		ChangeName(belts[index], prefix[index] .. "-transport-belt")
		ChangeName(splitters[index], prefix[index] .. "-splitter")
		ChangeName(uBelts[index], prefix[index] .. "-underground-belt")
	end
	
	ChangeNameFor(2)
	ChangeNameFor(3)
	ChangeNameFor(5)
	ChangeNameFor(6)
	ChangeNameFor(8)
	
	momoIRTweak.CreateSubgroup("belt-belt",        "belt-1", "logistics") 
	momoIRTweak.CreateSubgroup("belt-splitter",    "belt-2", "logistics") 
	momoIRTweak.CreateSubgroup("belt-underground", "belt-3", "logistics") 
	order = 1
	
	for i, belt in pairs(belts) do
		momoIRTweak.ChangeSubgroupItemAndRecipe(belt, "belt-belt", "belt-" .. order)
		order = order + 1
		
		local prototype = data.raw["transport-belt"][belt]
		prototype.speed = speed[i]
		
		
		if (data.raw["transport-belt"][belts[i + 1]]) then
			prototype.next_upgrade = belts[i + 1]
		end
	end
	
	order = 1
	for i, splitter in pairs(splitters) do
		momoIRTweak.ChangeSubgroupItemAndRecipe(splitter, "belt-splitter", "splitter-" .. order)
		order = order + 1
		
		local prototype = data.raw["splitter"][splitter]
		prototype.speed = speed[i]
		
		if (data.raw["splitter"][splitters[i + 1]]) then
			prototype.next_upgrade = splitters[i + 1]
		end
	end
	
	order = 1
	for i, ubelt in pairs(uBelts) do
		momoIRTweak.ChangeSubgroupItemAndRecipe(ubelt, "belt-underground", "ubelt-" .. order)
		order = order + 1
		
		local prototype = data.raw["underground-belt"][ubelt]
		prototype.max_distance = range[i]
		prototype.speed = speed[i]
		
		if (data.raw["underground-belt"][uBelts[i + 1]]) then
			prototype.next_upgrade = uBelts[i + 1]
		end
	end
	
	
	
	--------- Technology

	
	local disabledTechs = {"ultra-fast-logistics", "extreme-fast-logistics", "ultra-express-logistics", "extreme-express-logistics", "ultimate-logistics"}
	for i, tech in pairs(disabledTechs) do
		DisableTechnology(tech)
	end
	
	local tech1 = "logistics"
	local tech2 = "logistics-2"
	local tech3 = "logistics-3"
	
	local t1Unlocks = {belts[2], belts[3], uBelts[2], uBelts[3], splitters[2], splitters[3]}
	for _, recipe in pairs(t1Unlocks) do
		momoIRTweak.technology.AddUnlockEffect(tech1, recipe)
	end
	
	local t2Unlocks = {belts[5], belts[6], uBelts[5], uBelts[6], splitters[5], splitters[6]}
	for _, recipe in pairs(t2Unlocks) do
		momoIRTweak.technology.AddUnlockEffect(tech2, recipe)
	end
	
	local t3Unlocks = { belts[8], uBelts[8], splitters[8] }
	for _, recipe in pairs(t3Unlocks) do
		momoIRTweak.technology.AddUnlockEffect(tech3, recipe)
	end


	--------- Recipe
	local recipeIndex = 2
	local mainIng = "duralumin"
	SetIngredients(belts[recipeIndex], { ITEM(belts[recipeIndex - 1], 1), ITEM(mainIng, 1) })
	SetIngredients(uBelts[recipeIndex], { ITEM(uBelts[recipeIndex - 1], 1), ITEM(mainIng, 2) })
	SetIngredients(splitters[recipeIndex], { ITEM(splitters[recipeIndex  - 1], 1), ITEM(mainIng, 2) })
	
	recipeIndex = 3
	mainIng = "nxsb-alloy"
	local subIng = "intermetallics"
	SetIngredients(belts[recipeIndex], { ITEM(belts[recipeIndex - 1], 1), ITEM(mainIng, 1), ITEM(subIng, 1) })
	SetIngredients(uBelts[recipeIndex], { ITEM(uBelts[recipeIndex - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 1) })
	SetIngredients(splitters[recipeIndex], { ITEM(splitters[recipeIndex  - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 1) })
	
	
	Replace(belts[4], belts[1], ITEM(belts[3], 2))
	Replace("fast-transport-belt-2", belts[1], ITEM(belts[3], 15))
	
	recipeIndex = 5
	mainIng = "science-coating"
	subIng = "intermetallics"
	SetIngredients(belts[recipeIndex], { ITEM(belts[recipeIndex - 1], 1), ITEM(mainIng, 1), ITEM(subIng, 1) })
	SetIngredients(uBelts[recipeIndex], { ITEM(uBelts[recipeIndex - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 1) })
	SetIngredients(splitters[recipeIndex], { ITEM(splitters[recipeIndex  - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 1) })
	
	recipeIndex = 6
	mainIng = "science-coating"
	subIng = "super-steel"
	SetIngredients(belts[recipeIndex], { ITEM(belts[recipeIndex - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 2) })
	SetIngredients(uBelts[recipeIndex], { ITEM(uBelts[recipeIndex - 1], 1), ITEM(mainIng, 3), ITEM(subIng, 2) })
	SetIngredients(splitters[recipeIndex], { ITEM(splitters[recipeIndex  - 1], 1), ITEM(mainIng, 4), ITEM(subIng, 2) })
	
	Replace(belts[7], belts[4], ITEM(belts[6]))
	Replace("express-transport-belt-2", belts[4], ITEM(belts[6], 15))
	
	recipeIndex = 8
	mainIng = "nacelle-mk04"
	subIng = "speed-module-3"
	SetIngredients(belts[recipeIndex], { ITEM(belts[recipeIndex - 1], 1), ITEM(mainIng, 1), ITEM(subIng, 1) })
	SetIngredients(uBelts[recipeIndex], { ITEM(uBelts[recipeIndex - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 1) })
	SetIngredients(splitters[recipeIndex], { ITEM(splitters[recipeIndex  - 1], 1), ITEM(mainIng, 2), ITEM(subIng, 2) })
end


function momoPyTweak.finalFixes.UltimateBeltMiniloader()
	if (settings.startup["momo-ultimateBelt"].value) then
		local disabledTechs = {"ub-ultra-fast-miniloader", "ub-extreme-fast-miniloader", "ub-ultra-express-miniloader", "ub-extreme-express-miniloader", "ub-ultimate-miniloader"}
		for i, tech in pairs(disabledTechs) do
			DisableTechnology(tech)
		end
		
		
		
		local loaders = {
			"miniloader", 
			"ub-ultra-fast-miniloader",
			"ub-extreme-fast-miniloader",
			"fast-miniloader",
			"ub-ultra-express-miniloader",
			"ub-extreme-express-miniloader",
			"express-miniloader",
			"ub-ultimate-miniloader"
		}
		
		local function ChangeNameFor(index)
			local lName = "entity-name." .. prefix[index] .. "-miniloader"
			data.raw.item[loaders[index]].localised_name = {lName}
			local inserter = data.raw.inserter[loaders[index] .. "-inserter"]
			inserter.localised_name = {lName}
			
			local rounded_items_per_second = math.floor(speed[index] * 480 * 100 + 0.5) / 100
			local description = {"",
			  "[font=default-semibold][color=255,230,192]", {"description.belt-speed"}, ":[/color][/font] ",
			  rounded_items_per_second, " ", {"description.belt-items"}, {"per-second-suffix"}}
			  
			  inserter.localised_description = description
		end
		
		ChangeNameFor(2)
		ChangeNameFor(3)
		ChangeNameFor(4)
		ChangeNameFor(5)
		ChangeNameFor(6)
		ChangeNameFor(7)
		ChangeNameFor(8)
		
		
		for _, recipe in pairs({loaders[2], loaders[3]}) do
			momoIRTweak.technology.AddUnlockEffect("miniloader", recipe)
		end
		momoIRTweak.technology.RemoveUnlockEffect("miniloader", "filter-miniloader")
		
		for _, recipe in pairs({loaders[5], loaders[6]}) do
			momoIRTweak.technology.AddUnlockEffect("fast-miniloader", recipe)
		end
		momoIRTweak.technology.RemoveUnlockEffect("fast-miniloader", "fast-filter-miniloader")
		
		momoIRTweak.technology.AddUnlockEffect("express-miniloader", loaders[8])
		momoIRTweak.technology.RemoveUnlockEffect("express-miniloader", "express-filter-miniloader")
		
		momoIRTweak.CreateSubgroup("belt-loader", "belt-4", "logistics") 
		local order = 1
		for i, loader in pairs(loaders) do
			momoIRTweak.ChangeSubgroupItemAndRecipe(loader, "belt-loader", "loader-" .. order)
			order = order + 1
			
			data.raw["loader-1x1"][loader .. "-loader"].speed = speed[i]
			
			local prototype = data.raw["inserter"][loader .. "-inserter"]
			prototype.speed = speed[i]
			local n = loaders[i + 1]
			if (n) then
				if (data.raw["inserter"][n .. "-inserter"]) then
					prototype.next_upgrade = n .. "-inserter"
				end
			end
		end
		
		local fastInserter = "fast-inserter"
		SetIngredients(loaders[2], {
			ITEM(loaders[1]), 
			ITEM(uBelts[2]),
			ITEM(fastInserter, 2)
		})
		SetIngredients(loaders[3], {
			ITEM(loaders[2]), 
			ITEM(uBelts[3]),
			ITEM(fastInserter, 2)
		})
		Replace(loaders[4], loaders[1], ITEM(loaders[3]))
		local stackInserter = "stack-inserter"
		SetIngredients(loaders[5], {
			ITEM(loaders[4]), 
			ITEM(uBelts[5]),
			ITEM(stackInserter, 2)
		})
		SetIngredients(loaders[6], {
			ITEM(loaders[5]), 
			ITEM(uBelts[6]),
			ITEM(stackInserter, 2)
		})
		Replace(loaders[7], loaders[4], ITEM(loaders[6]))
		SetIngredients(loaders[8], {
			ITEM(loaders[7]), 
			ITEM(uBelts[8]),
			ITEM(stackInserter, 4)
		})
	end -- if mod loaded
end -- function