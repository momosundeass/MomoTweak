local s = MomoLib.itemNames
local profiles = {
    {have = s.greenSci, add = 80, increases = {
        {target = s.redSci, add = 1}
    }},
    {have = s.blackSci, add = 20, increases = {
        {target = s.redSci, add = 2},
        {target = s.greenSci, add = 1},
    }},
    {have = s.blueSci, add = 300, mul = 2, increases = {
        {target = s.redSci, add = 6},
        {target = s.greenSci, add = 1},
        {target = s.blackSci, add = 1},
    }},
    {have = s.purpleSci, add = 1000, mul = 5, increases = {
        {target = s.redSci, add = 8},
        {target = s.greenSci, add = 6},
        {target = s.blackSci, add = 2},
        {target = s.blueSci, add = 1},
    }},
    {have = s.yellowSci, add = 1000, mul = 5, increases = {
        {target = s.redSci, add = 8},
        {target = s.greenSci, add = 5},
        {target = s.blackSci, add = 3},
        {target = s.blueSci, add = 2},
    }},
    {have = s.whiteSci, add = 3000, mul = 8, increases = {
        {target = s.redSci, add = 12},
        {target = s.greenSci, add = 8},
        {target = s.blackSci, add = 6},
        {target = s.blueSci, add = 6},
        {target = s.purpleSci, add = 3},
        {target = s.yellowSci, add = 3},
    }},
    {have = s.matterSci, add = 6000, mul = 12, increases = {
        {target = s.purpleSci, add = 5},
        {target = s.yellowSci, add = 5},
        {target = s.whiteSci, add = 11},
    }},
    {have = s.advSci, add = 10000, mul = 20, increases = {
        {target = s.purpleSci, add = 11},
        {target = s.yellowSci, add = 11},
        {target = s.whiteSci, add = 15},
        {target = s.matterSci, add = 3},
    }},
    {have = s.singularitySci, add = 15000, mul = 50, increases = {
        {target = s.purpleSci, add = 16},
        {target = s.yellowSci, add = 16},
        {target = s.whiteSci, add = 24},
        {target = s.matterSci, add = 6},
        {target = s.advSci, add = 3},
    }},
}

for i, tech in pairs(data.raw.technology) do
    if not tech.unit then goto continue end
    local oriCount = tech.unit.count
    for _, profile in ipairs(profiles) do
        local have = MomoLib.technology.GetIngredient(tech, profile.have)
        if have then
            if tech.unit.count then
                tech.unit.count = (oriCount * (profile.mul or 1)) + (have[2] * profile.add)
            end
            for _, ingredient in ipairs(profile.increases) do
                local target = MomoLib.technology.GetIngredient(tech, ingredient.target)
                if target then target[2] = target[2] + ingredient.add end
            end

        end
    end
    ::continue::
end
