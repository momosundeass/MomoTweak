-- using
local AddIng = momoIRTweak.recipe.SafeAddIngredientNative
local ITEM = momoIRTweak.FastItem
local Rem = momoIRTweak.recipe.RemoveIngredient
	

function momoTweak.finalFixes.TieredMachine()
	for _, machines in pairs(momoTweak.machine) do
		for i, machine in pairs(machines) do
			-- skip the first tier
			if i ~= 1 then
				AddIng(machine, ITEM(machines[i - 1], 1))
			end
		end
	end
end

function momoTweak.finalFixes.SteamAndBurnerAssembly()
	if (settings.startup["bobmods-assembly-burner"].value) then
	
		AddIng("assembling-machine-1", ITEM("burner-assembling-machine", 1))
		Rem("assembling-machine-1", momoTweak.frame[1])
		
		AddIng("angels-chemical-plant", ITEM("steam-assembling-machine", 1))
		AddIng("algae-farm", ITEM("steam-assembling-machine", 1))
	end
end

function momoTweak.finalFixes.HarderBlock()
	local frame = momoTweak.frame
	local stone6 = ITEM("stone-brick", 6)
	local slab2 = ITEM(momoTweak.item.stoneSlab.name, 2)
	local slab4 = ITEM(momoTweak.item.stoneSlab.name, 4)
	
	AddIng("block-construction-2", stone6)
	AddIng("block-construction-3", ITEM(frame[3], 2))
	AddIng("block-construction-3", slab2)
	AddIng("block-construction-4", ITEM(frame[4], 3))
	AddIng("block-construction-4", slab4)
	AddIng("block-construction-5", ITEM(frame[5], 4))
	AddIng("block-construction-5", slab4)
	
	AddIng("block-fluidbox-2", ITEM(frame[3], 2))
	AddIng("block-fluidbox-2", slab2)
	
	AddIng("block-mechanical-2", ITEM(frame[3], 2))
	AddIng("block-mechanical-2", slab4)
	
	
	AddIng("block-enhancement-1", stone6)
	AddIng("block-energy-1", stone6)
	AddIng("block-exploration-1", stone6)
	AddIng("block-logistic-1", stone6)
	AddIng("block-production-1", stone6)
	AddIng("block-warfare-1", stone6)
	
	AddIng(momoTweak.frame[3], ITEM("angels-rivet", 3))
	AddIng(momoTweak.frame[3], ITEM("angels-girder", 2))
	
	AddIng(momoTweak.frame[4], ITEM("angels-rivet", 3))
	AddIng(momoTweak.frame[4], ITEM("angels-girder", 3))
	AddIng(momoTweak.frame[4], ITEM("angels-bracket", 2))
	
	AddIng(momoTweak.frame[5], ITEM("angels-rivet", 3))
	AddIng(momoTweak.frame[5], ITEM("angels-girder", 4))
	AddIng(momoTweak.frame[5], ITEM("angels-bracket", 3))
	AddIng(momoTweak.frame[5], ITEM("angels-plating", 3))
	
end