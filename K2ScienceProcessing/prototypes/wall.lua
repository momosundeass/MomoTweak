local concrete = data.raw.wall["concrete-wall"]
local steel = data.raw.wall["steel-wall"]

table.insert(concrete.resistances, {type = "kr-explosion", percent = 100})
table.insert(concrete.resistances, {type = "kr-radioactive", percent = 100})
table.insert(steel.resistances, {type = "kr-explosion", percent = 100})
table.insert(steel.resistances, {type = "kr-radioactive", percent = 100})