local zip = false
local HandCuff = nil
local zipback = false
local zipfront = false


RegisterNetEvent('NAT2K15:PLAYANIM')
AddEventHandler('NAT2K15:PLAYANIM', function()
	local ped = PlayerPedId()
	while not HasAnimDictLoaded('mp_arresting') do
		Citizen.Wait(100)
	end
	TaskPlayAnim(ped, 'mp_arresting', 'a_uncuff', 8.0, -8, 3000, 49, 0, 0, 0, 0)
end)

RegisterNetEvent('NAT2K15:PLAYSOUNDD')
AddEventHandler('NAT2K15:PLAYSOUNDD', function(soundFile, soundVolume)
    SendNUIMessage({transactionType = 'playSound', transactionFile = soundFile, transactionVolume = soundVolume})
end)


RegisterNetEvent('NAT2K15:BACKZIP')
AddEventHandler('NAT2K15:BACKZIP', function(id)
	local player = Closetplayer()
	if(player == false) then return TriggerEvent('chatMessage', "[^3SYSTEM^0] There are no players around you!") end
	TriggerServerEvent("NAT2K15:SZIPBACK", id)
end)


RegisterNetEvent('NAT2K15:ZIPFRONT')
AddEventHandler('NAT2K15:ZIPFRONT', function()
	local player = Closetplayer()
	if(player == false) then return TriggerEvent('chatMessage', "[^3SYSTEM^0] There are no players around you!") end
	TriggerServerEvent("NAT2K15:FRONTZIP", player)
end)


RegisterNetEvent('NAT2K15:UNZIPUSER')
AddEventHandler('NAT2K15:UNZIPUSER', function()
	local player = Closetplayer()
	if(player == false) then return TriggerEvent('chatMessage', "[^3SYSTEM^0] There are no players around you!") end
	TriggerServerEvent("NAT2K15:FREEDAUSER", player)
end)



RegisterNetEvent('NAT2K15:CZIPBACK')
AddEventHandler('NAT2K15:CZIPBACK', function()
	local ped = PlayerPedId()
	if not zip then
		local coords = GetEntityCoords(ped)
		RequestAnimDict("mp_arresting")
		while not HasAnimDictLoaded("mp_arresting") do
			Citizen.Wait(100)
		end
		TaskPlayAnim(ped, "mp_arresting", "idle",8.0,-8,-1,49,0,0,0,0)
		
		if HandCuff ~= nil then
			DetachEntity(HandCuff, true, true)
			DeleteEntity(HandCuff)
		end
		
		SetEnableHandcuffs(ped, true)
		DisablePlayerFiring(ped, true)
		SetCurrentPedWeapon(ped, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
		SetPedCanPlayGestureAnims(ped, false)
		FreezeEntityPosition(ped, false)
		DisplayRadar(false)
		zip = true
		HandCuff = CreateObject(GetHashKey("hei_prop_zip_tie_positioned"), coords.x, coords.y, coords.z, true, true, true)
		AttachEntityToEntity(HandCuff, ped, GetPedBoneIndex(ped, 60309), -0.020, 0.035, 0.06, 0.04, 155.0, 80.0, true, false, false, false, 0, true)
		zipback = true
		zipfront = false
	end
end)

RegisterNetEvent('NAT2K15:BEFREEWEIRDO')
AddEventHandler('NAT2K15:BEFREEWEIRDO', function()
	local ped = PlayerPedId()
	if HandCuff then
		zip = false
		
		DetachEntity(HandCuff, true, true)
		DeleteEntity(HandCuff)
		zipback = false
		zipfront = false
		ClearPedSecondaryTask(ped)
		SetEnableHandcuffs(ped, false)
		DisablePlayerFiring(ped, false)
		DisplayRadar(true)
	end
end)

RegisterNetEvent('NAT2K15:CZIPFRONT')
AddEventHandler('NAT2K15:CZIPFRONT', function()
	local ped = PlayerPedId()
	if not zip then
		local coords = GetEntityCoords(GetPlayerPed(PlayerId()), false)
		RequestAnimDict("anim@move_m@prisoner_cuffed")
		while not HasAnimDictLoaded("anim@move_m@prisoner_cuffed") do
			Citizen.Wait(100)
		end
		TaskPlayAnim(ped, "anim@move_m@prisoner_cuffed", "idle",8.0,-8,-1,49,0,0,0,0)
		
		if HandCuff ~= nil then
			DetachEntity(HandCuff, true, true)
			DeleteEntity(HandCuff)
		end
		
		SetEnableHandcuffs(ped, true)
		DisablePlayerFiring(ped, true)
		SetCurrentPedWeapon(ped, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
		SetPedCanPlayGestureAnims(ped, false)
		FreezeEntityPosition(ped, false)
		DisplayRadar(false)
		HandCuff = CreateObject(GetHashKey("hei_prop_zip_tie_positioned"), coords.x, coords.y, coords.z, true, true, true)
		AttachEntityToEntity(HandCuff, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309), -0.012, 0.0, 0.08, 340.0, 95.0, 120.0, true, false, false, false, 0, true)
		zipback = false
		zipfront = true
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ped = PlayerPedId()
		if zipfront or  zipback then
			DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
			
			if IsEntityPlayingAnim(ped, 'mp_arresting', 'idle', 3) ~= 1 and zipback then
				RequestAnimDict('mp_arresting')
				TaskPlayAnim(ped, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
			end
			if IsEntityPlayingAnim(ped, 'anim@move_m@prisoner_cuffed', 'idle', 3) ~= 1 and zipfront then
				RequestAnimDict('anim@move_m@prisoner_cuffed')
				TaskPlayAnim(ped, 'anim@move_m@prisoner_cuffed', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
			end
		else
			Citizen.Wait(500)
		end
	end
end)

