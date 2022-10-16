--- using
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient
local Replace = momoIRTweak.recipe.ReplaceIngredient
local MergeSubGroup = momoIRTweak.subgroups.MergeSubGroup

function momoPyTweak.compatibility.PipePack()
	momoIRTweak.technology.SetPrerequire("advanced-underground-piping", {"py-storage-tanks"})
	
	data.raw.item["small-pipe-coupler"].stack_size = 500
	data.raw.item["medium-pipe-coupler"].stack_size = 500
	data.raw.item["large-pipe-coupler"].stack_size = 500
	
	data.raw.item["underground-pipe-segment-t1"].stack_size = 500
	data.raw.item["underground-pipe-segment-t2"].stack_size = 500
	data.raw.item["underground-pipe-segment-t3"].stack_size = 500
	
	momoIRTweak.recipe.ReplaceIngredient("pipe-to-ground", "iron-plate", ITEM("stone-brick", 5))
	
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
	
	
	momoIRTweak.ChangeGroup("advanced-underground-piping", "logistics")
	
	

	MergeSubGroup({
		"one-to-one-forward-pipe", "one-to-two-perpendicular-pipe", "one-to-three-forward-pipe", "one-to-four-pipe",
		"underground-i-pipe", "underground-L-pipe", "underground-t-pipe", "underground-cross-pipe", 
		"4-to-4-pipe"}, 
	"pipes-to-ground")
	
	MergeSubGroup({
		"one-to-one-forward-t2-pipe", "one-to-two-perpendicular-t2-pipe", "one-to-three-forward-t2-pipe", "one-to-four-t2-pipe",
		"underground-i-t2-pipe", "underground-L-t2-pipe", "underground-t-t2-pipe", "underground-cross-t2-pipe"}, 
	"pipes-to-ground-t2")
	
	MergeSubGroup({
		"one-to-one-forward-t3-pipe", "one-to-two-perpendicular-t3-pipe", "one-to-three-forward-t3-pipe", "one-to-four-t3-pipe",
		"underground-i-t3-pipe", "underground-L-t3-pipe", "underground-t-t3-pipe", "underground-cross-t3-pipe"},
	"pipes-to-ground-t3")
	
end
