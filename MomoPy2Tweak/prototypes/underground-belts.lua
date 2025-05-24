local item = MomoLib.MakeIngredient

local function Icon(path)
	return "__MomoPy2Tweak__/graphics/icons/" .. path .. ".png"
end

local function AssignSheets(prototype, path)
	local sheet = prototype.structure.direction_in.sheet
	-- sheet.size = {384,384}
	sheet.filename = "__MomoPy2Tweak__/graphics/entity/underground-belt/" .. path .. ".png"
	
	sheet = prototype.structure.direction_out.sheet
	-- sheet.size = {384,384}
	sheet.filename = "__MomoPy2Tweak__/graphics/entity/underground-belt/" .. path .. ".png"
	
	sheet = prototype.structure.direction_in_side_loading.sheet
	-- sheet.size = {384,384}
	sheet.filename = "__MomoPy2Tweak__/graphics/entity/underground-belt/" .. path .. ".png"
	
	sheet = prototype.structure.direction_out_side_loading.sheet
	-- sheet.size = {384,384}
	sheet.filename = "__MomoPy2Tweak__/graphics/entity/underground-belt/" .. path .. ".png"
end



data:extend({
	MomoLib.ClonePrototype(data.raw.item["underground-belt"], "underground-belt-extend", function(p)
		p.icon_size = 32
		p.icon = Icon("32/underground-belt")
	end),
	MomoLib.ClonePrototype(data.raw["underground-belt"]["underground-belt"], "underground-belt-extend", function(p) 
		p.max_distance = 9*1.5
		AssignSheets(p, "structure")
	end),
	MomoLib.recipe.New({item("underground-belt", 3), item("stone", 10)}, item("underground-belt-extend")),
	
	MomoLib.ClonePrototype(data.raw.item["fast-underground-belt"], "fast-underground-belt-extend", function(p)
		p.icon_size = 32
		p.icon = Icon("32/fast-underground-belt")
	end),
	MomoLib.ClonePrototype(data.raw["underground-belt"]["fast-underground-belt"], "fast-underground-belt-extend", function(p) 
		p.max_distance = 17*1.5
		AssignSheets(p, "fast-structure")
	end),
	MomoLib.recipe.New({
		item("underground-belt-extend", 2),
		item("fast-underground-belt"),
		item("stainless-steel", 10)
		},
		item("fast-underground-belt-extend")),
	
	MomoLib.ClonePrototype(data.raw.item["express-underground-belt"], "express-underground-belt-extend", function(p)
		p.icon_size = 32
		p.icon = Icon("32/express-underground-belt")
	end),
	MomoLib.ClonePrototype(data.raw["underground-belt"]["express-underground-belt"], "express-underground-belt-extend", function(p) 
		p.max_distance = 33*1.5
		AssignSheets(p, "express-structure")
	end),
	MomoLib.recipe.New({
	item("fast-underground-belt-extend", 2),
	item("express-underground-belt"),
	item("super-steel", 10)
	},
	item("express-underground-belt-extend"))
})

MomoLib.technology.AddRecipe("logistics", "underground-belt-extend")
MomoLib.technology.AddRecipe("logistics-2", "fast-underground-belt-extend")
MomoLib.technology.AddRecipe("logistics-3", "express-underground-belt-extend")