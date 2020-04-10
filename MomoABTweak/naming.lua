momoTweak.science = {}
momoTweak.science.a = {}
momoTweak.science.b = {}

momoTweak.science.grey = "angels-science-pack-grey"
momoTweak.science.red = "angels-science-pack-red"
momoTweak.science.green = "angels-science-pack-green"
momoTweak.science.orange = "angels-science-pack-orange"
momoTweak.science.blue = "angels-science-pack-blue"
momoTweak.science.yellow = "angels-science-pack-yellow"
momoTweak.science.white = "angels-science-pack-blue"

momoTweak.science.a.basic = "datacore-basic"
momoTweak.science.a.production = "datacore-production-1"
momoTweak.science.a.warfare = "datacore-war-1"
momoTweak.science.a.logistic = "datacore-logistic-1" 
momoTweak.science.a.energy = "datacore-energy-1"
momoTweak.science.a.enhance = "datacore-enhance-1"
momoTweak.science.a.exploration = "datacore-exploration-1"

momoTweak.science.b.production = "datacore-production-2"
momoTweak.science.b.warfare = "datacore-war-2"
momoTweak.science.b.logistic = "datacore-logistic-2" 
momoTweak.science.b.energy = "datacore-energy-2"
momoTweak.science.b.enhance = "datacore-enhance-2"
momoTweak.science.b.exploration = "datacore-exploration-2"

function momoTweak.science.GetMoreSciencePack(number)
	if (number > 0 and number <= 30) then
		return "more-science-pack-" .. number
	end
end
	
momoTweak.board = {}
momoTweak.circuit = {}
momoTweak.electronics = {}
momoTweak.components = {}


momoTweak.board.grey = "circuit-grey-board"
momoTweak.circuit.grey = "circuit-grey"

momoTweak.board.red = "circuit-red-board"
momoTweak.circuit.red = "circuit-red"
momoTweak.electronics.red = "circuit-red-loaded"

momoTweak.board.green = "circuit-green-board"
momoTweak.circuit.green = "circuit-green"
momoTweak.electronics.green = "circuit-green-loaded"

momoTweak.board.orange = "circuit-orange-board"
momoTweak.circuit.orange = "circuit-orange"
momoTweak.electronics.orange = "circuit-orange-loaded"

momoTweak.board.blue = "circuit-blue-board"
momoTweak.circuit.blue = "circuit-blue"
momoTweak.electronics.blue = "circuit-blue-loaded"

momoTweak.board.yellow = "circuit-yellow-board"
momoTweak.circuit.yellow = "circuit-yellow"
momoTweak.electronics.yellow = "circuit-yellow-loaded"

momoTweak.components.resistor = "circuit-resistor"
momoTweak.components.transistor = "circuit-transistor"
momoTweak.components.microchip = "circuit-microchip"
momoTweak.components.transformer = "circuit-transformer"
momoTweak.components.cpu = "circuit-cpu"























