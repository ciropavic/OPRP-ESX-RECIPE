
RegisterServerEvent("chatMessage")
AddEventHandler("chatMessage", function(source, n, message)
	if message == "/huk" then
		CancelEvent()
		TriggerClientEvent("HandsupKnees", source)
	end
end)