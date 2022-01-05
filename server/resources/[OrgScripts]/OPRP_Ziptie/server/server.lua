RegisterServerEvent("NAT2K15:SZIPBACK")
AddEventHandler("NAT2K15:SZIPBACK", function(player)
    TriggerClientEvent('NAT2K15:PLAYANIM', source)
    TriggerClientEvent("NAT2K15:CZIPBACK", player)
    TriggerClientEvent('NAT2K15:PLAYSOUNDD', source, 'zip', config.sound_vol)
    TriggerClientEvent('NAT2K15:PLAYSOUNDD', player, 'zip', config.sound_vol)
end)

RegisterServerEvent("NAT2K15:FRONTZIP")
AddEventHandler("NAT2K15:FRONTZIP", function(player)
    TriggerClientEvent('NAT2K15:PLAYANIM', source)
    TriggerClientEvent('NAT2K15:PLAYSOUNDD', source, 'zip', config.sound_vol)    
    TriggerClientEvent('NAT2K15:PLAYSOUNDD', player, 'zip', config.sound_vol)
    TriggerClientEvent("NAT2K15:CZIPFRONT", player)
end)

RegisterServerEvent("NAT2K15:FREEDAUSER")
AddEventHandler("NAT2K15:FREEDAUSER", function(player)
    TriggerClientEvent('NAT2K15:PLAYANIM', source)
    TriggerClientEvent('NAT2K15:PLAYSOUNDD', source, 'unzip', config.sound_vol)    
    TriggerClientEvent('NAT2K15:PLAYSOUNDD', player, 'unzip', config.sound_vol)
    TriggerClientEvent("NAT2K15:BEFREEWEIRDO", player)
end)


RegisterCommand("zip", function(source, args, message)
	local side = args[1];
    if(side == nil) then return TriggerClientEvent('chatMessage', "[^3SYSTEM^0] Please ensure to provide a vaild side to zip! ^2front^0/^3back") end
    side = side:lower()
    if(config.enable_perms == true) then
        if IsPlayerAceAllowed(source, config.ace_perm) then
            if(side == "front") then
                TriggerClientEvent("NAT2K15:ZIPFRONT", source)
            elseif(side == "back") then
                TriggerClientEvent("NAT2K15:BACKZIP", source)
            else 
                TriggerClientEvent('chatMessage', source, "[^3SYSTEM^0] Please ensure to provide a vaild side to zip! ^2front^0/^3back")
            end 
        else 
            TriggerClientEvent('chatMessage', source, "^1Access Denied")
        end
    else 
        if(side == "front") then
            TriggerClientEvent("NAT2K15:ZIPFRONT", source)
        elseif(side == "back") then
            TriggerClientEvent("NAT2K15:BACKZIP", source)
        else 
            TriggerClientEvent('chatMessage', source, "[^3SYSTEM^0] Please ensure to provide a vaild side to zip! ^2front^0/^3back")
        end 
    end
end)


RegisterCommand("unzip", function(source, args, message)
    if(config.enable_perms == true) then
        if IsPlayerAceAllowed(source, config.ace_perm) then
            TriggerClientEvent("NAT2K15:UNZIPUSER", source)
        else 
            TriggerClientEvent('chatMessage', source, "^1Access Denied")
        end
    else 
        TriggerClientEvent("NAT2K15:UNZIPUSER", source)
    end
end)
