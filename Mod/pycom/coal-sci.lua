if (momoTweak.mods.sct) then
	momoTweak.set_all_ingredient("flask", {
		{"sct-t1-ironcore", 1},
		{"sct-t1-magnet-coils", 2},
		{"glass", 3}
	})
	momoTweak.createRecipe("advanced-crafting", {{"flask", 2}}, {
		{"sct-t1-ironcore", 2},
		{"sct-t1-magnet-coils", 2},
		{"glass", 6}
	}, 4, "automation-2")
else
	momoTweak.replace_with_ingredient("flask", "wood", {"copper-plate", 3})
	momoTweak.replace_with_ingredient("flask", "glass", {"glass", 3})
	momoTweak.createRecipe("advanced-crafting", {{"flask", 1}}, {
		{"iron-plate", 2},
		{"copper-plate", 1},
		{"glass", 3}
	}, 2, "automation-2")
end
