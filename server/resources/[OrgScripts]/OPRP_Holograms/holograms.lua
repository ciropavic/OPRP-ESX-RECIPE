--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)		
				-- Main Welcoming Text
		if GetDistanceBetweenCoords( -265.25, -963.22, 31.23 , GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -263.01, -968.02, 34.50  -1.400, "Welcome to Ontario Provincial Roleplay!", 20, 0.1, 0.1)
			Draw3DText( -263.01, -968.02, 34.50   -1.700, "We are a Serious roleplaying community based in Ontario, and we hope you enjoy your stay!", 15, 0.1, 0.1)
			Draw3DText( -263.01, -968.02, 34.50   -2.100, "If you are a new member, please read the text on your left to help get started!", 12, 0.1, 0.1)
			Draw3DText( -263.01, -968.02, 34.50   -2.400, "If you are interested in the Emergency field, please read the text on your right!", 12, 0.1, 0.1)
		end	

				-- New Member Text
		if GetDistanceBetweenCoords( -265.25, -963.22, 31.23, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -260.27, -965.07, 32.00  -1.000, "Welcome new member!", 4, 0.1, 0.1)
			Draw3DText( -260.27, -965.07, 32.00  -1.200, "Please join our discord, as everything you will need is on there!", 4, 0.1, 0.1)
			Draw3DText( -260.27, -965.07, 32.00  -1.400, "https://discord.gg/XT6eZUruJK", 4, 0.1, 0.1)		
			Draw3DText( -260.27, -965.07, 32.00  -1.600, "Car spawncodes, server keybinds/commands, frequently asked questions,", 4, 0.1, 0.1)		
			Draw3DText( -260.27, -965.07, 32.00  -1.800, "CAD system, support/report channels, you name it!", 4, 0.1, 0.1)		
			Draw3DText( -260.27, -965.07, 32.00  -2.200, "Make sure to read the server rules, and log into CAD to play on the server!", 4, 0.1, 0.1)		
			Draw3DText( -260.27, -965.07, 32.00  -2.400, "Finally, and most importantly, have fun! It is a game afterall!", 4, 0.1, 0.1)		
		end		

				-- Emergency Text
		if GetDistanceBetweenCoords( -265.25, -963.22, 31.23, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -267.10, -969.11, 32.00  -1.000, "To join a department on Ontario Provincial Roleplay, there's a few things you have to do to qualify!", 4, 0.1, 0.1)
			Draw3DText( -267.10, -969.11, 32.00  -1.200, "Before you do anything, you must have at least 2 required playtime hours on the server.", 4, 0.1, 0.1)
			Draw3DText( -267.10, -969.11, 32.00  -1.400, "Next, you can join the department discord found in the available jobs channel on our main discord!", 4, 0.1, 0.1)		
			Draw3DText( -267.10, -969.11, 32.00  -1.600, "https://discord.gg/XT6eZUruJK", 4, 0.1, 0.1)	
			Draw3DText( -267.10, -969.11, 32.00  -1.800, "After you fill out an application, you'll have to go through a mandatory training session for your department!", 4, 0.1, 0.1)
			Draw3DText( -267.10, -969.11, 32.00  -2.000, "After successfully passing training, you will be able to go on duty as a member of that department!", 4, 0.1, 0.1)
		end

	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
