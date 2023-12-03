function momoPyTweak.updates.Module()
	local ITEM = momoIRTweak.FastItem

	data.raw.module["speed-module"].effect = {
		speed = {bonus = 0.4},
		consumption = {bonus = 0.25}
	}
	data.raw.module["speed-module-2"].effect = {
		speed = {bonus = 1},
		consumption = {bonus = 0.5}
	}
	data.raw.module["speed-module-3"].effect = {
		speed = {bonus = 1.8},
		consumption = {bonus = 0.8}
	}
	
	data.raw.module["effectivity-module"].effect = {
		consumption = {bonus = -0.5}
	}
	data.raw.module["effectivity-module-2"].effect = {
		consumption = {bonus = -0.8}
	}
	data.raw.module["effectivity-module-3"].effect = {
		consumption = {bonus = -1.2}
	}
end
