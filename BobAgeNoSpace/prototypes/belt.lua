if settings.startup["bobmods-logistics-beltoverhaulspeed"].value and settings.startup["bobmods-logistics-beltoverhaul"] then
	
	local speed = settings.startup["bobmods-logistics-beltspeedperlevel"].value * 6 
	MomoLib.prototype.BeltSpeed("bob-turbo-transport-belt", speed)
	MomoLib.prototype.BeltSpeed("bob-turbo-underground-belt", speed)
	MomoLib.prototype.BeltSpeed("bob-turbo-splitter", speed)
	
	MomoLib.prototype.BeltSpeed("aai-turbo-loader", speed)
	
	speed = settings.startup["bobmods-logistics-beltspeedperlevel"].value * 10
	MomoLib.prototype.BeltSpeed("bob-ultimate-transport-belt", speed)
	MomoLib.prototype.BeltSpeed("bob-ultimate-underground-belt", speed)
	MomoLib.prototype.BeltSpeed("bob-ultimate-splitter", speed)
	
	MomoLib.prototype.BeltSpeed("aai-ultimate-loader", speed)
end
