function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
AddTextEntry('0xBC993509', 'BMHyundaiI30')
AddTextEntry('3164157193', 'BMHyundaiI30')
AddTextEntry('-1130810103', 'BMHyundaiI30')

	
end)