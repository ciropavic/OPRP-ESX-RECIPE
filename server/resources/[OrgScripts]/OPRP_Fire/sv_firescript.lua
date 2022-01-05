--Coded by Albo1125

RegisterServerEvent("FireScript:FirePutOut")
AddEventHandler("FireScript:FirePutOut", function(x, y, z)
	TriggerClientEvent('FireScript:StopFireAtPosition', -1, x, y, z)
	print("Fire put out - syncing to all clients."..x..y..z)
end)

AddEventHandler('chatMessage', function(source, n, message)
    command = stringsplit(message, " ")

	if command[1] == "/startfire" then
		CancelEvent()
		TriggerClientEvent('FireScript:StartFireAtPlayer', -1, source, tonumber(command[2]), tonumber(command[3]), not not command[4])
		print("starting fire")
	elseif command[1] == "/stopfire" then
		CancelEvent()
		TriggerClientEvent('FireScript:StopFiresAtPlayer', -1, source)
		print("stopping fire")
	elseif command[1] == "/stopallfires" then
		CancelEvent()
		TriggerClientEvent('FireScript:StopAllFires', -1)
		print("stopping all fires")
	end
	
	if command[1] == "/startsmoke" then
		CancelEvent()
		TriggerClientEvent('FireScript:StartSmokeAtPlayer', -1, source, tonumber(command[2]))
		print("starting smoke")
	elseif command[1] == "/stopsmoke" then
		CancelEvent()
		TriggerClientEvent('FireScript:StopSmokeAtPlayer', -1, source)
		print("stopping smoke")
	elseif command[1] == "/stopallsmoke" then
		CancelEvent()
		TriggerClientEvent('FireScript:StopAllSmoke', -1)
		print("stopping all smoke")
	end
end)

print('FireScript by Albo1125 (LUA, C#. FiveM/FiveReborn) (Polecat324, DOJ). Commands to type in chat (T):')
print('/startfire MAXFLAMES MAXRANGE - Starts fire with specified params.')
print('/stopfire - Stops nearby fires.')
print('/stopallfires - Stops all fires.')
print('/startsmoke SCALE - Starts smoke with specified params.')
print('/stopsmoke - Stops nearby smoke.')
print('/stopallsmoke - Stops all smoke.')

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end