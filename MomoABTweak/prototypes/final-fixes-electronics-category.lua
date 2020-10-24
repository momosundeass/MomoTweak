function momoTweak.finalFixes.ElectronicsCategory()
	for _, e in pairs(momoTweak.electronics) do
		momoIRTweak.recipe.SetCategory(e, "electronics")
	end
	
	for _, c in pairs(momoTweak.components) do
		momoIRTweak.recipe.SetCategory(c, "electronics")
	end
	
	local recipes = {momoTweak.board.grey, "circuit-grey-board-alternative", momoTweak.circuit.grey}
	for _, e in pairs(recipes) do
		momoIRTweak.recipe.SetCategory(e, "electronics")
	end
end