RegisterNetEvent('esx_service:notifyAllInService')
AddEventHandler('esx_service:notifyAllInService', function(notification, target)
	target = GetPlayerFromServerId(target)
	if target == PlayerId() then return end

	local targetPed = GetPlayerPed(target)
	local mugshot, mugshotStr = ESX.Game.GetPedMugshot(targetPed)

	ESX.ShowAdvancedNotification(notification.title, notification.subject, notification.msg, mugshotStr, notification.iconType)
	UnregisterPedheadshot(mugshot)
end)

RegisterNetEvent('esx_service:messageAllInService')
AddEventHandler('esx_service:messageAllInService', function(message, target)
	target = GetPlayerFromServerId(target)

	if target == PlayerId() then return end

	local targetPed = GetPlayerPed(target)

	TriggerEvent('chat:addMessage', message)
end)