-------------------------------------------------------- 911 CALL COMMAND BY ILLUMIINATI -------------------------------------------------------

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(60000)
		PlayerData = ESX.GetPlayerData()
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------

-- [CLIENT SIDED] 911 COMMAND

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/911', 'Send a distress to law enforcement!', {
    { name="Complaint", help="Write your complaint here!" }
})
end)

msg = nil
RegisterCommand('911', function(source, args, rawCommand)
	print("0")
	TriggerEvent("chatMessage"," [911] " , {26, 83, 255},   "A notice with your GPS has been sent to the Authorities" )
	print("1")
	msg = table.concat(args, " ")
	
	PedPosition		= GetEntityCoords(GetPlayerPed(-1))
	
    local playerCoords = GetEntityCoords(PlayerPedId())
		streetName,_ = GetStreetNameAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)
        streetName = GetStreetNameFromHashKey(streetName)
	local msg = rawCommand:sub(4)
	local emergency = '911'
    TriggerServerEvent('esx_jobChat:911',{
        x = ESX.Math.Round(playerCoords.x, 1),
        y = ESX.Math.Round(playerCoords.y, 1),
        z = ESX.Math.Round(playerCoords.z, 1)
    }, msg, streetName, emergency)
	print("2")
end, false)

-----------------------------------------------------------------------------------------------------------------------------------

-- [CLIENT SIDED] EMERGENCY 911  

RegisterNetEvent('esx_jobChat:911EmergencySend')
AddEventHandler('esx_jobChat:911EmergencySend', function(messageFull)
	PlayerData = ESX.GetPlayerData()
	if PlayerData.job.name == 'police' then
		TriggerServerEvent('esx_service:messageAllInService', messageFull, 'police')
    end
	TriggerServerEvent('esx_service:messageAllInService', messageFull, 'police')
end)

-----------------------------------------------------------------------------------------------------------------------------------

-- [CLIENT SIDED] EMERGENCY ALERT MESSAGE

-- RegisterNetEvent('esx_jobChat:911EmergencySend')
-- AddEventHandler('esx_jobChat:911EmergencySend', function(messageFull)
-- 	PlayerData = ESX.GetPlayerData()
-- 	if PlayerData.job.name == 'police' then
-- 		SetNotificationTextEntry("STRINGS");
-- 		AddTextComponentString(normalString);
-- 		SetNotificationMessage("CHAR_CALL911", "CHAR_CALL911", true, 8, "~y~Alert All Officers!~s~", "A civilian is in distress!");
-- 		DrawNotification(false, true);
-- 	end
-- end)

-----------------------------------------------------------------------------------------------------------------------------------

-- [CLIENT SIDED] 911 MARKER

RegisterNetEvent('esx_jobChat:911Marker')
AddEventHandler('esx_jobChat:911Marker', function(targetCoords, type)
	print("10")
	PlayerData = ESX.GetPlayerData()
	print("11")
	if PlayerData.job.name == 'police' then
		print("12")
        local alpha = 250
        local call = AddBlipForCoord(targetCoords.x, targetCoords.y, targetCoords.z)
		print("13")
		SetBlipSprite (call, 480)
		SetBlipDisplay(call, 4)
		SetBlipScale  (call, 1.6)
        SetBlipAsShortRange(call, true)
        SetBlipAlpha(call, alpha)
		print("14")
        SetBlipHighDetail(call, true)
		SetBlipAsShortRange(call, true)
		print("15")
		if type == '911' then
			print("16")
			SetBlipColour (call, 38)
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentString('911')
			EndTextCommandSetBlipName(call)
		end

		while alpha ~= 0 do
			Citizen.Wait(100 * 4)
			alpha = alpha - 1
			SetBlipAlpha(call, alpha)

			if alpha == 0 then
				RemoveBlip(call)
				return
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------