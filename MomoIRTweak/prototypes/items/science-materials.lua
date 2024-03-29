
function momoIRTweak.item.InitScienceMaterials()
	local item = momoIRTweak.item

	item.vial = momoIRTweak.item.NewScienceMaterialsItem("momo-science-vial")

	item.spp1 = momoIRTweak.item.NewScienceMaterialsItem("momo-science-processor-pack-1")

	item.sppMilitary = momoIRTweak.item.NewScienceMaterialsItem("momo-science-processor-pack-military")

	item.spp2 = momoIRTweak.item.NewScienceMaterialsItem("momo-science-processor-pack-2")

	item.sppProduction = momoIRTweak.item.NewScienceMaterialsItem("momo-science-processor-pack-production")

	item.spp3 = momoIRTweak.item.NewScienceMaterialsItem("momo-science-processor-pack-3")


	item.scienceBlueprint1 = momoIRTweak.item.NewScienceMaterialsItem("momo-science-blueprint-1")
	item.scienceBlueprint2 = momoIRTweak.item.NewScienceMaterialsItem("momo-science-blueprint-2")
	item.scienceBlueprint3 = momoIRTweak.item.NewScienceMaterialsItem("momo-science-blueprint-3")

	item.productionBox = momoIRTweak.item.NewScienceMaterialsItem("momo-production-box")
	item.productionBox2 = momoIRTweak.item.NewScienceMaterialsItem("momo-production-box-2")
	
	item.scienceComputer1 =  momoIRTweak.item.NewScienceMaterialsBaseItem("momo-science-computer-mk1", momoIRTweak.dir.baseIconPath .. "32/momo-science-computer-mk1")
	item.scienceComputer2 =  momoIRTweak.item.NewScienceMaterialsBaseItem("momo-science-computer-mk2", momoIRTweak.dir.baseIconPath .. "32/momo-science-computer-mk2")
	item.scienceComputer3 =  momoIRTweak.item.NewScienceMaterialsBaseItem("momo-science-computer-mk3", momoIRTweak.dir.baseIconPath .. "32/momo-science-computer-mk3")

	item.gpu = momoIRTweak.item.NewScienceMaterialsItem("momo-science-gpu")
end