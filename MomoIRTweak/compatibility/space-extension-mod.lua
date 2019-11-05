--- using

-- drydock-assembly  drydock-structural  
-- fusion-reactor  hull-component  protection-field  
-- space-thruster  fuel-cell  habitation  
-- life-support  command  astrometrics  
-- ftl-drive

local Repi = momoIRTweak.ReplaceWithIngredient
local AddIng = momoIRTweak.AddToRecipe


--- replace technology ingredient with k science
local spaceExTechnologies = {
	"space-assembly",
	"space-construction",
	"space-casings",
	"protection-fields",
	"fusion-reactor",
	"space-thrusters",
	"fuel-cells",
	"habitation",
	"life-support-systems",
	"spaceship-command",
	"astrometrics",
	"ftl-theory-A",
	"ftl-theory-B",
	"ftl-theory-C",
	"ftl-theory-D1",
	"ftl-theory-D2",
	"ftl-propulsion",
}

for	i, technology in pairs(spaceExTechnologies) do
	momoIRTweak.ReplaceUnitIngredientsWith(technology, momoIRTweak.science.kMapping)
	
	if (momoIRTweak.IsTechnologyHasIngredient(technology, momoIRTweak.science.k3)) then
		table.insert(data.raw.technology[technology].unit.ingredients, {momoIRTweak.science.kMatter, 3})
	end
end

