function momoTweak.data.ExtendedDataBelt()
	local ITEM = momoIRTweak.FastItem

	momoTweak.extended.belt = {}
	momoTweak.extended.belt.map = {}
	momoTweak.extended.belt.map.a = "underground-belt"
	momoTweak.extended.belt.map.purple = "turbo-underground-belt"
	momoTweak.extended.belt.map.green = "ultimate-underground-belt"

	data:extend({{
		type="item-subgroup",
		name="momo-longer-belt",
		group="logistics",
		order=data.raw["item-subgroup"][ data.raw.item["underground-belt"].subgroup ].order.."z"
	},{
		type="item-subgroup",
		name="momo-longer-belt-reverse",
		group="logistics",
		order ="zzz"
	}})

	local function namegen(class)
		return class.."-alt-underground-belt"
	end

	local function getAnimationSet(class)
		if class == "a" then return data.raw["underground-belt"]["underground-belt"].belt_animation_set end
		if class == "fast" then return data.raw["underground-belt"]["fast-underground-belt"].belt_animation_set end
		if class == "express" then return data.raw["underground-belt"]["express-underground-belt"].belt_animation_set end
		if class == "purple" then return purple_belt_animation_set end
		if class == "green" then return green_belt_animation_set end
	end

	local function Create(class)
		local name = namegen(class)
		data:extend({{
				type = "item",
				  name = name,
				  icon = "__MomoABTweak__/graphics/icons/32/"..class.."-underground-belt.png",
				  icon_size = 32,
				  subgroup = "momo-longer-belt",
				  order = "f[" .. name .. "]",
				  place_result = name,
				  stack_size = 50
			  },
			{
			type = "underground-belt",
			name = name,
			icon = "__MomoABTweak__/graphics/icons/32/"..class.."-underground-belt.png",
			icon_size=32,
			speed = bobmods.logistics.belt_speed(1),
			flags = {"placeable-neutral", "player-creation"},
			minable = {hardness = 0.2, mining_time = 0.5, result = name},
			max_health = 140,
			corpse = "small-remnants",
			underground_sprite =
			{
			  filename = "__core__/graphics/arrows/underground-lines.png",
			  priority = "high",
			  width = 64,
			  height = 64,
			  x = 64,
			  scale = 0.5
			},
			underground_remove_belts_sprite =
			{
			  filename = "__core__/graphics/arrows/underground-lines-remove.png",
			  priority = "high",
			  width = 64,
			  height = 64,
			  x = 64,
			  scale = 0.5
			},
			resistances =
			{
			  {
				type = "fire",
				percent = 60
			  },
			  {
				type = "impact",
				percent = 30
			  }
			},
			collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			distance_to_enter = 0.5,
			animation_speed_coefficient = 32,
			belt_animation_set = getAnimationSet(class),
			fast_replaceable_group = "transport-belt",
			
			max_distance = 10,
			structure =
			{
			  direction_in = {
				sheet = {
				  filename = "__MomoABTweak__/graphics/entity/"..class.."-underground-belt-structure.png",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96,
				} },
			  direction_out = {
				sheet = {
				  filename = "__MomoABTweak__/graphics/entity/"..class.."-underground-belt-structure.png",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				} },
			  direction_in_side_loading = {
				sheet = {
				  filename = "__MomoABTweak__/graphics/entity/"..class.."-underground-belt-structure.png",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*3
				} },
			  direction_out_side_loading = {
				sheet = {
				  filename = "__MomoABTweak__/graphics/entity/"..class.."-underground-belt-structure.png",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*2
				} },
			  back_patch = {
				sheet = {
				  filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				} },
			  front_patch = {
				sheet = {
				  filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				} },
			},
		  },
		  
	})
	end

	local function setLevel(class, level)
		if data.raw["underground-belt"][namegen(class)] then
			data.raw.item[namegen(class)].order = "f"..level
			-- config distance
			data.raw["underground-belt"][namegen(class)].max_distance = bobmods.logistics.belt_distance(level) * 2
			-- config speed
			if settings.startup["bobmods-logistics-beltoverhaul"].value == true and 
			   settings.startup["bobmods-logistics-beltoverhaulspeed"].value == true then
			   data.raw["underground-belt"][namegen(class)].speed = bobmods.logistics.belt_speed(level)
			end
		end
	end

	local function CreateRecipe(class, order, mixer, tech)
		local levelMap = {}
		
		local ing = class .. "-underground-belt"
		if class == "a" then ing = "underground-belt" end
		if class == "purple" then ing = "turbo-underground-belt" end
		if class == "green" then ing = "ultimate-underground-belt" end
		local ings = {
			ITEM(ing, 2),
		}
		
		for _, ii in pairs(mixer) do
			table.insert(ings, ii)
		end
		
		data:extend({{
			  type = "recipe",
			  name = namegen(class),
			  enabled = "false",
			  energy_required = 5,
			  category = "crafting",
			  ingredients = ings,
			  result = namegen(class),
			  result_count = 2
		}})
		
		bobmods.lib.tech.add_recipe_unlock(tech, namegen(class))
		momoTweak.extended.belt[class] = namegen(class)
	end

	if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
		Create("a")
		Create("fast")
		Create("express")
		Create("purple")
		Create("green")
	  if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
			setLevel("a", 2)
			setLevel("fast", 3)
			setLevel("express", 4)
			setLevel("purple", 5)
			setLevel("green", 6)
		else
			setLevel("a", 1)
			setLevel("fast", 2)
			setLevel("express", 3)
			setLevel("purple", 4)
			setLevel("green", 5)
		end
		
		-- create recipe and put in tech
		local mixer = "stone-brick"
		CreateRecipe("a", 1,{
			{mixer, 24}, 
			{"iron-plate", 10}
		}, "logistics")
		
		if data.raw.item["clay-brick"] then mixer = "clay-brick" end
		
		CreateRecipe("fast", 2,{
			{mixer, 36},
			{"iron-plate", 15},
			ITEM(namegen("a"), 2)
		}, "logistics-2")
		CreateRecipe("express", 3,{
			{mixer, 48},
			{"steel-plate", 4},
			{"bronze-alloy", 10},
			ITEM(namegen("fast"), 2)
		}, "logistics-3")
		CreateRecipe("purple", 4,{
			{mixer, 60},
			{"invar-alloy", 20},
			{"bronze-alloy", 10},
			ITEM(namegen("express"), 2)
		}, "bob-logistics-4")
		CreateRecipe("green", 5,{
			{mixer, 72},
			{"titanium-plate", 20},
			{"brass-alloy", 10},
			ITEM(namegen("purple"), 2)
		}, "bob-logistics-5")
	else
		Create("a")
		Create("fast")
		Create("express")
		data.raw["underground-belt"][namegen("a")].max_distance = 10
		data.raw["underground-belt"][namegen("fast")].max_distance = 20
		data.raw["underground-belt"][namegen("express")].max_distance = 30
		-- create recipe and put in tech
		local mixer = "stone-brick"
		recipe("a", 1,{{mixer, 24}}, "logistics")
		if data.raw.item["clay-brick"] then mixer = "clay-brick" end
		
		CreateRecipe("fast", 2,{{mixer, 36}}, "logistics-2")
		CreateRecipe("express", 3,{{mixer, 48}}, "logistics-3")
	end

end