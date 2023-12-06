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

CreateBoolSetting("momo-improveInserter", true)
CreateBoolSetting("momo-undergroundBelt", true)
CreateBoolSetting("momo-module", true)
CreateBoolSetting("momo-stacksize", true)
CreateBoolSetting("momo-pipetoground", true)
CreateBoolSetting("momo-recipe", true)

CreateStringSetting("momo-headerCompatibility", "")
CreateBoolSetting("momo-undergroundPipePack", true)
CreateBoolSetting("momo-smartInserter", true)
CreateBoolSetting("momo-bobInserter", true)
CreateBoolSetting("momo-ultimateBelt", true)
CreateBoolSetting("momo-transportDrones", true)
CreateBoolSetting("momo-miniloader", true)