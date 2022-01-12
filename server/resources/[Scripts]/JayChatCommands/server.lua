if Config.defaultToOOC then 
    print("[JayChatCommands] Default to OOC is set to true")
    AddEventHandler('chatMessage', function(source, name, message)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local name = xPlayer.getName(source)

        if string.sub(message, 1, string.len("/")) ~= "/" then
            local _source = source
            local xPlayer = ESX.GetPlayerFromId(_source)
            local name = xPlayer.getName(source)
            if name then
                TriggerClientEvent('chat:addMessage', -1, {
                    template = "^*^5[OOC] {1} [#{2}]: ^r^5{3}",
                    color = {128, 128, 128},
                    multiline = true,
                    args = {"", name, source, message}
                })
            end		
        end
        CancelEvent()
    end)
end 

if Config.commands.ooc then
    print("[JayChatCommands] OOC command is enabled")
    RegisterCommand('ooc', function(source, args, user)
        local message = table.concat(args, " ")
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local name = xPlayer.getName(source)
        TriggerClientEvent('chat:addMessage', -1, {
            template = "^*^5[OOC] {1} [#{2}]: ^r^5{3}",
            color = {128, 128, 128},
            multiline = true,
            args = {"", name, source, message}
        })
    end, false)
end

if Config.commands.gme then
    print("[JayChatCommands] GME command is enabled")
    RegisterCommand('gme', function(source, args, user)
        local message = table.concat(args, " ")
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local name = xPlayer.getName(source)
        TriggerClientEvent('chat:addMessage', -1, {
            template = "^*^2[GME] {1} [#{2}]: ^r^7{3}",
            color = {255, 102, 0},
            multiline = true,
            args = {"", name, source, message}
        })
    end, false)
end

if Config.commands.gmer then
    print("[JayChatCommands] GMER command is enabled")
    RegisterCommand('gmer', function(source, args, user)
        local message = table.concat(args, " ")
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local name = xPlayer.getName(source)
        TriggerClientEvent('chat:addMessage', -1, {
            template = "^*^2[GME] {1} [#{2}]: ^r^8{3}",
            color = {255, 102, 0},
            multiline = true,
            args = {"", name, source, message}
        })
    end, false)
end

if Config.commands.me then
    print("[JayChatCommands] ME command is enabled")
    RegisterCommand('me', function(source, args, user)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local name = xPlayer.getName(source)
        TriggerClientEvent("SendProximityMessageMe", -1, source, name, table.concat(args, " "))
      end, false)
end

if Config.commands.mer then
    print("[JayChatCommands] MER command is enabled")
    RegisterCommand('mer', function(source, args, user)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local name = xPlayer.getName(source)
        TriggerClientEvent("SendProximityMessageMer", -1, source, name, table.concat(args, " "))
      end, false)
end