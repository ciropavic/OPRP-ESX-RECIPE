-- Create blips
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(vector3(-265.0, -963.6, 30.2))

    SetBlipSprite (blip, 459)
    SetBlipDisplay(blip, 2)
    SetBlipScale  (blip, 1)
    SetBlipColour (blip, 11)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Phone Store")
    EndTextCommandSetBlipName(blip)
end)