require("MomoLib/data-init")

data:extend({
	MomoLib.ClonePrototype(data.raw.item["underground-belt"], "underground-belt-extend"),
	MomoLib.ClonePrototype(data.raw["underground-belt"]["underground-belt"], "underground-belt-extend", function(p) 
		p.max_distance = 9*1.5
	end),
	
	MomoLib.ClonePrototype(data.raw.item["fast-underground-belt"], "fast-underground-belt-extend"),
	MomoLib.ClonePrototype(data.raw["underground-belt"]["fast-underground-belt"], "fast-underground-belt-extend", function(p) 
		p.max_distance = 17*1.5
	end),
	
	MomoLib.ClonePrototype(data.raw.item["express-underground-belt"], "express-underground-belt-extend"),
	MomoLib.ClonePrototype(data.raw["underground-belt"]["express-underground-belt"], "express-underground-belt-extend", function(p) 
		p.max_distance = 33*1.5
	end)
})