local order = 0
local function AutoOrder()
	order = order + 1
	return "a" .. (10000 + order)
end

local function CreateBoolSetting(settingName, defaultValue)
	data:extend({{
		type = "bool-setting",
		name = settingName,
		setting_type = "startup",
		default_value = defaultValue,
		order = AutoOrder()
	}})
end

CreateBoolSetting("momo-pipe-use-recipes", true)

local haveValve = mods["angelspetrochem"]
CreateBoolSetting("momo-pipe-disabled-valve", not haveValve)