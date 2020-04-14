function momoTweak.data.CreateItems()
	local NewItem = momoIRTweak.item.NewItem
	local NewItemFixedSize = momoIRTweak.item.NewItemFixedSize
	local NewItemBaseIcon = momoIRTweak.item.NewItemBaseIconMipmaped
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	
	momoIRTweak.CreateSubgroup("momo-science-components", "0-1", "angels-components")
	local refSubgroup = "momo-science-components"
	momoTweak.item.platePack = NewItemFixedSize("plate-pack", 32, refSubgroup, 200)
	momoTweak.item.carbonPlate = NewItemFixedSize("momo-carbon-plate", 64, refSubgroup, 200)
	momoTweak.item.stoneSlab = NewItemFixedSize("momo-stone-slab", 64, refSubgroup, 200)
	
	momoTweak.item.nickel = {}
	momoTweak.item.cobalt = {}
	momoIRTweak.CreateSubgroup("momo-nickel-cobalt-components", "z0-a1", "angels-components")
	refSubgroup = "momo-nickel-cobalt-components"
	momoIRTweak.item.ResetOrder()
	momoTweak.item.nickel.smallPlate         = NewItemFixedSize("nickel-small-plate", 64, refSubgroup, 200)
	momoTweak.item.nickel.smallComponents    = NewItemFixedSize("nickel-small-components", 64, refSubgroup, 200)
	momoTweak.item.nickel.complexComponents  = NewItemFixedSize("nickel-complex-components", 64, refSubgroup, 200)
	momoTweak.item.nickel.tube               = NewItemFixedSize("nickel-tube", 64, refSubgroup, 200)
	momoTweak.item.cobalt.smallPlate         = NewItemFixedSize("cobalt-small-plate", 64, refSubgroup, 200)
	momoTweak.item.cobalt.smallComponents    = NewItemFixedSize("cobalt-small-components", 64, refSubgroup, 200)
	momoTweak.item.cobalt.complexComponents  = NewItemFixedSize("cobalt-complex-components", 64, refSubgroup, 200)
	momoTweak.item.cobalt.tube               = NewItemFixedSize("cobalt-tube", 64, refSubgroup, 200)
	
	momoTweak.item.zinc = {}
	momoTweak.item.silver = {}
	momoIRTweak.CreateSubgroup("momo-zinc-silver-components", "z0-a2", "angels-components")
	refSubgroup = "momo-zinc-silver-components"
	momoIRTweak.item.ResetOrder()
	momoTweak.item.zinc.smallPlate           = NewItemFixedSize("zinc-small-plate", 64, refSubgroup, 200)
	momoTweak.item.zinc.smallComponents      = NewItemFixedSize("zinc-small-components", 64, refSubgroup, 200)
	momoTweak.item.zinc.complexComponents    = NewItemFixedSize("zinc-complex-components", 64, refSubgroup, 200)
	momoTweak.item.zinc.tube                 = NewItemFixedSize("zinc-tube", 64, refSubgroup, 200)
	momoTweak.item.silver.smallPlate         = NewItemFixedSize("silver-small-plate", 64, refSubgroup, 200)
	momoTweak.item.silver.smallComponents    = NewItemFixedSize("silver-small-components", 64, refSubgroup, 200)
	momoTweak.item.silver.complexComponents  = NewItemFixedSize("silver-complex-components", 64, refSubgroup, 200)
	momoTweak.item.silver.tube               = NewItemFixedSize("silver-tube", 64, refSubgroup, 200)
	
	momoTweak.item.lead = {}
	momoIRTweak.CreateSubgroup("momo-lead-gold-components", "z0-a3", "angels-components")
	refSubgroup = "momo-lead-gold-components"
	momoIRTweak.item.ResetOrder()
	momoTweak.item.lead.smallPlate         = NewItemFixedSize("lead-small-plate", 64, refSubgroup, 200)
	momoTweak.item.lead.smallComponents    = NewItemFixedSize("lead-small-components", 64, refSubgroup, 200)
	momoTweak.item.lead.complexComponents  = NewItemFixedSize("lead-complex-components", 64, refSubgroup, 200)
	momoTweak.item.lead.tube               = NewItemFixedSize("lead-tube", 64, refSubgroup, 200)
	-- add gold item here
	
	
	
	momoIRTweak.CreateSubgroup("momo-electronic-components", "0-2", "angels-components")
	refSubgroup = "momo-electronic-components"
	momoIRTweak.item.ResetOrder()
	momoTweak.item.electronics1 = NewItemFixedSize("momo-electronic-mk1", 32, refSubgroup, 200)
	momoTweak.item.electronics2 = NewItemFixedSize("momo-electronic-mk2", 32, refSubgroup, 200)
	momoTweak.item.electronics3 = NewItemFixedSize("momo-electronic-mk3", 32, refSubgroup, 200)
	momoTweak.item.electronics4 = NewItemFixedSize("momo-electronic-mk4", 32, refSubgroup, 200)
	momoTweak.item.electronics5 = NewItemFixedSize("momo-electronic-mk5", 32, refSubgroup, 200)
	
	refSubgroup = "angels-circuit-components"
	momoTweak.item.transformer = NewItemFixedSize("momo-transformer", 32, refSubgroup, 200)
	momoTweak.item.transformer.order = "z[bob]-c1"
	
	momoIRTweak.CreateSubgroup("momo-msp-components", "zz2", "angels-tech")
	refSubgroup = "momo-msp-components"
	momoIRTweak.item.ResetOrder()
	momoTweak.item.msp1 = NewItemBaseIcon("momo-msp1", "__base__/graphics/icons/automation-science-pack", refSubgroup, 50)
	momoTweak.item.msp2 = NewItemBaseIcon("momo-msp2", "__base__/graphics/icons/logistic-science-pack", refSubgroup, 50)
	momoTweak.item.msp3 = NewItemBaseIcon("momo-msp3", "__base__/graphics/icons/chemical-science-pack", refSubgroup, 50)
	momoTweak.item.msp4 = NewItemBaseIcon("momo-msp4", "__base__/graphics/icons/production-science-pack", refSubgroup, 50)
	momoTweak.item.msp5 = NewItemBaseIcon("momo-msp5", "__base__/graphics/icons/utility-science-pack", refSubgroup, 50)
	momoTweak.item.msp6 = NewItemBaseIcon("momo-msp6", "__base__/graphics/icons/space-science-pack", refSubgroup, 50)
end