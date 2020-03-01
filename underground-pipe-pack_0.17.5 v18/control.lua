local modInit = require('init')
script.on_init(modInit.mod_init)
script.on_configuration_changed(modInit.mod_init)
require('tables')

local Event = require('lib/event')
Event.protected_mode = true

require('lib/area')
require('lib/position')

require('lib/player').register_events(true)
require('scripts/rotate-and-toggle')
