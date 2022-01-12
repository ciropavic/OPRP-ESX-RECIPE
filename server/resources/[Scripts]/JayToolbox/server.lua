RegisterServerEvent("JayToolbox:sendChatMessage")
AddEventHandler("JayToolbox:sendChatMessage", function(source, msg)
    TriggerClientEvent('chat:addMessage', -1, msg)
end)

RegisterServerEvent("JayToolbox:sendMsgCarbineRack")
AddEventHandler("JayToolbox:sendMsgCarbineRack", function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local name = xPlayer.getName(source)
    if name then
        TriggerClientEvent('chat:addMessage', -1, {
            template = "^7{1} ^1Racked Their Long Rifle Back Into Their Car!",
            color = {128, 128, 128},
            multiline = true,
            args = {"", name}
        })
    end
end)

RegisterServerEvent("JayToolbox:sendMsgCarbineUnrack")
AddEventHandler("JayToolbox:sendMsgCarbineUnrack", function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local name = xPlayer.getName(source)
    if name then
        TriggerClientEvent('chat:addMessage', -1, {
            template = "^7{1} ^1Unracked Long Rifle From Their Car!",
            color = {128, 128, 128},
            multiline = true,
            args = {"", name}
        })
    end
end)