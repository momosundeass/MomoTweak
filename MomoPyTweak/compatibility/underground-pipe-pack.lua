--- using
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient

function momoPyTweak.compatibility.PipePack()
	momoIRTweak.technology.SetPrerequire("advanced-underground-piping", {"py-storage-tanks"})
	
	--- tiered 2
	AddIng("medium-pipe-coupler", ITEM("niobium-plate"))
	AddIng("medium-pipe-coupler", ITEM("small-pipe-coupler", 2))
	momoIRTweak.recipe.MultipleResultsCount("medium-pipe-coupler", 2)
	Rem("medium-pipe-coupler", "iron-plate")

	AddIng("underground-pipe-segment-t2", ITEM("niobium-plate", 1))
	Rem("underground-pipe-segment-t2", "iron-plate")
	
	
	--- tiered 3
	AddIng("large-pipe-coupler", ITEM("stainless-steel"))
	Rem("large-pipe-coupler", "steel-plate")
	
	AddIng("underground-pipe-segment-t3", ITEM("super-steel", 1))
	Rem("underground-pipe-segment-t3", "steel-plate")
end
