-- prototype
local funcs = {}

function funcs.BeltSpeed(prototype, itemPerSec)
	if type(prototype) == "string" then
		MomoLib.GetPrototype("transport-belt", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("underground-belt", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("splitter", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("loader-1x1", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("loader", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("linked-belt", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("lane-splitter", prototype, function(p) prototype = p end, false)
	end
	prototype.speed = itemPerSec / 480
end

MomoLib.prototype = funcs