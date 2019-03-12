if settings.startup["momo-enable-bob-extend"].value then
	if settings.startup["momo-enable-bob-extend-frame"].value then
		require("bobextended-update-frame")
	end
	
	if settings.startup["momo-enable-bob-extend-gem"].value > 0 then
		require("bobextended-update-gem")
	end
end