local function AllowFlight(armorName)
	local armor = data.raw.armor[armorName]
	armor.factoriopedia_simulation = data.raw.armor["mech-armor"].factoriopedia_simulation
	armor.provides_flight = true
    armor.takeoff_sound = data.raw.armor["mech-armor"].takeoff_sound 
    armor.landing_sound = data.raw.armor["mech-armor"].landing_sound 
    armor.flight_sound = data.raw.armor["mech-armor"].flight_sound 
    armor.steps_sound = data.raw.armor["mech-armor"].steps_sound 
    armor.moving_sound = data.raw.armor["mech-armor"].moving_sound 
end

local armors = {"power-armor-mk2", "kr-power-armor-mk3", "kr-power-armor-mk4"}
for i, armor in pairs(armors) do
	AllowFlight(armor)
end

local anims = data.raw.character.character.animations
for _, anim in pairs(anims) do
	-- remove animation
	if anim.armors ~= nil and anim.armors[1] == "power-armor" then
		for a, armor in pairs(armors) do
			for i, aa in pairs(anim.armors) do
				if anim.armors[i] == armor then
					table.remove(anim.armors, i)
					break
				end
			end
		end
	end

	-- insert animation
	if anim.armors ~= nil and anim.armors[1] == "mech-armor" then
		for a, armor in pairs(armors) do
			table.insert(anim.armors, armor)
		end
	end
end

for i, armor in pairs(armors) do
	data.raw['character-corpse']['character-corpse'].armor_picture_mapping[armor] = #data.raw['character-corpse']['character-corpse'].pictures
end



-- disabled mech armor prototype
data.raw.technology["mech-armor"].hidden = true
data.raw.technology["mech-armor"].hidden_in_factoriopedia = true
data.raw.technology["mech-armor"].visible_when_disabled = false
data.raw.technology["mech-armor"].enabled = false

MomoLib.item.Disable("mech-armor")
data.raw.armor["mech-armor"].hidden = true
data.raw.armor["mech-armor"].hidden_in_factoriopedia = true
