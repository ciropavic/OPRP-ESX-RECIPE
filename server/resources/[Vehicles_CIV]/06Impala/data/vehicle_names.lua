function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry("impalal", "2006 Chevy Impala"),
	AddTextEntry("impalat", "2006 Chevy Impala Taxi")
end)