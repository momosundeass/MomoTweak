local function GetInserterImage(path)
	return "__MomoPyTweak__/graphics/entity/inserter/" .. path .. ".png"
end

function momoPyTweak.Inserter()
	local prototype = {}
	
	-- express
	momoPyTweak.item.inserter = momoIRTweak.item.NewItemFixedSize("momo-express-inserter", 32, "inserter", 50)
	momoPyTweak.item.inserter.order = "zz1"

	prototype = momoIRTweak.DeepCopy(data.raw.inserter["inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.inserter.icon
	prototype.name = "momo-express-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "10KJ"
    prototype.energy_per_rotation = "10KJ"
    prototype.energy_source.drain = "0.7kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-inserter"
	
	prototype.hand_base_picture.filename            = GetInserterImage("express/hand-base")
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express/hr-hand-base")
	
	prototype.hand_closed_picture.filename            = GetInserterImage("express/hand-close")
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express/hr-hand-close")
	
	prototype.hand_open_picture.filename            = GetInserterImage("express/hand-open")
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express/hr-hand-open")
	
	prototype.platform_picture.sheet.filename            = GetInserterImage("express/platform")
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express/hr-platform")
	
	data:extend({{prototype}})
	
	-- express filter
	momoPyTweak.item.filterInserter = momoIRTweak.item.NewItemFixedSize("momo-express-filter-inserter", 32, "inserter", 50)
	momoPyTweak.item.filterInserter.order = "zz2"

	prototype = momoIRTweak.DeepCopy(data.raw.inserter["filter-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.filterInserter.icon
	prototype.name = "momo-express-filter-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "12KJ"
    prototype.energy_per_rotation = "12KJ"
    prototype.energy_source.drain = "1kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-filter-inserter"
	
	prototype.hand_base_picture.filename            = GetInserterImage("express-filter/hand-base")
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express-filter/hr-hand-base")
	
	prototype.hand_closed_picture.filename            = GetInserterImage("express-filter/hand-close")
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express-filter/hr-hand-close")
	
	prototype.hand_open_picture.filename            = GetInserterImage("express-filter/hand-open")
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express-filter/hr-hand-open")
	
	prototype.platform_picture.sheet.filename            = GetInserterImage("express-filter/platform")
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express-filter/hr-platform")
	
	data:extend({{prototype}})
	
	-- stack express
	momoPyTweak.item.stackInserter = momoIRTweak.item.NewItemFixedSize("momo-express-stack-inserter", 32, "inserter", 50)
	momoPyTweak.item.stackInserter.order = "zz3"
	
	prototype = momoIRTweak.DeepCopy(data.raw.inserter["stack-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.stackInserter.icon
	prototype.name = "momo-express-stack-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "30KJ"
    prototype.energy_per_rotation = "30KJ"
    prototype.energy_source.drain = "1kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-stack-inserter"
	
	prototype.hand_base_picture.filename            = GetInserterImage("express-stack/hand-base")
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express-stack/hr-hand-base")
	
	prototype.hand_closed_picture.filename            = GetInserterImage("express-stack/hand-close")
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express-stack/hr-hand-close")
	
	prototype.hand_open_picture.filename            = GetInserterImage("express-stack/hand-open")
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express-stack/hr-hand-open")
	
	prototype.platform_picture.sheet.filename            = GetInserterImage("express-stack/platform")
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express-stack/hr-platform")
	
	data:extend({{prototype}})
	
	-- stack express filter
	momoPyTweak.item.stackFilterInserter = momoIRTweak.item.NewItem("momo-express-stack-filter-inserter", 32, "inserter", 50)
	momoPyTweak.item.stackFilterInserter.order = "zz4"
	
	prototype = momoIRTweak.DeepCopy(data.raw.inserter["stack-filter-inserter"])
	prototype.icon_size = 32
	prototype.icon = momoPyTweak.item.stackFilterInserter.icon
	prototype.name = "momo-express-stack-filter-inserter"
	prototype.max_health = 600
	prototype.energy_per_movement = "31KJ"
    prototype.energy_per_rotation = "31KJ"
    prototype.energy_source.drain = "1kW"
    prototype.extension_speed = 0.14
    prototype.rotation_speed = 0.08
	prototype.minable.result = "momo-express-stack-filter-inserter"
	
	prototype.hand_base_picture.filename            = GetInserterImage("express-stack-filter/hand-base")
	prototype.hand_base_picture.hr_version.filename = GetInserterImage("express-stack-filter/hr-hand-base")
	
	prototype.hand_closed_picture.filename            = GetInserterImage("express-stack-filter/hand-close")
	prototype.hand_closed_picture.hr_version.filename = GetInserterImage("express-stack-filter/hr-hand-close")
	
	prototype.hand_open_picture.filename            = GetInserterImage("express-stack-filter/hand-open")
	prototype.hand_open_picture.hr_version.filename = GetInserterImage("express-stack-filter/hr-hand-open")
	
	prototype.platform_picture.sheet.filename            = GetInserterImage("express-stack-filter/platform")
	prototype.platform_picture.sheet.hr_version.filename = GetInserterImage("express-stack-filter/hr-platform")
	
	data:extend({{prototype}})
end

function momoPyTweak.updates.Inserter()
	
end

function momoPyTweak.updates.InserterTechnology()
	
end
