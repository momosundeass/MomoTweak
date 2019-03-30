momoTweak.sci1 = "automation-science-pack"
momoTweak.sci2 = "logistic-science-pack"
momoTweak.sci2_unlockTech = "logistic-science-pack"
momoTweak.sci3 = "chemical-science-pack"
momoTweak.sciGun = "military-science-pack"
momoTweak.sciProduction = "production-science-pack"
momoTweak.sciTech = "utility-science-pack"
momoTweak.sciLogistic = "advanced-logistic-science-pack"
momoTweak.sciLogistic_unlockTech = "logistics-3"
momoTweak.sciSpace = "space-science-pack"

momoTweak.recipe = {}

momoTweak.ele = {}
momoTweak.ele.board = {}
momoTweak.ele.board[1] = "wooden-board"
momoTweak.ele.board[2] = "phenolic-board"
momoTweak.ele.board[3] = "fibreglass-board"

momoTweak.ele.cable = {}
momoTweak.ele.cable[1] = "copper-cable"
momoTweak.ele.cable[2] = "tinned-copper-cable"
momoTweak.ele.cable[3] = "insulated-cable"
momoTweak.ele.cable[4] = "gilded-copper-cable"
momoTweak.ele.cable[5] = "angels-wire-silver"

momoTweak.ele.circuit = {}
momoTweak.ele.circuit[1] = "basic-circuit-board"
momoTweak.ele.circuit[2] = "circuit-board"
momoTweak.ele.circuit[3] = "superior-circuit-board"
momoTweak.ele.circuit[4] = "multi-layer-circuit-board"

momoTweak.ele.comp = {}
momoTweak.ele.comp[1] = "basic-electronic-components"
momoTweak.ele.comp[2] = "electronic-components"
momoTweak.ele.comp[3] = "intergrated-electronics"
momoTweak.ele.comp[4] = "processing-electronics"

momoTweak.ele.comp[5] = "silicon-nitride"

momoTweak.ele.unit = {}
momoTweak.ele.unit[1] = "electronic-circuit"
momoTweak.ele.unit[2] = "advanced-circuit"
momoTweak.ele.unit[3] = "processing-unit"
momoTweak.ele.unit[4] = "advanced-processing-unit"


momoTweak.module = {}
momoTweak.module.board = {}
momoTweak.module.board.a = "module-processor-board"
momoTweak.module.board.b = "module-processor-board-2"
momoTweak.module.board.c = "module-processor-board-3"

momoTweak.ore = {}
momoTweak.ore.iron       = "iron-ore"
momoTweak.ore.copper     = "copper-ore"
momoTweak.ore.tin        = "tin-ore"
momoTweak.ore.quartz     = "quartz"
momoTweak.ore.lead       = "lead-ore"
momoTweak.ore.nickel     = "nickel-ore"
momoTweak.ore.gold       = "gold-ore"

momoTweak.ore.silver     = "silver-ore"
momoTweak.ore.zinc       = "zinc-ore"
momoTweak.ore.cobalt     = "cobalt-ore"
momoTweak.ore.aluminium  = "bauxite-ore"
momoTweak.ore.titanium   = "rutile-ore"
momoTweak.ore.tungsten   = "tungsten-ore"

momoTweak.angel = {}
momoTweak.angel.slag = "slag"

momoTweak.batterys = {}
momoTweak.batterys.basic = "battery"
momoTweak.batterys.lithium = "lithium-ion-battery"
momoTweak.batterys.silver = "silver-zinc-battery"

momoTweak.electricPole = {}
momoTweak.electricPole.wood = "small-electric-pole"
momoTweak.electricPole.medium = "medium-electric-pole"

function momoTweak.electricPole.get_medium(level)
	if level == 1 then return momoTweak.electricPole.medium end
	return "medium-electric-pole-" .. level
end
momoTweak.electricPole.big = "big-electric-pole"
function momoTweak.electricPole.get_big(level)
	if level == 1 then return momoTweak.electricPole.big end
	return "big-electric-pole-" .. level
end
momoTweak.electricPole.sub = "substation"
function momoTweak.electricPole.get_substation(level)
	if level == 1 then return momoTweak.electricPole.sub end
	return "substation-" .. level
end

