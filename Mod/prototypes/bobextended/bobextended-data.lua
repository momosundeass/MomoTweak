momoTweak.settings.isFrame = false
momoTweak.settings.isBelt = false
momoTweak.settings.isEletronics = false

if settings.startup["momo-enable-bob-extend"].value then
	if settings.startup["momo-enable-bob-extend-frame"].value then
		momoTweak.settings.isFrame = true
		require("bobextended-data-frame")
	end
	if settings.startup["momo-enable-bob-extend-belt"].value then
		momoTweak.settings.isBelt = true
		require("bobextended-data-belt")
	end
	if settings.startup["momo-enable-bob-extend-ele"].value then
		momoTweak.settings.isEletronics = true
		require("bobextended-data-ele")
	end
end