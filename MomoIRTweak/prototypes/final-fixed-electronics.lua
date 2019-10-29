if (settings.startup["momo-harderElectronics"].value) then
	--using 
	local eles = momoIRTweak.eletronics
	local ITEM = momoIRTweak.FastItem
	local AddIng = momoIRTweak.AddToRecipe
	
	--- module
	AddIng("program-speed-module", ITEM(eles.pcb1.name, 8))
	AddIng("program-speed-module-2", ITEM(eles.pcb2.name, 8))
	AddIng("program-speed-module-3", ITEM(eles.pcb3.name, 8))
	AddIng("program-speed-module-3", ITEM("k-ram", 8))
	AddIng("program-speed-module-3", ITEM("k-processor", 2))
	
	AddIng("program-productivity-module", ITEM(eles.pcb1.name, 16))
	AddIng("program-productivity-module-2", ITEM(eles.pcb2.name, 16))
	
	AddIng("program-productivity-module-3", ITEM(eles.pcb3.name, 16))
	AddIng("program-productivity-module-3", ITEM("k-ram", 16))
	AddIng("program-productivity-module-3", ITEM("k-processor", 4))
	
	AddIng("program-effectivity-module", ITEM(eles.pcb1.name, 6))
	AddIng("program-effectivity-module-2", ITEM(eles.pcb2.name, 6))
	AddIng("program-effectivity-module-3", ITEM(eles.pcb3.name, 6))
	AddIng("program-effectivity-module-3", ITEM("k-ram", 4))
	AddIng("program-effectivity-module-3", ITEM("k-processor", 1))
	
	--- 
end