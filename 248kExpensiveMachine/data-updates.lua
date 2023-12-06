local ITEM = momoIRTweak.FastItem
local Add = momo2k2.Add
local Rep = momo2k2.Rep
local Set = momo2k2.Set

if momo2k2.mods.pipe then
	Rep("medium-pipe-coupler", "iron-plate", ITEM("steel-plate", 1))
	Rep("underground-pipe-segment-t2", "iron-plate", ITEM("steel-plate", 1))
	
	Rep("large-pipe-coupler", "steel-plate", ITEM("fi_materials_GFK", 1))
	Rep("underground-pipe-segment-t3", "steel-plate", ITEM("fi_materials_GFK", 1))
end

if (settings.startup["momo-2k2-wood-pole"].value) then
	Add("steam-engine", ITEM("small-electric-pole", 2))
end

if (settings.startup["momo-2k2-burner-miner"].value) then
	Rep("electric-mining-drill", "iron-gear-wheel", ITEM("burner-mining-drill", 2))
	Rep("kr-crusher", "iron-gear-wheel", ITEM("burner-mining-drill", 5))
	Rep("pumpjack", "steel-gear-wheel", ITEM("burner-mining-drill", 2))
	Rep("kr-mineral-water-pumpjack", "steel-gear-wheel", ITEM("burner-mining-drill", 1))
	
	Rep("oil-refinery", "pipe", ITEM("boiler", 4))
	Rep("chemical-plant", "pipe", ITEM("boiler", 2))

end

if (settings.startup["momo-2k2-burner-inserter"].value) then
	Rep("assembling-machine-1", "iron-gear-wheel", ITEM("burner-inserter", 2))
	Rep("inserter", "inserter-parts", ITEM("burner-inserter"))
	Set("long-handed-inserter", {ITEM("inserter"), ITEM("iron-stick")})
	Rep("fast-inserter", "inserter-parts", ITEM("long-handed-inserter"))
	Rep("filter-inserter", "inserter-parts", ITEM("long-handed-inserter"))
	Rep("stack-inserter", "inserter-parts", ITEM("fast-inserter"))
	Rep("stack-filter-inserter", "inserter-parts", ITEM("filter-inserter"))

	Rep("kr-superior-inserter", "inserter-parts", ITEM("fast-inserter"))
	Rep("kr-superior-long-inserter", "inserter-parts", ITEM("fast-inserter"))
	
	Rep("kr-superior-filter-inserter", "inserter-parts", ITEM("filter-inserter"))
	Rep("kr-superior-long-filter-inserter", "inserter-parts", ITEM("filter-inserter"))
end

if (settings.startup["momo-2k2-electronics"].value) then
	Set("decider-combinator", { 
		ITEM("constant-combinator", 3),
		ITEM("tinned-cable", 2)
	})
	Set("arithmetic-combinator", { 
		ITEM("decider-combinator", 1),
		ITEM("tinned-cable", 2)
	})
	
	Add("processing-unit", ITEM("arithmetic-combinator", 8))
	Add("processing-unit", ITEM("heat-pipe", 2))
end

