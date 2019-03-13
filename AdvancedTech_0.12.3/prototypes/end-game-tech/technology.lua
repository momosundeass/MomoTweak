data:extend(
{   
    {
    type = "technology",
    name = "teleporter",
    icon = "__AdvancedTech__/graphics/icons/teleporter.png",
    prerequisites =
    {
	    "quantum-photon-printing-computer"
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "teleporter"
		},
    },
    unit =
    {
      count = 1000,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"science-pack-4", 1},
		{"alien-science-pack", 1},
		{"quantum-photon-printing-computer", 10},
      },
      time = 150
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "quantum-photon-printing-computer",
    icon = "__AdvancedTech__/graphics/icons/quantum-photon-printing-computer.png",
    prerequisites =
    {
		"god-module-5",
    },
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "quantum-photon-printing-computer"
		},
		{
			type = "unlock-recipe",
			recipe = "quantum-chip-class1"
		},
		{
			type = "unlock-recipe",
			recipe = "quantum-chip-class2"
		},
		{
			type = "unlock-recipe",
			recipe = "quantum-chip-class3"
		},
		{
			type = "unlock-recipe",
			recipe = "photon-manipulator"
		},
		{
			type = "unlock-recipe",
			recipe = "lab-3"
		},
    },
    unit =
    {
      count = 800,
      ingredients = 
      {
        {"science-pack-1", 8},
		{"science-pack-2", 5},
		{"science-pack-3", 3},
		{"science-pack-4", 1},
		{"alien-science-pack", 5},
      },
      time = 105
    },
    upgrade = false,
    order = "d-b-a1"
  },
}
)