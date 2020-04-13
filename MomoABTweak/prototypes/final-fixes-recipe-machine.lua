-- using
local AddIng = momoIRTweak.recipe.SafeAddIngredientNative
local ITEM = momoIRTweak.FastItem
	

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
		AddIng("angels-chemical-plant", ITEM("steam-assembling-machine", 1))
		AddIng("algae-farm", ITEM("steam-assembling-machine", 1))
	end
end

function momoTweak.finalFixes.HarderBlock()
	local frame = momoTweak.frame
	local stone = ITEM("stone-brick", 6)
	
	AddIng("block-construction-2", stone)
	AddIng("block-construction-3", ITEM(frame[3], 2))
	AddIng("block-construction-4", ITEM(frame[4], 3))
	AddIng("block-construction-5", ITEM(frame[5], 4))
	
	AddIng("block-fluidbox-2", ITEM(frame[3], 2))
	
	AddIng("block-mechanical-2", ITEM(frame[3], 2))
	
	
	AddIng("block-enhancement-1", stone)
	AddIng("block-energy-1", stone)
	AddIng("block-exploration-1", stone)
	AddIng("block-logistic-1", stone)
	AddIng("block-production-1", stone)
	AddIng("block-warfare-1", stone)
end