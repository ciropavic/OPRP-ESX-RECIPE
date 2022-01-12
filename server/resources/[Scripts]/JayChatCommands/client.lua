-- Create the chat suggestions for the commands 
-- checking if their enabled in the config first
Citizen.CreateThread(function()

    if Config.commands.me then
        TriggerEvent('chat:addSuggestion', '/me', 'Send message in the third person. (Proximity Chat)', {
            { name="Action", help="action."}
        })

        RegisterNetEvent('SendProximityMessageMe')
        AddEventHandler('SendProximityMessageMe', function(id, name, message)
            local myID = PlayerId()
            local pID = GetPlayerFromServerId(id)
            if pID == myID then
                TriggerEvent('chatMessage', "", {255, 0, 0}, "^*^3> ^*^7" .. name .. " [#" .. GetPlayerServerId(PlayerId()) .. "]: ^r" .. message)
            elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < Config.range then
                distance = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true)
                TriggerEvent('chatMessage', "", {255, 0, 0}, "^*^3> ^*^7" .. name .. " [#" .. GetPlayerServerId(PlayerId()) .. "] (" .. distance .. "): ^r" .. message)
            end
        end)
    end

    if Config.commands.mer then
        TriggerEvent('chat:addSuggestion', '/mer', 'Send highlighted message in the third person. (Proximity Chat)', {
            { name="Action", help="action."}
        })

        RegisterNetEvent('SendProximityMessageMer')
        AddEventHandler('SendProximityMessageMer', function(id, name, message)
            local myID = PlayerId()
            local pID = GetPlayerFromServerId(id)
            if pID == myID then
                TriggerEvent('chatMessage', "", {255, 0, 0}, "^*^3> ^*^7" .. name .. " [#" .. GetPlayerServerId(PlayerId()) .. "]: ^r^8" .. message)
            elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < Config.range then
            distance = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true)
                TriggerEvent('chatMessage', "", {255, 0, 0}, "^*^3> ^*^7" .. name .. " [#" .. GetPlayerServerId(PlayerId()) .. "] (" .. distance .. "): ^r^8" .. message)
            end
        end)
    end

    if Config.commands.gme then
        TriggerEvent('chat:addSuggestion', '/gme', 'Send message in the third person. (Global Chat)', {
            { name="Action", help="action."}
        })

    end

    if Config.commands.gmer then
        TriggerEvent('chat:addSuggestion', '/gme', 'Send highlighted message in the third person. (Global Chat)', {
            { name="Action", help="action."}
        })
    end

    if Config.commands.ooc then
        TriggerEvent('chat:addSuggestion', '/ooc', 'Out Of Character chat Message. (Global Chat)', {
            { name="Message", help="Put out of context chat."}
        })
    end

end)

