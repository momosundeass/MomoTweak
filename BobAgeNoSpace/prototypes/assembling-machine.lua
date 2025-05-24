local function ProductivityAdded(machine, prod)
	local prototype = data.raw["assembling-machine"][machine] or data.raw["furnace"][machine]
	if prototype == nil then error("No assembling-machine or furnace; with name : " .. machine) end
	prototype.effect_receiver = { base_effect = {productivity = prod }} 
end

local function ProductivityAddedFurnace(machine, prod)
	local prototype = data.raw["furnace"][machine]
	prototype.effect_receiver = { base_effect = {productivity = prod }} 
end

ProductivityAdded("bob-electronics-machine-1", 0.15)
ProductivityAdded("bob-electronics-machine-2", 0.30)
ProductivityAdded("bob-electronics-machine-3", 0.50)

ProductivityAdded("electric-furnace", 0.1)
ProductivityAdded("bob-electric-furnace-2", 0.25)
ProductivityAdded("bob-electric-furnace-3", 0.5)

ProductivityAdded("bob-steel-chemical-furnace", 0.1)
ProductivityAdded("bob-fluid-chemical-furnace", 0.1)
ProductivityAdded("bob-electric-chemical-furnace", 0.3)

data.raw["assembling-machine"]["bob-electric-chemical-furnace"].module_slots = 4