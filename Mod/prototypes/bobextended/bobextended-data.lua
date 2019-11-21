require("bobextended-data-frame")
require("bobextended-data-belt")
require("bobextended-data-ele")

function momoTweak.require.BobExtendedData()
	momoTweak.settings.isFrame = false
	momoTweak.settings.isBelt = false
	momoTweak.settings.isEletronics = false

	if not momoTweak.extended then momoTweak.extended = {} end

	if settings.startup["momo-enable-bob-extend"].value then
		if settings.startup["momo-enable-bob-extend-frame"].value then
			momoTweak.settings.isFrame = true
			momoTweak.require.ExtendedDataFrame()
		end
		if settings.startup["momo-enable-bob-extend-belt"].value then
			momoTweak.settings.isBelt = true
			momoTweak.require.ExtendedDataBelt()
		end
		if settings.startup["momo-enable-bob-extend-ele"].value then
			momoTweak.settings.isEletronics = true
			momoTweak.require.ExtendedDataElectronics()
		end
	end
end