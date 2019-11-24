function momoTweak.require.ExtendedDataFrame()
	local order = 65
	local function createSC(name)
	  data:extend({
	  { type = "item",
		name = name.."-structure-components",
		icon = "__MomoTweak__/graphics/" .. name .. "SC.png",
		subgroup = "structurecomponents",
		order = "a-" .. string.char(order),
		stack_size = 50,
		icon_size = 32
		}
	  })
	  order = order + 1
	end
	
	data:extend({{
		type = "item-subgroup",
		name = "structurecomponents",
		group = "bob-intermediate-products",
		order = "z-z",
	  }})
	  
	  
	-- create Item -------------------------------------------

	momoTweak.extended.frame = {}
	momoTweak.extended.frame.basic        = "basic-structure-components"
	momoTweak.extended.frame.intermediate = "intermediate-structure-components"
	momoTweak.extended.frame.advanced     = "advanced-structure-components"
	momoTweak.extended.frame.anotherworld = "anotherworld-structure-components"


	createSC("basic")
	createSC("intermediate")
	createSC("advanced")
	createSC("anotherworld")
end