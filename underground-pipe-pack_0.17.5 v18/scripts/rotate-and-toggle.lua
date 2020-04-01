local advancedPiping = require('tables')

local Player = require('lib/player')
local Event = require('lib/event')
local Position = require('lib/position')

local function RotateUnderground(old_pipe, player, reverse)
    local new_name = reverse and advancedPiping.getReverseRotatedPipe[old_pipe.name] or advancedPiping.getRotatedPipe[old_pipe.name]
    if not new_name then
        return
    end
    local old_entity_unit_number = old_pipe.unit_number
    local old_pipeFluid = old_pipe.fluidbox[1]
    local event_data = {
        entity = old_pipe,
        player_index = player.index,
    }
    script.raise_event(defines.events.script_raised_destroy, event_data)
    local new_pipe =
        old_pipe.surface.create_entity {
        name = new_name,
        position = old_pipe.position,
        direction = old_pipe.direction,
        force = old_pipe.force,
        fast_replace = true,
        spill = false
    }
    new_pipe.fluidbox[1] = old_pipeFluid
    new_pipe.last_user = player
    local event = {
        created_entity = new_pipe,
        player_index = player.index,
        clamped = true,
        replaced_entity_unit_number = old_entity_unit_number
    }
    script.raise_event(defines.events.script_raised_built, event)
    if old_pipe then
        old_pipe.destroy()
    end
end

local function rotateUndergroundPipe(event)
    local reverse = event.input_name == 'reverse-rotate-underground-pipe' and true or false
    local player,_ = Player.get(event.player_index)
    local selection = player.selected
    if selection and selection.force == player.force then
        local researched = player.force.technologies['advanced-underground-piping'].researched
        if (selection.type == 'pipe-to-ground' or (selection.type == 'entity-ghost' and selection.ghost_type == 'pipe-to-ground')) and researched then
            RotateUnderground(selection, player, reverse)
        end
    end
end
Event.register('rotate-underground-pipe', rotateUndergroundPipe)
Event.register('reverse-rotate-underground-pipe', rotateUndergroundPipe)

local function plus_valve(event)
    local player,_ = Player.get(event.player_index)
    local selection = player.selected
    if selection and selection.force == player.force then
        local valve_table = advancedPiping.adjustable_valve_table
        if valve_table[selection.name] and valve_table[selection.name].next_valve then
            local old_valve_fluid = selection.fluidbox[1]
            local event_data = {
                entity = selection,
                player_index = player.index,
            }
            script.raise_event(defines.events.script_raised_destroy, event_data)
            local new_valve =
                selection.surface.create_entity {
                name = valve_table[selection.name].next_valve,
                position = selection.position,
                direction = selection.direction,
                force = selection.force,
                fast_replace = true,
                spill = false
            }
            new_valve.fluidbox[1] = old_valve_fluid
            new_valve.last_user = player
            event_data = {
                created_entity = new_valve,
                player_index = player.index,
            }
            script.raise_event(defines.events.script_raised_built, event_data)
            if selection then
                selection.destroy()
            end
        end
    end
end
Event.register('plus-valve', plus_valve)

local function minus_valve(event)
    local player,_ = Player.get(event.player_index)
    local selection = player.selected
    if selection and selection.force == player.force then
        local valve_table = advancedPiping.adjustable_valve_table
        if valve_table[selection.name] and valve_table[selection.name].previous_valve then
            local old_valve_fluid = selection.fluidbox[1]
            local event_data = {
                entity = selection,
                player_index = player.index,
            }
            script.raise_event(defines.events.script_raised_destroy, event_data)
            local new_valve =
                selection.surface.create_entity {
                name = valve_table[selection.name].previous_valve,
                position = selection.position,
                direction = selection.direction,
                force = selection.force,
                fast_replace = true,
                spill = false
            }
            new_valve.fluidbox[1] = old_valve_fluid
            new_valve.last_user = player
            event_data = {
                created_entity = new_valve,
                player_index = player.index,
            }
            script.raise_event(defines.events.script_raised_built, event_data)
            game.print(event_data.created_entity.name .. " 1")
            if selection then
                selection.destroy()
            end
            game.print(event_data.created_entity.name .. " 2")
        end
    end
end
Event.register('minus-valve', minus_valve)

local function get_pipe_table()
    return advancedPiping.pipetable
end
local function get_ignored_pipes()
    return advancedPiping.ignore
end
remote.add_interface(script.mod_name, {get_pipe_table = get_pipe_table, get_ignored_pipes = get_ignored_pipes})
