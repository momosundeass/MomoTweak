if momoTweak.pycoal and data.raw.recipe["more-science-pack-8"] then 
	momoTweak.newsciItem("plate-pack-1")
	
	local tech = momoTweak.get_tech_of_recipe("more-science-pack-8")
	momoTweak.createRecipe("advanced-crafting", {{"plate-pack-1", 1}}, {{"lead-plate", 2}}, 2, tech, "lead")
	momoTweak.createRecipe("advanced-crafting", {{"plate-pack-1", 1}}, {{"tin-plate", 2}}, 2, tech, "tin")
	
end

if momoTweak.pyhigh and mods["angelspetrochem"] then
	require("advanced-plastics")
end