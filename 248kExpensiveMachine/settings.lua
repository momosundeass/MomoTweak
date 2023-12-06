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

CreateBoolSetting("momo-2k2-wood-pole", true)
CreateBoolSetting("momo-2k2-burner-miner", true)
CreateBoolSetting("momo-2k2-burner-inserter", true)
CreateBoolSetting("momo-2k2-electronics", true)
CreateBoolSetting("momo-2k2-science", true)
CreateBoolSetting("momo-2k2-248k", true)
