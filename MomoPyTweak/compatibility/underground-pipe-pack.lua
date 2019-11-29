--- using
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient

function momoPyTweak.compatibility.PipePack()
	momoIRTweak.technology.SetPrerequire("advanced-underground-piping", {"py-storage-tanks"})
	AddIng("medium-pipe-coupler", ITEM("stainless-steel"))
	Rem("medium-pipe-coupler", "iron-plate")
	
	AddIng("large-pipe-coupler", ITEM("stainless-steel"))
	Rem("large-pipe-coupler", "steel-plate")
	
	AddIng("underground-pipe-segment-t2", ITEM("stainless-steel", 2))
	AddIng("underground-pipe-segment-t2", ITEM("super-steel", 1))
	Rem("underground-pipe-segment-t2", "iron-plate")
	
	AddIng("underground-pipe-segment-t3", ITEM("stainless-steel", 2))
	AddIng("underground-pipe-segment-t3", ITEM("super-steel", 1))
	Rem("underground-pipe-segment-t3", "steel-plate")
end
