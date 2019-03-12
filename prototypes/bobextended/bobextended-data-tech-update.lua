if settings.startup["momo-enable-bob-extend"].value then
	if settings.startup["momo-enable-bob-extend-frame"].value then
		require("bobextended-data-frame")
	end
	if settings.startup["momo-enable-bob-extend-belt"].value then
		require("bobextended-data-belt")
	end
end