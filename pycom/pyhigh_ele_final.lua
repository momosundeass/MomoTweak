local e = momoTweak.ele

local function ins(name, alt) 
	if data.raw.item[name] then return name end
	return alt
end

local function ins2(name, alt, alt2) 
	if data.raw.item[name] then return name end
	if data.raw.item[alt] then return alt end
	return alt2
end

local n = momoTweak.genRecipeNameFromResult({"red-sci", 5})
bobmods.lib.recipe.remove_ingredient(n, e.circuit[1])
momoTweak.replace_with_ingredient(n, "pcb1", {e.unit[1], 2})

momoTweak.set_amount_ingredient("more-science-pack-5", {"pcb1", 1})

if not mods["angelspetrochem"] then
	n = momoTweak.genRecipeNameFromResult({"cpy", 4})
	bobmods.lib.recipe.remove_ingredient(n, e.board[2])
	bobmods.lib.recipe.add_ingredient(n, {"phenolicboard", 4})
	n = momoTweak.genRecipeNameFromResult({"pre-high-sci", 1})
	bobmods.lib.recipe.remove_ingredient(n, e.board[3])
	bobmods.lib.recipe.add_ingredient(n, {"fiberglass", 4})
end

momoTweak.createRecipe("electronics-machine", {{e.comp[1], 5}}, {{e.cable[2], 2}, {ins2("solid-carbon", "carbon", "iron-plate"), 1}}, 2, true)

momoTweak.createRecipe("electronics-machine", {{e.comp[2], 5}}, {
	{e.cable[2], 2}, 
	{"plastic-bar", 1},
	{ins("silicon-wafer", "silicon"), 2}
}, 3.5, "basic-electronics")
local name = momoTweak.createRecipe("electronics-machine", {{e.comp[3], 5}}, {
	{e.cable[2], 2}, 
	{ins("silicon-wafer", "silicon"), 4},
	{"plastic-bar", 1},
	{"solder", 2}
}, 5, "basic-electronics")
if data.raw.fluid["liquid-sulfuric-acid"] then
	bobmods.lib.recipe.add_ingredient(name, {type="fluid", name="liquid-sulfuric-acid", amount=5})
end

name = momoTweak.createRecipe("electronics-machine", {{e.comp[4], 5}}, {
	{e.cable[4], 4}, 
	{"silicon-nitride", 1},
	{ins("silicon-wafer", "silicon"), 6},
	{"solder", 4}
}, 7, "advanced-electronics")
if data.raw.fluid["liquid-sulfuric-acid"] then
	bobmods.lib.recipe.add_ingredient(name, {type="fluid", name="liquid-sulfuric-acid", amount=5})
end

local nitrogen = "nitrogen"
if data.raw.fluid["gas-nitrogen"] then nitrogen = "gas-nitrogen" end

momoTweak.createRecipe("crafting-with-fluid", {{"silicon-nitride", 1}}, {
	{"silicon-powder", 1},
	{type="fluid", name=nitrogen, amount=1.25}
}, 7.5, "silicon-processing")

data.raw.item[e.unit[1]].localised_name = "Electronic unit"
data.raw.item[e.unit[2]].localised_name = "Advanced Electronic unit"
data.raw.item[e.unit[3]].localised_name = "Processing unit"

data.raw.item[e.comp[2]].localised_name = "Advanced Electronic components"
data.raw.item[e.comp[4]].localised_name = "ALUs"


--recipe is a thing
bobmods.lib.recipe.add_ingredient("resistor2", {e.comp[1], 3})
bobmods.lib.recipe.add_ingredient("resistor3", {e.comp[1], 5})
bobmods.lib.recipe.add_ingredient("resistor3", {"resistor2", 1})

bobmods.lib.recipe.add_ingredient("capacitor3", {"capacitor2", 2})

bobmods.lib.recipe.add_ingredient("diode3", {e.comp[1], 4})

bobmods.lib.recipe.add_ingredient("inductor2", {e.comp[1], 4})
bobmods.lib.recipe.add_ingredient("inductor3", {e.comp[2], 3})

bobmods.lib.recipe.add_ingredient("transistor", {e.comp[2], 4})

bobmods.lib.recipe.add_ingredient("microchip", {e.comp[2], 4})
bobmods.lib.recipe.add_ingredient("microchip", {e.comp[3], 6})

bobmods.lib.tech.add_recipe_unlock("advanced-electronics", e.cable[4])
bobmods.lib.recipe.add_ingredient("processor", {e.comp[4], 8})

bobmods.lib.recipe.add_ingredient("pcb3-2", {e.comp[3], 5})
bobmods.lib.recipe.add_ingredient("pcb3-2", {e.comp[2], 8})
bobmods.lib.recipe.add_ingredient("pcb3-2", {e.comp[1], 12})

-- graphic replace
local last = data.raw.item[e.unit[1]].icon
data.raw.item[e.unit[1]].icon = data.raw.item[e.unit[2]].icon
data.raw.item[e.unit[2]].icon = data.raw.item[e.unit[3]].icon
data.raw.item[e.unit[3]].icon = data.raw.item[e.unit[4]].icon
data.raw.item[e.unit[4]].icon = last
-- ------------------------------------------------------

-- increase solder cost ---------------------------------

momoTweak.set_amount_ingredient(e.unit[1], {"solder", 5})
momoTweak.set_amount_ingredient(e.unit[2], {"solder", 5})
momoTweak.set_amount_ingredient(e.unit[3], {"solder", 8})


if settings.startup["momo-expensive-wire-electronics"].value then
	local multipler = settings.startup["momo-expensive-wire-electronics"].value * 2
	momoTweak.multiple_amount_ingredient("tinned-copper-cable", "tin-plate", multipler)
	
	if data.raw.item["angels-wire-coil-tin"] then
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-tin-casting", "liquid-molten-tin", multipler)
	  momoTweak.multiple_amount_ingredient("angels-wire-coil-tin-casting-fast", "liquid-molten-tin", multipler)
	end
end



-- pcb 1 without iron ------------------------------------------------------
momoTweak.replace_with_ingredient("pcb1", "copper-plate", {e.cable[1], 4})
momoTweak.createRecipe("pcb",{{"pcb1", 1}}, {{"formica", 3 }, {e.cable[1], 6}}, 40, true)
momoTweak.replace_with_ingredient("polishing-wheel", "wood", {"treated-wood", 3})

----------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- fix duplicate item in recipe
momoTweak.set_amount_ingredient("assembling-machine-1", {"pcb1", 3})
-------------------------------------------------------------------------------

momoTweak.replace_with_ingredient("robot-brain-construction-2", "diamagnetic-material", {"nbti-alloy", 2})
momoTweak.replace_with_ingredient("robot-brain-logistic-2", "diamagnetic-material", {"nbti-alloy", 2})

momoTweak.replace_with_ingredient("robot-brain-construction", "paramagnetic-material", {"rayon", 1})
momoTweak.replace_with_ingredient("robot-brain-logistic", "paramagnetic-material", {"rayon", 1})

































