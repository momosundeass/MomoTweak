function momoTweak.require.ExtendedFrameUpdate()
	local function newRecipe(item, time, nameExtended)
	  if nameExtended == nil then nameExtended = "" end
	  local rec = { type = "recipe",
		  name = item.."-structure-components".. nameExtended,
		  category = "crafting-machine",
		  enabled = false,
		  energy_required = time,
		  ingredients = {},
		  result = item.."-structure-components",
		}
		data:extend({rec})
		return rec
	end


	-- create Recipe -------------------------------------------
	newRecipe("basic", 15).ingredients = {
	  {"lead-plate", 7},{"plate-pack-1", 4},{"stone-brick", 14}
	}
	newRecipe("intermediate", 30).ingredients = {
	  {"basic-structure-components", 2},{"brass-gear-wheel", 4},{"cobalt-plate", 3},{"invar-alloy", 14}
	}
	newRecipe("advanced", 60).ingredients = {
	  {"intermediate-structure-components", 2},{"tungsten-plate", 13},{"aluminium-plate", 16},
	  {"titanium-plate", 22},{"cobalt-steel-alloy", 10},{"advanced-plastics", 80}
	}
	newRecipe("anotherworld", 120).ingredients = {
	  {"advanced-structure-components", 3},
	  {"advanced-plastics", 800},
	  {"tungsten-carbide", 300},
	  {"titanium-bearing", 200},
	  {"ceramic-bearing", 300},
	  {"brass-alloy", 100},
	  {"nitinol-gear-wheel", 100},
	  {"silver-zinc-battery", 300}
	}

	-- assign tech
	local unlock_tech = momoTweak.get_tech_of_recipe_no_demo("steel-plate")
	if (unlock_tech == nil) then
		unlock_tech = "steel-processing"
	end
	bobmods.lib.tech.add_recipe_unlock(unlock_tech, "basic-structure-components")
	bobmods.lib.tech.add_recipe_unlock(momoTweak.get_tech_of_recipe("electric-engine-unit"), "intermediate-structure-components")
	bobmods.lib.tech.add_recipe_unlock("automation-3", "advanced-structure-components")
	bobmods.lib.tech.add_recipe_unlock("automation-5", "anotherworld-structure-components")

	-- assign machine
	local norecipe = 0
	local nomachine = 0
	local err = {}
	local function assign(machine, level, amount, notmachinePro)
		local tier = {"basic-structure-components", "intermediate-structure-components", "advanced-structure-components" ,"anotherworld-structure-components"}
		
		if data.raw["assembling-machine"][machine] == nil and notmachinePro == nil then
			nomachine = nomachine + 1
			table.insert(err, "Machine ".. machine)
		end
		
		if data.raw.recipe[machine] then
			bobmods.lib.recipe.add_ingredient(machine, {tier[level], amount})
		else 
			norecipe = norecipe + 1
			table.insert(err, "Recipe ".. machine)
		end
	end

	assign("assembling-machine-2", 1, 1)
	assign("assembling-machine-3", 2, 1)
	assign("assembling-machine-4", 2, 2)
	assign("assembling-machine-5", 3, 1)
	assign("assembling-machine-6", 4, 1)

	bobmods.lib.recipe.add_ingredient("rocket-silo", {"assembling-machine-6", 3})

	assign("electronics-machine-1", 1, 2)
	assign("electronics-machine-2", 2, 2)
	assign("electronics-machine-3", 3, 2)

	assign("oil-refinery", 1, 1)
	assign("oil-refinery-2", 2, 1)
	assign("oil-refinery-3", 2, 2)
	assign("oil-refinery-4", 3, 2)

	assign("chemical-plant", 1, 2)
	assign("chemical-plant-2", 2, 2)
	assign("chemical-plant-3", 2, 2)
	assign("chemical-plant-4", 3, 2)

	assign("electrolyser", 1, 1)
	assign("electrolyser-2", 2, 1)
	assign("electrolyser-3", 2, 1)
	assign("electrolyser-4", 3, 1)

	-- mining
	assign("bob-mining-drill-1", 1, 1, true)
	assign("bob-mining-drill-2", 2, 2, true)
	assign("bob-mining-drill-3", 3, 3, true)
	assign("bob-mining-drill-4", 4, 1, true)

	assign("bob-area-mining-drill-1", 1, 1, true)
	assign("bob-area-mining-drill-2", 2, 2, true)
	assign("bob-area-mining-drill-3", 3, 3, true)
	assign("bob-area-mining-drill-4", 4, 1, true)

	assign("bob-pumpjack-1", 1, 1, true)
	assign("bob-pumpjack-2", 2, 1, true)
	assign("bob-pumpjack-3", 3, 1, true)
	assign("bob-pumpjack-4", 3, 2, true)
	-- solar
	assign("solar-panel-small-2", 2, 1, true)
	assign("solar-panel-2", 2, 3, true)
	assign("solar-panel-large-2", 2, 4, true)

	assign("solar-panel-small-3", 3, 2, true)
	assign("solar-panel-3", 3, 4, true)
	assign("solar-panel-large-3", 3, 6, true)

	-- angel petro
	assign("angels-electrolyser", 1, 2)
	assign("angels-electrolyser-2", 2, 2)
	assign("angels-electrolyser-3", 2, 3)
	assign("angels-electrolyser-4", 3, 2)

	assign("advanced-chemical-plant", 2, 4)
	assign("advanced-chemical-plant-2", 3, 4)

	assign("gas-refinery", 1, 1)
	assign("gas-refinery-2", 2, 1)
	assign("gas-refinery-3", 2, 2)
	assign("gas-refinery-4", 3, 1)

	assign("gas-refinery-small", 1, 1)
	assign("gas-refinery-small-2", 2, 1)
	assign("gas-refinery-small-3", 2, 2)
	assign("gas-refinery-small-4", 3, 1)

	assign("separator", 1, 1)
	assign("separator-2", 2, 1)
	assign("separator-3", 2, 2)
	assign("separator-4", 3, 1)

	assign("steam-cracker", 1, 1)
	assign("steam-cracker-2", 2, 1)
	assign("steam-cracker-3", 2, 2)
	assign("steam-cracker-4", 3, 1)

	--angel refinery
	assign("ore-crusher-2", 1, 1)
	assign("ore-crusher-3", 2, 1)

	assign("ore-sorting-facility-2", 1, 2)
	assign("ore-sorting-facility-3", 2, 2)
	assign("ore-sorting-facility-4", 3, 3)

	assign("ore-floatation-cell", 1, 2)
	assign("ore-floatation-cell-2", 2, 2)
	assign("ore-floatation-cell-3", 3, 3)

	assign("ore-leaching-plant", 2, 2)
	assign("ore-leaching-plant-2", 2, 3)
	assign("ore-leaching-plant-3", 3, 3)

	assign("ore-refinery", 2, 3)
	assign("ore-refinery-2", 3, 5)

	assign("filtration-unit", 1, 3)
	assign("filtration-unit-2", 2, 5)

	assign("crystallizer", 1, 3)
	assign("crystallizer-2", 2, 5)

	assign("ore-powderizer", 1, 2)
	assign("ore-powderizer-2", 2, 2)
	assign("ore-powderizer-3", 3, 2)

	assign("electro-whinning-cell", 1, 2)
	assign("electro-whinning-cell-2", 2, 3)
	assign("electro-whinning-cell-3", 3, 3)

	assign("washing-plant-2", 1, 3)

	assign("hydro-plant-2", 1, 2)
	assign("hydro-plant-3", 2, 2)

	assign("salination-plant-2", 2, 1)

	-- angel smelting
	assign("blast-furnace", 1, 2)
	assign("blast-furnace-2", 2, 3)
	assign("blast-furnace-3", 3, 3)
	assign("blast-furnace-4", 4, 1)

	assign("angels-chemical-furnace", 1, 2)
	assign("angels-chemical-furnace-2", 2, 3)
	assign("angels-chemical-furnace-3", 3, 3)
	assign("angels-chemical-furnace-4", 4, 1)

	assign("powder-mixer", 1, 2)
	assign("powder-mixer-2", 2, 3)
	assign("powder-mixer-3", 3, 3)
	assign("powder-mixer-4", 4, 1)

	assign("induction-furnace", 1, 2)
	assign("induction-furnace-2", 2, 3)
	assign("induction-furnace-3", 3, 3)
	assign("induction-furnace-4", 4, 1)

	assign("casting-machine", 1, 2)
	assign("casting-machine-2", 2, 3)
	assign("casting-machine-3", 3, 3)
	assign("casting-machine-4", 4, 1)

	assign("ore-processing-machine", 1, 2)
	assign("ore-processing-machine-2", 2, 4)
	assign("ore-processing-machine-3", 3, 4)
	assign("ore-processing-machine-4", 4, 1)

	assign("pellet-press", 1, 2)
	assign("pellet-press-2", 2, 4)
	assign("pellet-press-3", 3, 4)
	assign("pellet-press-4", 4, 1)

	assign("sintering-oven", 1, 2)
	assign("sintering-oven-2", 2, 3)
	assign("sintering-oven-3", 3, 3)
	assign("sintering-oven-4", 4, 1)

	assign("strand-casting-machine", 1, 2)
	assign("strand-casting-machine-2", 2, 3)
	assign("strand-casting-machine-3", 3, 3)
	assign("strand-casting-machine-4", 4, 1)

	--beacon
	assign("beacon", 2, 5, true)
	assign("beacon-2", 3, 8, true)
	assign("beacon-3", 4, 3, true)

	log("MTKL bobExtended Frame => ".. norecipe .." no Recipe " .. nomachine .. " not found machine." )
	for i, text in pairs(err) do
		log("MTKL bobExtended .. " .. text)
	end

end