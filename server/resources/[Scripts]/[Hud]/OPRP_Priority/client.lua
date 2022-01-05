local cooldown = 0
local ispriority = false
local ishold = false

TriggerServerEvent('syncPrio')

AddEventHandler('onClientMapStart', function()
    Wait(2000)
    TriggerServerEvent('syncPrio')
end)

RegisterCommand("resetpcd", function()
    TriggerServerEvent("cancelcooldown")
end, false)

RegisterNetEvent('UpdateCooldown')
AddEventHandler('UpdateCooldown', function(newCooldown)
    cooldown = newCooldown
end)

RegisterNetEvent('UpdatePriority')
AddEventHandler('UpdatePriority', function(newispriority)
    ispriority = newispriority
end)

RegisterNetEvent('UpdateHold')
AddEventHandler('UpdateHold', function(newishold)
    ishold = newishold
end)

RegisterNetEvent('NoPerms')
AddEventHandler('NoPerms', function()
    ShowInfo("~r~Insufficient Permissions.")
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if ishold == true then
			DrawText2("~r~Priority Cooldown: ~b~Priorities Are On Hold")
		elseif ispriority == false then
			DrawText2("~r~Priority Cooldown: ~b~".. cooldown .." Minutes")
		elseif ispriority == true then
			DrawText2("~r~Priority Cooldown: ~b~Priority In Progress")
		end
	end
end)

function DrawText2(text)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.40, 0.40)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.181, 0.949)
end

function ShowInfo(text)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, false)
end