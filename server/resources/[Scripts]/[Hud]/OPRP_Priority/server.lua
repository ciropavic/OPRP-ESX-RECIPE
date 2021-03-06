-- Config
timermax = 21 -- In minutes. Must be one bigger than the max timer you want (Eg if you want 20 it must be 21)

-- Do not touch
cooldown = 0
ispriority = false
ishold = false

RegisterServerEvent('syncPrio')
AddEventHandler('syncPrio', function()

	if ishold == true then
		TriggerClientEvent('UpdateHold', -1, ishold)
	elseif ispriority == false then
		TriggerClientEvent('UpdateCooldown', -1, cooldown)
	elseif ispriority == true then
		TriggerClientEvent('UpdatePriority', -1, ispriority)
	end
	
end)

RegisterCommand("oprpstaffpriority", function()
	if source == 0 or IsPlayerAceAllowed(source, "oprp.priocmds") then
		TriggerEvent("cooldownt")
	else
		TriggerClientEvent('NoPerms', source)
	end

    
end, false)

RegisterCommand("oprpstaffinprogress", function()
	TriggerEvent('isPriority')
end, false)

RegisterCommand("oprpstaffonhold", function()
	TriggerEvent('isOnHold')
end, false)

RegisterNetEvent('isPriority')
AddEventHandler('isPriority', function()
	ispriority = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdatePriority', -1, ispriority)
	TriggerClientEvent('chatMessage', -1, "WARNING", {255, 0, 0}, "^1A priority call is in progress. Please do not interfere, otherwise you will be ^1kicked. ^7All calls are on ^3hold ^7until this one concludes.")
end)

RegisterNetEvent('isOnHold')
AddEventHandler('isOnHold', function()
	ishold = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdateHold', -1, ishold)
end)

RegisterNetEvent('isOnHold')
AddEventHandler('isOnHold', function()
	ispriority = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdateHold', -1, ispriority)
	TriggerClientEvent('chatMessage', -1, "WARNING", {255, 0, 0}, "^1Priorities are currently on hold! This means you cannot start, initiate or engage in a scenario that would involve more than 1 police officer! This includes chases, robberies, shootings, any sort of murder or assault! ^7Failure to comply will result in ^3kick, ban, or permanent ban. ^7You may continue once priorities are activated!")
end)

RegisterNetEvent("cooldownt")
AddEventHandler("cooldownt", function()
	if ispriority == true then
		ispriority = false
		TriggerClientEvent('UpdatePriority', -1, ispriority)
	end

	Citizen.Wait(1)
	if ishold == true then
		ishold = false
		TriggerClientEvent('UpdateHold', -1, ishold)
	end
	Citizen.Wait(1)
	if cooldown == 0 then
		cooldown = 0
		cooldown = cooldown + timermax
		TriggerClientEvent('chatMessage', -1, "WARNING", {255, 0, 0}, "^1A priority call was just conducted. ^3All civilians must wait 20 minutes before conducting another one. ^7Failure to abide by this rule will lead to you being ^1kicked.")
		while cooldown > 0 do
			cooldown = cooldown - 1
			TriggerClientEvent('UpdateCooldown', -1, cooldown)
			Citizen.Wait(60000)
		end
	elseif cooldown ~= 0 then
		CancelEvent()
	end
end)

RegisterNetEvent("cancelcooldown")
AddEventHandler("cancelcooldown", function()
	Citizen.Wait(1)
	while cooldown > 0 do
		cooldown = cooldown - 1
		TriggerClientEvent('UpdateCooldown', -1, cooldown)
		Citizen.Wait(100)
	end
	
end)