--- using
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient

function momoPyTweak.compatibility.PipePack()
	momoIRTweak.technology.SetPrerequire("advanced-underground-piping", {"py-storage-tanks"})
	
	data.raw.item["small-pipe-coupler"].stack_size = 500
	data.raw.item["medium-pipe-coupler"].stack_size = 500
	data.raw.item["large-pipe-coupler"].stack_size = 500
	
	data.raw.item["underground-pipe-segment-t1"].stack_size = 500
	data.raw.item["underground-pipe-segment-t2"].stack_size = 500
	data.raw.item["underground-pipe-segment-t3"].stack_size = 500
	
	--- tier 2
	AddIng("medium-pipe-coupler", ITEM("aluminium-plate"))
	AddIng("medium-pipe-coupler", ITEM("lead-plate"))
	Rem("medium-pipe-coupler", "iron-plate")
	
	AddIng("underground-pipe-segment-t2", ITEM("aluminium-plate", 1))
	AddIng("underground-pipe-segment-t2", ITEM("lead-plate", 1))
	Rem("underground-pipe-segment-t2", "iron-plate")
	
	
	--- tier 3
	AddIng("large-pipe-coupler", ITEM("niobium-plate", 1))
	AddIng("large-pipe-coupler", ITEM("plastic-bar", 2))
	AddIng("large-pipe-coupler", ITEM("rubber", 2))
	Rem("large-pipe-coupler", "steel-plate")
	
	AddIng("underground-pipe-segment-t3", ITEM("niobium-plate", 1))
	AddIng("underground-pipe-segment-t3", ITEM("plastic-bar", 2))
	AddIng("underground-pipe-segment-t3", ITEM("rubber", 2))
	Rem("underground-pipe-segment-t3", "steel-plate")
end
