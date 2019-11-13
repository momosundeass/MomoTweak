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

CreateBoolSetting("momo-useHighResolution", true)

---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerRecipe", "")

CreateBoolSetting("momo-tieredSciencePack", true)
CreateBoolSetting("momo-harderSciencePackRecipe", true)
CreateBoolSetting("momo-tieredBelt", true)
CreateBoolSetting("momo-tieredInserter", true)
CreateBoolSetting("momo-tieredMotor", true)
CreateBoolSetting("momo-tieredAssembler", true)
CreateBoolSetting("momo-tieredFurnace", true)
CreateBoolSetting("momo-tieredCrusher", true)
CreateBoolSetting("momo-tieredComputer", true)
CreateBoolSetting("momo-tieredBot", true)
CreateBoolSetting("momo-harderElectronics", true)
CreateBoolSetting("momo-harderModule", true)
CreateBoolSetting("momo-increaseRubberUse", true)
CreateBoolSetting("momo-woodToCokeRecipe", true)
-- CreateBoolSetting("momo-increaseRubberUse", true)
-- CreateBoolSetting("momo-harderEngineUnit", true)

---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerTechnology", "")

CreateIntSetting("momo-automationTechnologyCount", 10)
CreateIntSetting("momo-technologiesTimeMultiplier", 1)

---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerCompatibility", "")

CreateBoolSetting("momo-removeLongInserter", true)
CreateBoolSetting("momo-moveUndergroundPipePack", true)
CreateBoolSetting("momo-spaceEx", true)

---------------------------------------------------------------------------------------------------
CreateStringSetting("momo-headerDebug", "")

CreateBoolSetting("momo-debug", false)