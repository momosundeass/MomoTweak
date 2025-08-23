-- quality
MomoLib.GetPrototype("quality", "uncommon", function(p) 
	p.lab_module_slots_bonus  = 0 
	p.beacon_module_slots_bonus = 0
	p.beacon_supply_area_distance_bonus = 0
	p.crafting_machine_energy_usage_multiplier = 0.95
end)
MomoLib.GetPrototype("quality", "rare", function(p) 
	p.lab_module_slots_bonus  = 1 
	p.beacon_module_slots_bonus = 1
	p.beacon_supply_area_distance_bonus = 1
	p.crafting_machine_energy_usage_multiplier = 0.90
end)
MomoLib.GetPrototype("quality", "epic", function(p) 
	p.lab_module_slots_bonus  = 2
	p.beacon_module_slots_bonus = 2
	p.beacon_supply_area_distance_bonus = 1
	p.crafting_machine_energy_usage_multiplier = 0.85
end)
MomoLib.GetPrototype("quality", "legendary", function(p) 
	p.lab_module_slots_bonus  = 4
	p.beacon_module_slots_bonus = 4
	p.beacon_supply_area_distance_bonus = 3
	p.crafting_machine_module_slots_bonus = 6
	p.crafting_machine_energy_usage_multiplier = 0.75
end)

MomoLib.GetPrototypes("lab", {"lab", "bob-lab-2", "bob-lab-alien"}, function(p) 
	p.uses_quality_drain_modifier = true
	p.quality_affects_module_slots = true
end)

MomoLib.GetPrototypes("beacon", {"beacon", "bob-beacon-2", "bob-beacon-3"}, function(p) 
	p.quality_affects_supply_area_distance = true
end)

MomoLib.GetPrototype("assembling-machine", "bob-greenhouse", function(p) 
	p.quality_affects_module_slots = true 
	MomoLib.icon.EntityModuleIcons(p).max_icons_per_row = 3
	p.allowed_effects = data.raw["assembling-machine"]["assembling-machine-1"].allowed_effects
	p.allowed_module_categories = data.raw["assembling-machine"]["assembling-machine-1"].allowed_module_categories
end)

MomoLib.GetPrototype("furnace", "recycler", function(p) 
	p.quality_affects_module_slots = true 
	MomoLib.icon.EntityModuleIcons(p).max_icons_per_row = 4
	end)

MomoLib.GetPrototype("assembling-machine", "bob-electric-chemical-furnace", function(p) 
	p.quality_affects_module_slots = true 
	MomoLib.icon.EntityModuleIcons(p).max_icons_per_row = 5
	end)

MomoLib.GetPrototypes("assembling-machine", {
	"bob-electrolyser",
	"bob-electrolyser-2",
	"bob-electrolyser-3",
	"bob-electrolyser-4",
	"bob-electrolyser-5",
	}, function(p)  p.quality_affects_energy_usage = true end)