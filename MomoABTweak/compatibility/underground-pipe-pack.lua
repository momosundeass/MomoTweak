if not momoTweak.compatibility.undergroundPipePack then momoTweak.compatibility.undergroundPipePack = {} end

function momoTweak.compatibility.undergroundPipePack.Recipe()
	-- using
	local Prototype = momoIRTweak.recipe.BuildPrototype
	local ITEM = momoIRTweak.FastItem
	
	data:extend({{
		type = "item-subgroup",
		group = data.raw["item-subgroup"][data.raw.item["small-pipe-coupler"].subgroup].group,
		name = "momo-recycle-pipe",
		order = "zzzz"
	}})
	
	local function Recipe(prototype, tech)
		data:extend({prototype})

		local re = data.raw.recipe[prototype.name]
		re.allow_as_intermediate = false
		re.subgroup = "momo-recycle-pipe"
		re.allow_intermediates = false
		momoIRTweak.recipe.UnlockAt(re.name, tech)
	end
	
	tier = {}
	tier[1] = {"copper", "stone"}
	tier[2] = {"bronze", "steel", "plastic", "brass"}
	tier[3] = {"titanium", "ceramic", "tungsten"}
	
	local tech = "advanced-underground-piping"
	Recipe(Prototype("momo-small-pipe-coupler", 
		"crafting", 
		"small-pipe-coupler", 1, 
		{
			ITEM("pipe", 1)
		}, 
		0.5), tech)
	Recipe(Prototype("momo-underground-pipe-segment-t1", 
		"crafting", 
		"underground-pipe-segment-t1", 5, 
		{
			ITEM("pipe-to-ground", 1)
		}, 
		0.5), tech)
	
	for i, j in pairs(tier[1]) do
		Recipe(Prototype(j .. "2small-pipe-coupler", 
			"crafting", 
			"small-pipe-coupler", 1, 
			{
				ITEM(j.."-pipe", 1)
			}, 
			0.5), tech)
		Recipe(Prototype(j .. "2underground-pipe-segment-t1", 
			"crafting", 
			"underground-pipe-segment-t1", 5, 
			{
				ITEM(j.."-pipe-to-ground", 1)
			}, 
			0.5), tech)
	end
	
	tech = "advanced-underground-piping-t2"
	for i, j in pairs(tier[2]) do
		Recipe(Prototype(j .. "2medium-pipe-coupler", 
			"crafting", 
			"medium-pipe-coupler", 1, 
			{
				ITEM(j.."-pipe", 1),
				ITEM("small-pipe-coupler", 1)
			}, 
			0.5), tech)
		Recipe(Prototype(j .. "2underground-pipe-segment-t2", 
			"crafting", 
			"underground-pipe-segment-t2", 5, 
			{
				ITEM(j.."-pipe-to-ground", 1),
				ITEM("underground-pipe-segment-t1", 5)
			}, 
			0.5), tech)
	end
	
	tech = "advanced-underground-piping-t3"
	for i, j in pairs(tier[3]) do
		Recipe(Prototype(j .. "2large-pipe-coupler", 
			"crafting", 
			"large-pipe-coupler", 1, 
			{
				ITEM(j.."-pipe", 1),
				ITEM("medium-pipe-coupler", 1)
			}, 
			0.5), tech)
		Recipe(Prototype(j .. "2underground-pipe-segment-t3", 
			"crafting", 
			"underground-pipe-segment-t3", 6, 
			{
				ITEM(j.."-pipe-to-ground", 1),
				ITEM("underground-pipe-segment-t2", 6)
			}, 
			0.5), tech)
	end
end