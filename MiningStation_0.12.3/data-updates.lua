require("prototypes.base-override-updates")
local i = 7.75151;
local b = 7.75151;
-- this look good
data.raw.resource["iron-ore"].autoplace.richness_base = 400
for index, resource in pairs(data.raw.resource) do
	if resource.autoplace then
		resource.autoplace.richness_base = resource.autoplace.richness_base * i;
		resource.autoplace.richness_multiplier = resource.autoplace.richness_multiplier * b;
	end
end

-- bad algorithm (very mess)
-- if data.raw.resource["stone"] then 
-- data.raw.resource["stone"].autoplace.richness_base = data.raw.resource["stone"].autoplace.richness_base * i end
-- if data.raw.resource["stone"] then 
-- data.raw.resource["stone"].autoplace.richness_multiplier = data.raw.resource["stone"].autoplace.richness_multiplier * b end

-- if data.raw.resource["coal"] then 
-- data.raw.resource["coal"].autoplace.richness_base = data.raw.resource["coal"].autoplace.richness_base * i end
-- if data.raw.resource["coal"] then 
-- data.raw.resource["coal"].autoplace.richness_multiplier = data.raw.resource["coal"].autoplace.richness_multiplier * b end

-- if data.raw.resource["iron-ore"] then 
-- data.raw.resource["iron-ore"].autoplace.richness_base = data.raw.resource["iron-ore"].autoplace.richness_base * i end
-- if data.raw.resource["iron-ore"] then 
-- data.raw.resource["iron-ore"].autoplace.richness_multiplier = data.raw.resource["iron-ore"].autoplace.richness_multiplier * b end

-- if data.raw.resource["copper-ore"] then 
-- data.raw.resource["copper-ore"].autoplace.richness_base = data.raw.resource["copper-ore"].autoplace.richness_base * i end
-- if data.raw.resource["copper-ore"] then 
-- data.raw.resource["copper-ore"].autoplace.richness_multiplier = data.raw.resource["copper-ore"].autoplace.richness_multiplier * b end

-- if data.raw.resource["bauxite-ore"] then 
-- data.raw.resource["bauxite-ore"].autoplace.richness_base = data.raw.resource["bauxite-ore"].autoplace.richness_base * i end
-- if data.raw.resource["bauxite-ore"] then 
-- data.raw.resource["bauxite-ore"].autoplace.richness_multiplier = data.raw.resource["bauxite-ore"].autoplace.richness_multiplier * b end

-- if data.raw.resource["cobalt-ore"] then 
-- data.raw.resource["cobalt-ore"].autoplace.richness_base = data.raw.resource["cobalt-ore"].autoplace.richness_base * i end
-- if data.raw.resource["cobalt-ore"] then 
-- data.raw.resource["cobalt-ore"].autoplace.richness_multiplier = data.raw.resource["cobalt-ore"].autoplace.richness_multiplier * b end

-- if data.raw.resource["gem-ore"] then 
-- data.raw.resource["gem-ore"].autoplace.richness_base = data.raw.resource["gem-ore"].autoplace.richness_base * i end
-- if data.raw.resource["gem-ore"] then 
-- data.raw.resource["gem-ore"].autoplace.richness_multiplier = data.raw.resource["gem-ore"].autoplace.richness_multiplier * b end

-- if data.raw.resource["gold-ore"] then 
-- data.raw.resource["gold-ore"].autoplace.richness_base = data.raw.resource["gold-ore"].autoplace.richness_base * i end
-- if data.raw.resource["gold-ore"] then 
-- data.raw.resource["gold-ore"].autoplace.richness_multiplier = data.raw.resource["gold-ore"].autoplace.richness_multiplier * b end

-- if data.raw.resource["lead-ore"] then 
-- data.raw.resource["lead-ore"].autoplace.richness_base = data.raw.resource["lead-ore"].autoplace.richness_base * i end
-- if data.raw.resource["lead-ore"] then 
-- data.raw.resource["lead-ore"].autoplace.richness_multiplier = data.raw.resource["lead-ore"].autoplace.richness_multiplier * b end


 -- if data.raw.resource["nickel-ore"].autoplace then 
 -- data.raw.resource["nickel-ore"].autoplace.richness_base = data.raw.resource["nickel-ore"].autoplace.richness_base * i end
 
 
 -- if data.raw.resource["nickel-ore"] then 
 -- data.raw.resource["nickel-ore"].autoplace.richness_multiplier = data.raw.resource["nickel-ore"].autoplace.richness_multiplier * b end


-- if data.raw.resource["quartz"] then 
-- data.raw.resource["quartz"].autoplace.richness_base = data.raw.resource["quartz"].autoplace.richness_base * i end
-- if data.raw.resource["quartz"] then 
-- data.raw.resource["quartz"].autoplace.richness_multiplier = data.raw.resource["quartz"].autoplace.richness_multiplier * b end


-- if data.raw.resource["rutile"] then 
-- data.raw.resource["rutile"].autoplace.richness_base = data.raw.resource["rutile"].autoplace.richness_base * i end
-- if data.raw.resource["rutile"] then 
-- data.raw.resource["rutile"].autoplace.richness_multiplier = data.raw.resource["rutile"].autoplace.richness_multiplier * b end