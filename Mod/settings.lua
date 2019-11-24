local order = 0

local function CreateIntSetting(name, default, minimum, maximum)
	data:extend({{
		type = "int-setting",
		name = name,
		minimum_value = minimum,
		maximum_value = maximum,
		default_value = default,
		setting_type = "startup",
		order = "a" .. (10000 + order)
	}})
	
	order = order + 1
end

local function CreateDoubleSetting(name, default, minimum, maximum)
	data:extend({{
		type = "double-setting",
		name = name,
		minimum_value = minimum,
		maximum_value = maximum,
		default_value = default,
		setting_type = "startup",
		order = "a" .. (10000 + order)
	}})
	
	order = order + 1
end

local function CreateBoolSetting(name, default)
	data:extend({{
		type = "bool-setting",
		name = name,
		default_value = default,
		setting_type = "startup",
		order = "a" .. (10000 + order)
	}})

	order = order + 1
end

CreateIntSetting("momo-enable-30-sci-preset", 0, 0, 3)
CreateBoolSetting("momo-fix-angels-chemistry-machine", true)
CreateBoolSetting("momo-30-sci-extreme", true)
CreateIntSetting("momo-30-sci-ingredient-amount", 0, 0, 100)

CreateBoolSetting("momo-harder-module", true)
CreateBoolSetting("momo-harder-logistic", true)
CreateBoolSetting("momo-enable-progress-battery", true)
CreateBoolSetting("momo-enable-progress-electronics", true)
CreateIntSetting("momo-expensive-wire-electronics", 2, 1, 100)
CreateBoolSetting("momo-enable-progress-furnace", true)

CreateBoolSetting("momo-enable-bob-extend", true)
CreateBoolSetting("momo-enable-bob-extend-frame", true)
CreateBoolSetting("momo-enable-bob-extend-belt", true)
CreateIntSetting("momo-enable-bob-extend-gem", 2, 0, 100)
CreateBoolSetting("momo-enable-bob-extend-engine", true)
CreateBoolSetting("momo-enable-bob-extend-ele", true)
CreateBoolSetting("momo-enable-bob-extend-slag", true)
-- CreateBoolSetting("momo-enable-bob-extend-int", true)

CreateBoolSetting("momo-buff-solar", true)
CreateDoubleSetting("momo-evo-reduce-factor", 0, 0, 50)

CreateBoolSetting("momo-is-debug-mode", false)

-- data:extend(
-- {
	-- {
    -- type = "int-setting",
    -- name = "momo-enable-30-sci-preset",
	-- minimum_value = 0,
	-- maximum_value = 3,
    -- setting_type = "startup",
    -- default_value = 0,
    -- order = "0",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-fix-angels-chemistry-machine",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "a0",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-30-sci-extreme",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "a1",
   -- },
   -- {
    -- type = "int-setting",
    -- name = "momo-30-sci-ingredient-amount",
    -- setting_type = "startup",
    -- minimum_value = 0,
	-- default_value = 0,
	-- maximum_value = 100,
    -- order = "a2",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-harder-module",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "a8",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-harder-logistic",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "a9",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-progress-battery",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "aa",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-progress-electronics",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "ab",
   -- },
   -- {
    -- type = "int-setting",
    -- name = "momo-expensive-wire-electronics",
    -- minimum_value = 1,
	-- maximum_value = 100,
    -- setting_type = "startup",
    -- default_value = 2,
    -- order = "ac",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-progress-furnace",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "ad",
   -- },
   
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-bob-extend",
    -- setting_type = "startup",
    -- default_value = false,
    -- order = "ba",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-bob-extend-frame",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "bb",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-bob-extend-belt",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "bc",
   -- },
   -- {
    -- type = "int-setting",
    -- name = "momo-enable-bob-extend-gem",
    -- setting_type = "startup",
    -- default_value = 2,
	-- minimum_value = 0,
	-- maximum_value = 100,
    -- order = "bd",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-bob-extend-engine",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "be",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-bob-extend-ele",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "bf",
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-enable-bob-extend-slag",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "bg",
   -- },
   -- -- {
    -- -- type = "bool-setting",
    -- -- name = "momo-enable-bob-extend-int",
    -- -- setting_type = "startup",
    -- -- default_value = true,
    -- -- order = "bc",
   -- -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-buff-solar",
    -- setting_type = "startup",
    -- default_value = true,
    -- order = "cc",
   -- },
   -- {
	-- type = "double-setting",
	-- name = "momo-evo-reduce-factor",
	-- setting_type = "startup",
	-- default_value = 0,
	-- minimum_value = 0,
	-- maximum_value = 50,
	-- order = "ccc"
   -- },
   -- {
    -- type = "bool-setting",
    -- name = "momo-is-debug-mode",
    -- setting_type = "startup",
    -- default_value = false,
    -- order = "zzzz",
   -- },
-- })