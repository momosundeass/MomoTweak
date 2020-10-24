local ITEM = momoIRTweak.FastItem

function momoPyTweak.updates.EarlyLandfill()
	momoIRTweak.technology.SetIngredient("landfill", {
		ITEM(momoPyTweak.science.pack1, 1)
	})
end
