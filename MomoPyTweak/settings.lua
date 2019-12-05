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

local function CreateStringSetting(settingName, defaultValue)
	data:extend({{
		type = "string-setting",
		name = settingName,
		setting_type = "startup",
		default_value = defaultValue,
		order = AutoOrder(),
		allow_blank = true,
	}}) 
end

local function CreateIntSetting(settingName, defaultValue)
	data:extend({{
		type = "int-setting",
		name = settingName,
		setting_type = "startup",
		default_value = defaultValue,
		order = AutoOrder(),
	}}) 
end


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------

CreateBoolSetting("momo-inserter", true)
CreateBoolSetting("momo-undergroundBelt", true)
CreateBoolSetting("momo-miner", true)
CreateBoolSetting("momo-solarPanel", true)

CreateBoolSetting("momo-electricPole", true)
CreateBoolSetting("momo-removeLongInserter", true)
CreateBoolSetting("momo-module", true)

CreateStringSetting("momo-headerTechnology", "")

CreateIntSetting("momo-automationTechnologyCount", 5)
CreateIntSetting("momo-technologiesTimeMultiplier", 2)

CreateStringSetting("momo-headerDebug", "")

CreateBoolSetting("momo-debug", false)