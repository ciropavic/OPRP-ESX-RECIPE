--[[
─────────────────────────────────────────────────────────────────

	ShotSpotter (client.lua) - Created by ItzEndah
	Current Version: 1.0.2 (June 2021)
	
	Support - ItzEndah#0001 on Discord
	
	For the configuration, change the values in the config.lua
	DO NOT EDIT THIS FILE IF YOU DON'T KNOW WHAT YOU ARE DOING	

─────────────────────────────────────────────────────────────────
]]--


-- Notify player
GetPlayerName()
RegisterNetEvent('gunshotNotify')
AddEventHandler('gunshotNotify', function(alert)
		Wait(Config.NotifyTime)
        if IsPedInAnyPoliceVehicle(PlayerPedId()) then
			PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
            Notify(alert)
        end
end)

-- Show blip on map
RegisterNetEvent('gunshotLocation')
AddEventHandler('gunshotLocation', function(gx, gy, gz)
		Wait(Config.NotifyTime)
        if IsPedInAnyPoliceVehicle(PlayerPedId()) then 
            local gunshotBlip = AddBlipForRadius(gx, gy, gz, Config.BlipRadius)
            SetBlipSprite(gunshotBlip, 161)
            SetBlipColour(gunshotBlip, Config.BlipColor)
            SetBlipAsShortRange(gunshotBlip, 0)
            Wait(Config.BlipTime)
            SetBlipSprite(gunshotBlip, 2)						
        end
end)

-- Gunshot detection
Citizen.CreateThread( function()
    while true do
        Wait(80)
        local ped = PlayerPedId()
		local weapon = GetSelectedPedWeapon(ped)
		local isSilenced = IsPedCurrentWeaponSilenced(ped)
        local plyPos = GetEntityCoords(ped,  true)
        local s1, s2 = GetStreetNameAtCoord(plyPos.x, plyPos.y, plyPos.z)
        local street1 = GetStreetNameFromHashKey(s1)
        local street2 = GetStreetNameFromHashKey(s2)
		
		if IsPedShooting(ped) and not isSilenced and not isBlacklisted(weapon) then
            TriggerServerEvent('inProgressBlip', plyPos.x, plyPos.y, plyPos.z)
            if s2 == 0 then
                TriggerServerEvent('inProgress1S', street1)
            elseif s2 ~= 0 then
                TriggerServerEvent('inProgress2S', street1, street2)
            end
            Wait(Config.AlertCooldown)
			end
        end     
end)


-- Notify function
function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

-- Weapon blacklist function
function isBlacklisted(model)
	for _, blacklistedWeapon in pairs(Config.Blacklist) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end
	return false
end
