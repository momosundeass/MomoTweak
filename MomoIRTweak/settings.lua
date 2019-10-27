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

CreateBoolSetting("momo-tieredSciencePack", true)
CreateBoolSetting("momo-tieredBelt", true)
CreateBoolSetting("momo-tieredInserter", true)
CreateBoolSetting("momo-tieredMotor", true)
CreateBoolSetting("momo-tieredAssembler", true)
CreateBoolSetting("momo-tieredFurnace", true)
CreateBoolSetting("momo-tieredCrusher", true)
CreateBoolSetting("momo-tieredComputer", true)

CreateIntSetting("momo-automationTechnologyCount", 10)
CreateIntSetting("momo-technologiesTimeMultiplier", 1)

CreateBoolSetting("momo-removeLongInserter", true)
CreateBoolSetting("momo-moveUndergroundPipePack", true)

CreateBoolSetting("momo-debug", false)