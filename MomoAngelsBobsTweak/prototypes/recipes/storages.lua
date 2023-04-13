local sc = {}
function sc.Updates()
	local ITEM = momoIRTweak.FastItem
	local SetIng = momoIRTweak.recipe.ReplaceAllIngredient
	SetIng("angels-warehouse", {
		ITEM("stone-brick", 500),
		ITEM("iron-plate", 100)
	})
end
return sc