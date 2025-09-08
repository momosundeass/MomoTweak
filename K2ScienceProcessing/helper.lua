---@diagnostic disable: lowercase-global, inject-field, need-check-nil, undefined-field

function MomoLib.K2Card(icon) return "__Krastorio2Assets__/icons/cards/" .. icon .. ".png" end
function MomoLib.K2ItemIcon(icon) return "__Krastorio2Assets__/icons/items/" .. icon .. ".png" end
function MomoLib.AltCard(icon) return "__tech-cards-retexture-AI-powered__/graphics/icons/".. icon .. ".png" end
function MomoLib.QualityGlassware(icon) return "__quality_glassware__/graphics/icons/".. icon .. ".png" end
function MomoLib.SpaceEx(icon) return "__space-exploration-graphics__/graphics/icons/".. icon .. ".png" end
function MomoLib.SpaceExGraphics(icon) return "__space-exploration-graphics__/graphics/".. icon .. ".png" end
function MomoLib.SpaceExGraphics4(icon) return "__space-exploration-graphics-4__/graphics/".. icon .. ".png" end

---@param fullSize? boolean
function MomoLib.UnusedRenders(icon, fullSize) 
  fullSize = fullSize or false
  return {
    filename = "__"..MomoLib.ModName.."__/graphics/icons/unused-renders/" .. icon .. ".png", 
    size = fullSize and 1024 or 64,
    mipmap_count = fullSize and 1 or 4,
    scale = 0.5
  }  
end


-- quality didn't load on data state yet, so use this function instead
-- reference to same function in __quality__/prototypes/recycling.lua
function generate_recycling_recipe_icons_from_item(item)
  local icons = {}
  if item.icons == nil then
    icons =
    {
      {
        icon = "__K2QualityCompat__/graphics/icons/recycling.png"
      },
      {
        icon = item.icon,
        icon_size = item.icon_size,
        scale = (0.5 * defines.default_icon_size / (item.icon_size or defines.default_icon_size)) * 0.8,
      },
      {
        icon = "__K2QualityCompat__/graphics/icons/recycling-top.png"
      },
    }
  else
    icons =
    {
      {
        icon = "__K2QualityCompat__/graphics/icons/recycling.png"
      }
    }
    for i = 1, #item.icons do
      local icon = table.deepcopy(item.icons[i]) -- we are gonna change the scale, so must copy the table
      icon.scale = ((icon.scale == nil) and (0.5 * defines.default_icon_size / (icon.icon_size or defines.default_icon_size)) or icon.scale) * 0.8
      icon.shift = util.mul_shift(icon.shift, 0.8)
      icons[#icons + 1] = icon
    end
    icons[#icons + 1] =
    {
      icon = "__K2QualityCompat__/graphics/icons/recycling-top.png"
    }
  end
  return icons
end