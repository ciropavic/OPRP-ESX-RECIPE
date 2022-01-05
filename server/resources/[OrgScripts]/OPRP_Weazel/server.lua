
AddEventHandler('chatMessage', function(source, n, message)
	if message == "/cam" then
		
		CancelEvent()
		local src = source
		TriggerClientEvent("Cam:ToggleCam", src)
	end
	
	if message == "/mic" then
	CancelEvent()
		local src = source
		TriggerClientEvent("Mic:ToggleMic", src)
	end
	
end)
