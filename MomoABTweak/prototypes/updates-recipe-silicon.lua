function momoTweak.recipe.Silicon()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	
	local wafer = ITEM("silicon-wafer", 1)
	
	AddIng(momoTweak.board.yellow, wafer)
	AddIng(momoTweak.circuit.blue, wafer)
	AddIng(momoTweak.circuit.yellow, wafer)
	AddIng(momoTweak.electronics.orange, wafer)
	AddIng(momoTweak.electronics.blue, wafer)
	AddIng(momoTweak.electronics.yellow, wafer)
	
	AddIng(momoTweak.components.cpu, ITEM("angels-coil-glass-fiber", 1))
	AddIng(momoTweak.components.transformer, ITEM("glass", 1))
	
	AddIng("angels-strut", ITEM("ceramic-bearing", 2))
	
	for _, b in pairs(momoTweak.science.block) do
		AddIng(b .. "2", ITEM("glass", 3))
		AddIng(b .. "3", ITEM("glass", 3))
		AddIng(b .. "4", ITEM("glass", 4))
		AddIng(b .. "5", ITEM("angels-bearing", 8))
	end
	
	AddIng("cable-harness-4", ITEM("angels-coil-glass-fiber", 2))
	AddIng("cable-harness-5", ITEM("angels-coil-glass-fiber", 3))
	
	AddIng("angels-energycrystal", ITEM("glass", 2))
	AddIng("angels-acceleratorcoil", ITEM("glass", 2))
	
	AddIng("angels-bearing", ITEM("ceramic-bearing", 1))
end
