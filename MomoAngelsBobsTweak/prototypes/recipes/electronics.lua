local sc = {}
function sc.Updates()
	local ITEM = momoIRTweak.FastItem
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ReplaceIng = momoIRTweak.recipe.ReplaceIngredient
	local RemoveIng = momoIRTweak.recipe.RemoveIngredient
	
	AddIng("phenolic-board", ITEM("tin-plate"))
	ReplaceIng("circuit-board", "copper-plate", ITEM("basic-circuit-board"))
	AddIng("circuit-board", ITEM("tin-plate", 2))
	AddIng("advanced-circuit", ITEM("electronic-circuit", 2))
	AddIng("electronic-components", ITEM("angels-wire-silver", 2))
	
	AddIng("superior-circuit-board", ITEM("circuit-board", 2))
	AddIng("superior-circuit-board", ITEM("powder-cobalt", 2))
	ReplaceIng("superior-circuit-board", "silver-plate", ITEM("angels-wire-silver", 4))
	AddIng("processing-unit", ITEM("advanced-circuit", 4))
	AddIng("intergrated-electronics", ITEM("insulated-cable", 5))
	AddIng("angels-glass-fiber-board", ITEM("nickel-plate", 2))
	
	AddIng("processing-electronics", ITEM("zinc-plate", 2))
	AddIng("multi-layer-circuit-board", ITEM("superior-circuit-board", 2))
	ReplaceIng("multi-layer-circuit-board", "copper-plate", ITEM("lithium"))
	RemoveIng("advanced-processing-unit", "basic-electronic-components")
	AddIng("advanced-processing-unit", ITEM("processing-unit", 2))
	AddIng("advanced-processing-unit", ITEM("advanced-circuit", 10))
	
	-- module
	AddIng("module-processor-board", ITEM("advanced-circuit"))
	AddIng("module-processor-board-2", ITEM("processing-unit"))
	AddIng("module-processor-board-3", ITEM("advanced-processing-unit"))
end

return sc