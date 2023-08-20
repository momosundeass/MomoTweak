local function GetDistance(posA, posB) 
	local dx = posA.x - posB.x
	local dy = posA.y - posB.y
	return math.sqrt ( dx * dx + dy * dy )
end

local function OpenNearbyPowerPole(player)
	player.opened = nil
	
	local playerPos = player.position
	local reach = player.reach_distance
	
	local minDis = reach
	local nearest = nil
	
	for _, entity in ipairs(player.surface.find_entities_filtered{position = player.position, radius = reach, type = "electric-pole", force = player.force}) do
		local dis = GetDistance(playerPos, entity.position)
		if (dis < minDis) then
			minDis = dis
			nearest = entity
		end
	end
	
	if (nearest) then
		player.opened = nearest
		player.create_local_flying_text{
		  text = {"eni.opening"},
		  position = nearest.position,
		}
	else
		player.create_local_flying_text{
		  text = {"eni.out-of-reach"},
		  position = playerPos,
		}
	end
end

local function OnHotkey(event) 
	local player = game.get_player(event.player_index)
	if (player == nil) then return end
	
	
	OpenNearbyPowerPole(player)
end

script.on_event("eni_hotkey", OnHotkey)


-- local function open_entity(player, entity, ignore_map_only)
  -- if entity_type_blacklist[entity.type] then return end
  -- reset_player(player)  -- Ensures that can_reach_entity is accurate, not needed any more?
  -- local out_of_reach = not can_reach_entity(player, entity, ignore_map_only)
  -- local map_mode = player.render_mode == defines.render_mode.chart_zoomed_in or player.render_mode == defines.render_mode.chart
  -- if out_of_reach or map_mode then
    -- if player.force.is_enemy(entity.force) then
      -- if map_mode then
        -- player.create_local_flying_text{text = {"cant-open-enemy-structures"}, create_at_cursor = true}
      -- end
      -- return
    -- end

    -- player.opened = nil  -- Triggers on_gui_closed before we open the GUI we care about
    -- if out_of_reach then
      -- increase_range(player)
      -- player.permission_group = game.permissions.get_group("Remote Configuration GUI opened")
    -- end
    -- player.opened = entity
    -- if player.opened_gui_type == defines.gui_type.entity then
      -- RecipeChange.on_remote_gui_opened(player)
      -- if not map_mode then
        -- player.create_local_flying_text{
          -- text = {"remote-configuration.opened-gui-remotely"},
          -- create_at_cursor = true,
        -- }
        -- player.play_sound{ path = "rc-warning-sound" }
      -- end
    -- else
      -- reset_player(player)
    -- end
  -- end
-- end

-- local area     = _(player.position):perimeter(player:droprange())
-- function this.getEntities(area, player)
	-- local entities = {}

	-- for __,entity in ipairs(player.surface.find_entities_filtered{ area = area, force = player.force }) do

		-- if _(entity):is("valid") and 
		   -- entity.operable and 
		   -- not entity.to_be_deconstructed(player.force) and 
		   -- not _(entity):isIgnored(player) then
			
			-- entities[#entities + 1] = entity
		-- end
	-- end
	
	-- return entities
-- end
