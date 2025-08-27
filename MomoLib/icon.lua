local funcs = {}
funcs.DefaultSize = defines.default_icon_size

function funcs.Get(iconPath, size)
	return MomoLib.Graphics("icons/" .. iconPath, size)
end

function funcs.FromIngredient(item)
	return funcs.FromIngredientWithSize(item)[1]
end
function funcs.FromIngredientWithSize(item)
	if type(item) == "table" then item = item.name end
	local i = ""
	local s = funcs.DefaultSize
	if MomoLib.GetIngredient(item, function(p) 
		if p.icon == nil or p.icon == "" then
			i = p.icons[1].icon
			s = p.icons[1].icon_size or funcs.DefaultSize
		return end
		i = p.icon
		s = p.icon_size or funcs.DefaultSize
	end) then
		return {i, s, icon = i, icon_size = s}
	end
	return {item, s, icon = item, icon_size = s}
end

function funcs.MakeLayeredItemIcon(bgItem, fgItem)
	local bg = funcs.FromIngredientWithSize(bgItem)
	local fg = funcs.FromIngredientWithSize(fgItem)
	
	return {
		{icon=bg[1], scale=0.5, icon_size=bg[2]},
		{icon=fg[1], scale=0.75, icon_size=fg[2], shift={16,16}}
	}
end

function funcs.MakeIconTable(iconPath)
	if type(iconPath) == "table" and #iconPath == 2 and type(iconPath[2]) == "number" then
		return {icon = iconPath[1], icon_size = iconPath[2]}	
	end
	return {icon = iconPath, icon_size = funcs.DefaultSize}
end

-- required quality base mod (data-updates)
function funcs.RecycleIcons(itemPrototype)
	if type(itemPrototype) == "string" then
		if not (MomoLib.GetIngredient(itemPrototype, function(p) itemPrototype = p end)) then
			itemPrototype = funcs.MakeIconTable(itemPrototype)
		end
	end
	return generate_recycling_recipe_icons_from_item(itemPrototype)
end

function funcs.EntityModuleIcons(entity)
	if entity.icons_positioning ~= nil then
		for i, icons in pairs(entity.icons_positioning) do
			if icons.inventory_index == defines.inventory.crafter_modules then
				return icons
			end
		end
	else
		entity.icons_positioning = {}
	end
	local icons = {
		inventory_index = defines.inventory.crafter_modules,
		shift = {0, 0.8},
		max_icons_per_row = 3,
		max_icon_rows = 2,
	}
	table.insert(entity.icons_positioning, icons)
	return icons
end

function funcs.Assign(prototype, icon)
	if type(icon) == "string" then
		prototype.icon = icon
		prototype.icon_size = MomoLib.icon.DefaultSize
	elseif type(icon) == "table" and type(icon[1]) == "string" and type(icon[2]) == "number" then
		prototype.icon = icon[1]
		prototype.icon_size = icon[2]
	else
		prototype.icons = icon
	end
end

function funcs.FromPrototype(prototype)
	if prototype.icons then
		return prototype.icons
	end
	return {prototype.icon, prototype.icon_size}
end
	
function funcs.ProductivityIcon()
	return {icon = "__core__/graphics/icons/technology/effect-constant/effect-constant-recipe-productivity.png", icon_size = 64}
end

MomoLib.icon = funcs