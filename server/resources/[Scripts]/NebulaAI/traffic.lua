-- the following values must satisfy the condtions (let x be the frequency) 
-- x ≥ 0.0
-- x must be a float type

local config = {
    pedFrequency = 1.0,
    trafficFrequency = 1.0
    --[[ 1.0 = %100]]
    --[[ 0.0 = %0]]
}

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)

        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
    end
end)