---------------------------------
--- Admin Area, Made by FAXES ---
---------------------------------

RegisterCommand('filmarea', function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, 'fax.admin') then
        TriggerClientEvent("Fax:AdminAreaSet", -1, source)
    else
        TriggerClientEvent("chatMessage", source, "^*^1Insufficient Permissions.")
    end
end)

RegisterCommand('clearfilm', function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, 'fax.admin') then
        TriggerClientEvent("Fax:AdminAreaClear", -1, source)
    else
        TriggerClientEvent("chatMessage", source, "^*^1Insufficient Permissions.")
    end
end)