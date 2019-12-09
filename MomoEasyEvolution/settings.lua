data:extend({{
	type = "bool-setting",
	name = "momo-isPrint",
	setting_type = "startup",
	default_value = false,
	order = "a1",
}, {
	type = "double-setting",
	name = "momo-evolutionReductRate",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.3,
	maximum_value = 60,
	order = "a2"
}, {
	type = "double-setting",
	name = "momo-evolutionReductFactor",
	setting_type = "startup",
	default_value = 0.7,
	minimum_value = 0.3,
	maximum_value = 1.3,
	order = "a3"
}, {
	type = "int-setting",
	name = "momo-evolutionReductCounter",
	setting_type = "startup",
	default_value = 10,
	minimum_value = 0,
	maximum_value = 180,
	order = "a4"
}})