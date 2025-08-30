local settings = {}
settings.order = 0
function settings.AutoOrder()
	settings.order = settings.order + 1
	return "a" .. (10000 + settings.order)
end

function settings.CreateBoolSetting(settingName, defaultValue)
	data:extend({{
		type = "bool-setting",
		name = settingName,
		setting_type = "startup",
		default_value = defaultValue,
		order = settings.AutoOrder()  
	}})
end

function settings.CreateStringSetting(settingName, defaultValue)
	data:extend({{
		type = "string-setting",
		name = settingName,
		setting_type = "startup",
		default_value = defaultValue,
		order = settings.AutoOrder(),
		allow_blank = true,
	}}) 
end

function settings.CreateIntSetting(settingName, defaultValue)
	data:extend({{
		type = "int-setting",
		name = settingName,
		setting_type = "startup",
		default_value = defaultValue,
		order = settings.AutoOrder(),
	}}) 
end

return settings