if (settings.startup["momo-2k2-248k"].value) then
	Rep("electric-furnace", "steel-plate", ITEM("steel-furnace", 1))
	Rep("heat-exchanger", "pipe", ITEM("boiler", 4))
	Add("steel-furnace", ITEM("stone-furnace", 1))
	
	Add("el_purifier_recipe", ITEM("burner-mining-drill", 2))
	Add("el_purifier_recipe", ITEM("inserter", 4))
	
	Add("el_arc_furnace_recipe", ITEM("stone-furnace", 8))
	Add("el_arc_furnace_recipe", ITEM("kr-crusher", 2))
	
	Add("el_caster_recipe", ITEM("el_arc_furnace_item", 1))
	Add("el_caster_recipe", ITEM("assembling-machine-1", 1))
	
	Add("el_burner_kerosene_recipe", ITEM("pumpjack", 1))
	Add("el_burner_recipe", ITEM("steam-engine", 2))
	
	Add("fu_burner_recipe", ITEM("assembling-machine-2", 2))
	Add("fu_burner_recipe", ITEM("kr-crusher", 2))
	
	Rep("el_charger_recipe", "stone-furnace", ITEM("kr-electrolysis-plant", 2))
	Rep("el_charger_recipe", "iron-gear-wheel", ITEM("steam-engine", 5))
	Add("el_charger_recipe", ITEM("chemical-plant", 2))
	
	Add("el_grower_recipe", ITEM("chemical-plant", 2))
	Rep("el_grower_recipe", "steel-plate", ITEM("oil-refinery", 4))
	Rep("el_grower_recipe", "electronic-circuit", ITEM("el_charger_item", 1))
	
	Rep("el_pressurizer_recipe", "pipe", ITEM("pump", 5))
	
	Rep("el_water_generator_recipe", "pipe", ITEM("pump", 4))
	Rep("el_water_generator_recipe", "iron-gear-wheel", ITEM("burner-mining-drill", 10))
	
	--- K1
	Rep("el_ki_cpu_recipe", "steel-plate", ITEM("assembling-machine-2", 4))
	Add("el_ki_cpu_recipe", ITEM("decider-combinator", 20))
	Rep("el_ki_memory_recipe", "steel-plate", ITEM("assembling-machine-2", 2))
	Add("el_ki_memory_recipe", ITEM("constant-combinator", 10))
	
	Add("el_ki_beacon_recipe", ITEM("steam-engine", 4))
	Rep("el_ki_beacon_recipe", "steel-plate", ITEM("engine-unit", 8))
	Rep("el_ki_beacon_recipe", "electronic-circuit", ITEM("decider-combinator", 5))
	
	Rep("el_ki_core_recipe", "steel-plate", ITEM("assembling-machine-2", 10))
	
	-- t2 -------------------------------------------------
	Rep("fi_crafter_recipe", "iron-gear-wheel", ITEM("steam-engine", 8))
	Rep("fi_crafter_recipe", "electronic-circuit", ITEM("decider-combinator", 5))
	Rep("fi_crafter_recipe", "concrete", ITEM("centrifuge", 1))
	
	Rep("fi_fiberer_recipe", "iron-gear-wheel", ITEM("electric-mining-drill", 4))
	Rep("fi_fiberer_recipe", "engine-unit", ITEM("el_water_generator_item", 1))
	
	Rep("fi_compound_machine_recipe", "iron-gear-wheel", ITEM("el_pressurizer_item", 1))
	Rep("fi_compound_machine_recipe", "engine-unit", ITEM("el_water_generator_item", 1))
	Add("fi_compound_machine_recipe", ITEM("assembling-machine-2", 4))
	
	Rep("fi_refinery_recipe", "engine-unit", ITEM("el_pressurizer_item", 1))
	
	Rep("fi_crusher_recipe", "iron-gear-wheel", ITEM("kr-crusher", 2))
	
	Rep("fi_solid_reactor_recipe", "steel-plate", ITEM("centrifuge", 4))
	
	--- K2
	Add("fi_ki_circuit_recipe", ITEM("decider-combinator", 30))
	Add("fi_ki_circuit_recipe", ITEM("el_ki_memory_item", 1))
	
	Add("fi_ki_beacon_recipe", ITEM("steam-turbine", 2))
	Rep("fi_ki_beacon_recipe", "steel-plate", ITEM("kr-atmospheric-condenser", 4))
	Add("fi_ki_beacon_recipe", ITEM("el_ki_beacon_item", 2))
	
	Rep("fi_ki_core_recipe", "electronic-circuit", ITEM("decider-combinator", 50))
	Add("fi_ki_core_recipe", ITEM("el_ki_core_item", 1))
	
	-- t3 -------------------------------------------------
	Rep("fu_fusor_recipe", "lab", ITEM("kr-research-server", 10))
	
	Rep("fu_ingot_recipe", "iron-gear-wheel", ITEM("steam-engine", 4))
	Rep("fu_ingot_recipe", "concrete", ITEM("fi_crusher_item", 1))
	
	Rep("fu_laser_recipe", "iron-gear-wheel", ITEM("steam-turbine", 2))
	Rep("fu_laser_recipe", "concrete", ITEM("kr-research-server", 2))
	
	Rep("fu_magnet_recipe", "iron-gear-wheel", ITEM("steam-turbine", 1))
	Rep("fu_magnet_recipe", "concrete", ITEM("el_charger_item", 2))
	
	Rep("fu_plasma_recipe", "iron-gear-wheel", ITEM("kr-atmospheric-condenser", 6))
	Rep("fu_plasma_recipe", "concrete", ITEM("fi_compound_machine_item", 2))
	
	Rep("fu_turbine_recipe", "steam-turbine", ITEM("kr-advanced-steam-turbine", 2))
	Add("fu_turbine_recipe", ITEM("kr-atmospheric-condenser", 4))
	
	Rep("fu_boiler_recipe", "concrete", ITEM("fu_miner_item", 4))
	
	Add("fu_exchanger_item_recipe", ITEM("kr-atmospheric-condenser", 4))
	
	Rep("fu_star_engine_core_recipe", "electronic-circuit", ITEM("decider-combinator", 600))
	Rep("fu_star_engine_core_recipe", "advanced-circuit", ITEM("kr-research-server", 200))
	
	--- K3
	Rep("fu_ki_circuit_recipe", "advanced-circuit", ITEM("kr-research-server", 5))
	Add("fu_ki_circuit_recipe", ITEM("fi_ki_circuit_item", 1))
	
	Add("fu_ki_beacon_recipe", ITEM("kr-advanced-steam-turbine", 2))
	Add("fu_ki_beacon_recipe", ITEM("fi_ki_beacon_item", 2))
	
	
	-- t4 -------------------------------------------------
	Rep("kr-quantum-computer", "copper-plate", "kr-research-server", 5)
	Rep("gr_charger_recipe", "lab", ITEM("kr-quantum-computer", 5))
	Rep("gr_charger_recipe", "concrete", ITEM("fu_plasma_item", 2))
	
	Rep("gr_lab_recipe", "lab", ITEM("kr-singularity-lab", 12))
end