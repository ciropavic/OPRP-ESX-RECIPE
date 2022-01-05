function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry("10ram", "2010 Dodge RAM"),
	AddTextEntry("pjtrailer", "PJ Trailer")
end)