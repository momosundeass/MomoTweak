for _, proto in pairs(data.raw["inserter"]) do
	proto.extension_speed = proto.extension_speed * 2
	proto.rotation_speed = proto.rotation_speed * 2
end
