MomoLib.effect = {}
function MomoLib.NewEffect(power, speed, prod, pollution, quality)
    local effect = {}
    if (power ~= nil) then effect.consumption   = power end
    if (speed ~= nil) then effect.speed         = speed end
    if (prod ~= nil) then effect.productivity   = prod end
    if (pollution ~= nil) then effect.pollution = pollution end
    if (quality ~= nil) then effect.quality     = quality end
    return effect
end
function MomoLib.ChangeEffect(effect, power, speed, prod, pollution, quality)
    if type(effect) == "string" then
        MomoLib.GetPrototype("module", effect, function(p) effect = p.effect end)
    end
    if (power ~= nil) then effect.consumption   = effect.consumption + power end
    if (speed ~= nil) then effect.speed         = effect.speed + speed end
    if (prod ~= nil) then effect.productivity   = effect.productivity + prod end
    if (pollution ~= nil) then effect.pollution = effect.pollution + pollution end
    if (quality ~= nil) then effect.quality     = effect.quality + quality end
    return effect
end
function MomoLib.SetEffect(effect, power, speed, prod, pollution, quality)
    if type(effect) == "string" then
        MomoLib.GetPrototype("module", effect, function(p) effect = p.effect end)
    end
    if (power ~= nil) then effect.consumption   = power end
    if (speed ~= nil) then effect.speed         = speed end
    if (prod ~= nil) then effect.productivity   = prod end
    if (pollution ~= nil) then effect.pollution = pollution end
    if (quality ~= nil) then effect.quality     = quality end
    return effect
end