local AddIng = momoIRTweak.recipe.SafeAddIngredient
local ITEM = momoIRTweak.FastItem
local mixingFurnace = "mixing-furnace"
local NEW = momoIRTweak.recipe.NewRecipe
local UnlockAtRef = momoIRTweak.recipe.UnlockAtRef
local myItem = momoTweak.item

function momoTweak.recipe.StoneSlab()
	local slab = myItem.stoneSlab.name
	local recipe = NEW(mixingFurnace, slab, 1, {
		ITEM("stone-brick", 6),
		ITEM("solid-lime", 2),
		ITEM("stone", 2)
	}, 3)
	UnlockAtRef(recipe.name, "block-construction-2")
	
	AddIng("heat-pipe", ITEM(slab, 10))
	
	AddIng("angels-plating", ITEM(slab, 1))
	AddIng("grate-aluminium", ITEM(slab, 1))
	AddIng("grate-titanium", ITEM(slab, 1))
	AddIng("grate-tungsten", ITEM(slab, 2))
	
end

function momoTweak.recipe.CarbonPlate()
	local plate = myItem.carbonPlate.name
	local recipe = NEW(mixingFurnace, plate, 1, {
		ITEM("solid-carbon", 2),
		ITEM("stone-brick", 1)
	}, 3)
	UnlockAtRef(recipe.name, "angels-axle")
	
	AddIng("angels-axle", ITEM(plate, 1))
	
	AddIng("body-2", ITEM(plate, 1))
	AddIng("body-3", ITEM(plate, 1))
	AddIng("body-4", ITEM(plate, 2))
	AddIng("body-5", ITEM(plate, 3))
end