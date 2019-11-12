function momoIRTweak.finalFixes.Electronics()
		--using 
	local eles = momoIRTweak.electronics
	local ITEM = momoIRTweak.FastItem
	local AddIng = momoIRTweak.recipe.AddIngredient

	---------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------
	if (momoIRTweak.electronics.isHarder) then
		---- SPEED
		-- 1
		AddIng("program-speed-module", ITEM(eles.pcb1.name, 4))
		
		-- 2
		AddIng("program-speed-module-2", ITEM(eles.pcb2.name, 8))
		
		-- 3
		AddIng("program-speed-module-3", ITEM(eles.pcb3.name, 8))
		
		---- PRODUCTIVITY
		-- 1
		AddIng("program-productivity-module", ITEM(eles.pcb1.name, 8))
		
		-- 2
		AddIng("program-productivity-module-2", ITEM(eles.pcb2.name, 16))
		
		-- 3
		AddIng("program-productivity-module-3", ITEM(eles.pcb3.name, 16))
		
		
		---- EFFECTIVITY
		-- 1
		AddIng("program-effectivity-module", ITEM(eles.pcb1.name, 2))
		
		-- 2
		AddIng("program-effectivity-module-2", ITEM(eles.pcb2.name, 4))
		
		-- 3
		AddIng("program-effectivity-module-3", ITEM(eles.pcb3.name, 4))
	end

	---------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------
	if (settings.startup["momo-harderModule"].value) then
		---- SPEED
		-- 1
		AddIng("program-speed-module", ITEM("copper-incinerator", 1))
		
		-- 2
		AddIng("program-speed-module-2", ITEM("iron-incinerator", 1))
		
		-- 3
		AddIng("program-speed-module-3", ITEM("iron-incinerator", 1))
		AddIng("program-speed-module-3", ITEM("k-ram", 8))
		AddIng("program-speed-module-3", ITEM("k-processor", 2))
		
		
		---- PRODUCTIVITY
		-- 1
		AddIng("program-productivity-module", ITEM("copper-scrapper", 1))	
		
		-- 2
		AddIng("program-productivity-module-2", ITEM("iron-scrapper", 1))
		
		-- 3
		AddIng("program-productivity-module-3", ITEM("iron-scrapper", 2))
		AddIng("program-productivity-module-3", ITEM("k-ram", 16))
		AddIng("program-productivity-module-3", ITEM("k-processor", 4))
		
		
		---- EFFECTIVITY
		-- 1
		
		-- 2
		AddIng("program-effectivity-module-2", ITEM("copper-incinerator", 1))
		
		-- 3
		AddIng("program-effectivity-module-3", ITEM("iron-incinerator", 1))
		AddIng("program-effectivity-module-3", ITEM("k-ram", 4))
		AddIng("program-effectivity-module-3", ITEM("k-processor", 1))
	end
end