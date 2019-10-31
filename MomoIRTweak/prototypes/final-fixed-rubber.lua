-- fast-underground-belt  express-underground-belt  k-underground-belt  fast-splitter  express-splitter  k-splitter  loader-kr  loader-kr-02  loader-kr-03  loader-kr-04  stack-inserter  construction-robot  logistic-robot  pumpjack  rubber-natural  rubber-vulcanised 

if (settings.startup["momo-increaseRubberUse"]) then
	--- using
	local AddIng = momoIRTweak.AddToRecipe
	local ITEM = momoIRTweak.FastItem
	
	local rubber = function (amount) return ITEM("rubber-natural", amount) end
	local rubber2 = function (amount) return ITEM("rubber-vulcanised", amount) end
	
	-- rubber 1
	AddIng("fast-underground-belt", rubber(1))
	AddIng("express-underground-belt", rubber(2))
	
	AddIng("fast-splitter", rubber(4))
	AddIng("express-splitter", rubber(4))
	
	AddIng("stack-inserter", rubber(2))
	AddIng("construction-robot", rubber(3))
	AddIng("logistic-robot", rubber(4))
	
	AddIng("pumpjack", rubber(5))
	
	AddIng("loader-kr", rubber(8))
	AddIng("loader-kr-02", rubber(10))
	
	
	--- rubber 2
	AddIng("k-underground-belt", rubber2(2))
	AddIng("k-splitter", rubber2(4))
	
	AddIng("loader-kr-03", rubber2(8))
	AddIng("loader-kr-04", rubber2(10))
	
end