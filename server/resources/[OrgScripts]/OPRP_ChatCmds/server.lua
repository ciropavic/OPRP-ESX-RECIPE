--[[ R P   C O M M A N D S ]]--


-----------------------------------/ O O C \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/ooc" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "OOC | " .. GetPlayerName(source), { 128, 128, 128 }, string.sub(msg,5))
	end
end)



-----------------------------------/ M E \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/do" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "ME | " .. GetPlayerName(source), { 255, 0, 0 }, string.sub(msg,5))
	end
end)

---------------------------/ T W I T T E R \-------------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/tweet" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^4Twitter] (^5@" .. GetPlayerName (source), { 255, 255, 255 }, string.sub(msg,8))
	end
end)

---------------------------------/ A N N O U N C E \-------------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/oprpstaffannounce" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "[Announcement] " .. GetPlayerName (source), { 255, 0, 0 }, string.sub(msg,20))
	end
end)

---------------------------------/ P A T R O L \-------------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/oprpstaffpatrol" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^8[^1Patrol Update^8] ", { 255, 215, 0 }, string.sub(msg,18))
	end
end)

----------------------------------/ A D V E R T \------------------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/ad" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^1ADVERT^0: " .. GetPlayerName(source), { 255, 215, 0 }, string.sub(msg,4))
	end
end)

--------------------------------/ N E W S \------------------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/news" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^2CTV News^0]", { 255, 215, 0 }, string.sub(msg,6))
	end
end)

-----------------------------------/ D A R K W E B \-----------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/darkweb" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^6DarkWeb^0]: " .. GetPlayerName(source), { 255, 215, 0 }, string.sub(msg,10))
	end
end)

---------------------------------/ T P S B R O A D \----------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/tpsbroad" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^4Police Broadcast^0] ^0[^5@Toronto Police Operations^0)", { 255, 215, 0 }, string.sub(msg,11))
	end
end)

--------------------------------- / O P P B R O A D ---------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/oppbroad" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^4Police Broadcast^0] ^0[^3@Ontario Provincial Police Department^0)", { 255, 215, 0 }, string.sub(msg,11))
	end
end)

----------------------------------- / R C M P B R O A D \ ------------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/rcmpbroad" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^4Police Broadcast^0] ^0[^6@Royal Canadian Mounted Police Department^0)", { 255, 215, 0 }, string.sub(msg,12))
	end
end)

----------------------------- / G O V B R O A D \ ----------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/govbroad" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^2Government of Canada Broadcast^0]", { 255, 215, 0 }, string.sub(msg,11))
	end
end)
---------------------------------/ G U N S E I Z E D \----------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/gunseized" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^4Police Broadcast^0] ^0(^5Toronto Police Weapons Seized^0)", { 255, 215, 0 }, string.sub(msg,11))
	end
end)

------------------------------/ B O D Y C A M O N \-----------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/bodycamon" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^4" .. tostring(GetPlayerName(source) .. "^5 activated their bodycam!", { 255, 215, 0 }, string.sub(msg,5)))
	end
end)

------------------------------/ B O D Y C A M O F F \-----------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/bodycamoff" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^4" .. tostring(GetPlayerName(source) .. "^5 deactivated their bodycam!", { 255, 215, 0 }, string.sub(msg,5)))
	end
end)

--------------------------------/ U N R A C K \-------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/unrack" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, tostring(GetPlayerName(source) .. "^1 Unrack Long Rifle From Their Car!", { 255, 215, 0 }, string.sub(msg,5)))
	end
end)

---------------------------------------/ R A C K \-------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/rack" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, tostring(GetPlayerName(source) .. "^1 Racks Their Long Rifle Back Into Their Car!", { 255, 215, 0 }, string.sub(msg,5)))
	end
end)

------------------------------------/ G R A B \------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/grab" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, tostring(GetPlayerName(source) .. "^1 Grabs Their Long Rifle From Bag!", { 255, 215, 0 }, string.sub(msg,5)))
	end
end)

-----------------------------------/ A W A Y \-------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/away" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, tostring(GetPlayerName(source) .. "^1 Puts Long Rifle Back Into Bag!", { 255, 215, 0 }, string.sub(msg,5)))
	end
end)

-----------------------------------/ D I S P A T C H \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/dispatch" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^6[^6^*Dispatch^6] ", { 255, 215, 0 }, string.sub(msg,11))
	end
end)

----------------------------/ S H O W I D \------------------------------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/showid" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^0[^4Driver's License^0:] ", { 255, 215, 0 }, string.sub(msg,8))
	end
end)
---------------/ R P   N A M E \------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/rpname" and enable_roleplay_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "/rpname <Name_Surname/Name> <Message>", { 255, 255, 255 })
		else
		rpname = string.gsub(sm[2], "_", " ")
		rpmsg = string.sub(msg, #sm[1] + 1 + #sm[2] + 2, #msg)
		TriggerClientEvent('chatMessage', -1, "^2".. rpname .. "^7: " .. rpmsg, { 255, 255, 255 })
		end
	end
end)

-------------------/ R O L L \----------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/roll" and enable_roleplay_commands == true then
		CancelEvent()
		if sm[2] == nil then 
			minN = 0
			maxN = 100
			numbr = math.random(minN,maxN)
			TriggerClientEvent('chatMessage', -1, name .. " rolled" .. " ^2" .. numbr .. " ^0out of^3 " .. maxN, { 255, 255, 255 })
		elseif sm[3] == nil then
			minN = 0
			maxN = tonumber(sm[2])
			if not maxN or maxN <= 0 then
			else
				numbr = math.random(minN,maxN)
				TriggerClientEvent('chatMessage', -1, name .. " rolled" .. " ^2" .. numbr .. " ^0out of^3 " .. maxN, { 255, 255, 255 })
			end
		else
			minN = tonumber(sm[2])
			maxN = tonumber(sm[3])
			if (not maxN) or (not minN) or minN > maxN then
			else
				numbr = math.random(minN,maxN)
				TriggerClientEvent('chatMessage', -1, name .. " rolled" .. " ^2" .. numbr .. " ^0out of^3 " .. minN .. " - " .. maxN, { 255, 255, 255 })
			end
		end
	end
end)


-----------------------------------/ I D \---------------------------------
 AddEventHandler('chatMessage', function(source, name, msg)
sm = stringsplit(msg, " ");
if sm[1] == "/id" and enable_police_commands == true then
	CancelEvent()
	if sm[2] == nil then 
		TriggerClientEvent('chatMessage', -1, "/id <First Name> <Surname>", {255,255,255})
	elseif sm[3] == nil then 
		TriggerClientEvent('chatMessage', -1, "/id <First Name> <Surname>", {255,255,255})
	elseif sm[4] == nil then 
		fname = sm[2]
		sname = sm[3]
			TriggerClientEvent('chatMessage', -1, "^2ID ^7|^2 First Name:^7 " .. fname .. " ^2Surname:^7 " .. sname, {255,255,255})
	else
		fname = sm[2]
		sname = sm[3]
		dob = sm[4]
			TriggerClientEvent('chatMessage', -1, "^2ID ^7|^2 First Name:^7 " .. fname .. " ^2Surname:^7 " .. sname .. " ^2DOB:^7 " .. dob, {255,255,255})
	end
end
end)

RegisterServerEvent('chatEvent')
AddEventHandler('chatEvent', function(string)
  TriggerClientEvent('chatMessage', -1, string)
end)

-- STRING SPLIT FUNCTION
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