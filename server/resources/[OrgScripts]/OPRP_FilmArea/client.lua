	---------------------------------
--- Admin Area, Made by FAXES ---
---------------------------------

--- Config ---
misTxtDis = "~g~Film Area Was Made. ~w~Do not RP within this area." -- Use colors from: https://gist.github.com/leonardosnt/061e691a1c6c0597d633
blipRadius = 250.0
blipCol = 2 -- Default: 2 (Green) Use colors from https://wiki.gt-mp.net/index.php?title=Blips (At Bottom)
blipName = "Film Area"

--- Code ---
local blip = nil
local radiusBlip = nil

function missionTextDisplay(text, time)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(text)
    DrawSubtitleTimed(time, 1)
end

RegisterNetEvent('Fax:AdminAreaSet')
AddEventHandler("Fax:AdminAreaSet", function(s)
    RemoveBlip(blip)
    RemoveBlip(radiusBlip)

    local src = s
    local coords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(src)))
    blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    radiusBlip = AddBlipForRadius(coords.x, coords.y, coords.z, blipRadius)
    SetBlipSprite(blip, 269)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, blipCol)
    SetBlipScale(blip, 1.0)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(blipName)
    EndTextCommandSetBlipName(blip)

    
    SetBlipAlpha(radiusBlip, 80)
    SetBlipColour(radiusBlip, blipCol)

    missionTextDisplay(misTxtDis, 8000)
end)

RegisterNetEvent('Fax:AdminAreaClear')
AddEventHandler("Fax:AdminAreaClear", function()
    RemoveBlip(blip)
    RemoveBlip(radiusBlip)
    missionTextDisplay("Film area no longer in effect", 5000)
end)
    