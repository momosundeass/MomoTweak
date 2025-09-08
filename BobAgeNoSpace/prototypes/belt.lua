if settings.startup["bobmods-logistics-beltoverhaulspeed"].value and settings.startup["bobmods-logistics-beltoverhaul"] then
	
	local speed = settings.startup["bobmods-logistics-beltspeedperlevel"].value * 6 
	MomoLib.entity.BeltSpeed("bob-turbo-transport-belt", speed)
	MomoLib.entity.BeltSpeed("bob-turbo-underground-belt", speed)
	MomoLib.entity.BeltSpeed("bob-turbo-splitter", speed)
	
	MomoLib.entity.BeltSpeed("aai-turbo-loader", speed)
	
	speed = settings.startup["bobmods-logistics-beltspeedperlevel"].value * 10
	MomoLib.entity.BeltSpeed("bob-ultimate-transport-belt", speed)
	MomoLib.entity.BeltSpeed("bob-ultimate-underground-belt", speed)
	MomoLib.entity.BeltSpeed("bob-ultimate-splitter", speed)
	
	MomoLib.entity.BeltSpeed("aai-ultimate-loader", speed)
end
