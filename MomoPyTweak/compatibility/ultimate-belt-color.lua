local function rgb(r, g, b)
	return {r = r / 255, g = g / 255, b = b / 255}
end

local function ApplyColor(belt, ratio)
  return {belt.r * ratio, belt.g * ratio, belt.b * ratio}
end

local colors = {
    [1] = rgb(250, 186, 0),
    [2] = rgb(250, 69, 15),
    [3] = rgb(38, 171, 181),
    [4] = rgb(75, 200, 100),
    [5] = rgb(221, 134, 86),
    [6] = rgb(131, 86, 209),
    [7] = rgb(85, 83, 215),
    [8] = rgb(0, 0, 0)
}

local belts = {
	["transport-belt"]         = colors[1],
	["fast-transport-belt"]    = colors[2],
	["express-transport-belt"] = colors[3],
	["ultra-fast-belt"]        = colors[4],
	["extreme-fast-belt"]      = colors[5],
	["ultra-express-belt"]     = colors[6],
	["extreme-express-belt"]   = colors[7],
	["ultimate-belt"]          = colors[8]
}

local splitters = {
	["splitter"]                   = ApplyColor(colors[1], 0.90),
	["fast-splitter"]              = ApplyColor(colors[2], 0.90),
	["express-splitter"]           = ApplyColor(colors[3], 0.90),
	["ultra-fast-splitter"]        = ApplyColor(colors[4], 0.90),
	["extreme-fast-splitter"]      = ApplyColor(colors[5], 0.90),
	["ultra-express-splitter"]     = ApplyColor(colors[6], 0.90),
	["extreme-express-splitter"]   = ApplyColor(colors[7], 0.90),
	["original-ultimate-splitter"] = ApplyColor(colors[8], 0.90)
}
local uBelts = {
	["underground-belt"]                   = ApplyColor(colors[1], 0.70),
	["fast-underground-belt"]              = ApplyColor(colors[2], 0.70),
	["express-underground-belt"]           = ApplyColor(colors[3], 0.70),
	["ultra-fast-underground-belt"]        = ApplyColor(colors[4], 0.70),
	["extreme-fast-underground-belt"]      = ApplyColor(colors[5], 0.70),
	["ultra-express-underground-belt"]     = ApplyColor(colors[6], 0.70),
	["extreme-express-underground-belt"]   = ApplyColor(colors[7], 0.70),
	["original-ultimate-underground-belt"] = ApplyColor(colors[8], 0.70),
}

function momoPyTweak.compatibility.UltimateBeltColor()
	for	belt, color in pairs(belts) do
		data.raw["transport-belt"][belt].friendly_map_color = color
	end
	
	for	splitter, color in pairs(splitters) do
		data.raw["splitter"][splitter].friendly_map_color = color
	end
	
	for	uBelt, color in pairs(uBelts) do
		data.raw["underground-belt"][uBelt].friendly_map_color = color
	end
end