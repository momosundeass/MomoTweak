local ITEM = momoIRTweak.FastItem

function momoPyTweak.compatibility.TransportDrones()
	if not (settings.startup["momo-transportDrones"].value) then
		return
	end
	
	momoIRTweak.technology.SetPrerequire("transport-system", "engine")
	momoIRTweak.technology.SetIngredient("transport-system", {
		ITEM(momoPyTweak.science.pack1 , 1)
	})
end