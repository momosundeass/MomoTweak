if not momoTweak.compatibility.modularChests then momoTweak.compatibility.modularChests = {} end

--- using
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local ITEM = momoIRTweak.FastItem

function momoTweak.compatibility.modularChests.Recipe() 
	AddIng("modular-chest",       ITEM("fast-splitter", 1))
	AddIng("modular-chest",       ITEM("fast-transport-belt", 2))
	AddIng("modular-steel-chest", ITEM("fast-splitter", 1))
	AddIng("modular-steel-chest", ITEM("fast-transport-belt", 2))
end

function momoTweak.compatibility.modularChests.Technology()
	data.raw.recipe["modular-chest"].enabled = false
	data.raw.recipe["modular-steel-chest"].enabled = false
	local unlock_tech = momoTweak.get_tech_of_recipe("train-stop")
	bobmods.lib.tech.add_recipe_unlock(unlock_tech, "modular-chest")
	bobmods.lib.tech.add_recipe_unlock(unlock_tech, "modular-steel-chest")
end