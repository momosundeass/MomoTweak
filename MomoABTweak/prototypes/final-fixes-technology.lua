local ITEM = momoIRTweak.FastItem
local sci = momoTweak.science

function momoTweak.finalFixes.TurretTechnologyIngredient()
	momoIRTweak.technology.SetIngredient("turrets", {
		ITEM(sci.grey, 1),
		ITEM(sci.a.basic, 2)
	})
end

function momoTweak.finalFixes.EarlyBasicTechnology()
	momoIRTweak.technology.SetPrerequire("tech-specialised-labs-basic", {"tech-red-packs"})
	momoIRTweak.recipe.ReplaceAllIngredient("angels-basic-lab-2", {
		ITEM("angels-basic-lab", 1),
		ITEM("block-construction-1", 3),
		ITEM("block-electronics-1", 8),
	})
end

function momoTweak.finalFixes.Technology()
	for _, t in pairs(data.raw.technology) do
		t.unit.time = t.unit.time * momoTweak.settings.technologyTimeMultiple
	end
end