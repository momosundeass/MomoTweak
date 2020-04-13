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

local function CreateFloatSetting(settingName, defaultValue)
	data:extend({{
		type = "double-setting",
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

CreateBoolSetting("momo-useHighResolution", true)
---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerRecipe", "")
---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerTechnology", "")

CreateIntSetting("momo-technologiesTimeMultiplier", 3)

---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerCompatibility", "")

---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerDebug", "")

CreateBoolSetting("momo-debug", false)