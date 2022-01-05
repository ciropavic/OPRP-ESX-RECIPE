local TeleportFromTo = {
	["Cafeteria"] = {
		positionFrom = { ['x'] = -1603.01, ['y'] = 206.30, ['z'] = 59.30, nom = "Dormitory Cafeteria"},
		positionTo = { ['x'] = -1600.65, ['y'] = 212.21, ['z'] = -98.78, nom = "outside"},
	},
	["School Entrance 1"] = {
		positionFrom = { ['x'] = -1635.45, ['y'] = 181.26, ['z'] = 61.75, nom = "School"},
		positionTo = { ['x'] = -1636.84, ['y'] = 180.49, ['z'] = -98.79, nom = "outside"},
	},	
	["School Entrance 2"] = {
		positionFrom = { ['x'] = -1671.55, ['y'] = 174.08, ['z'] = 61.75, nom = "School"},
		positionTo = { ['x'] = -1670.84, ['y'] = 174.86, ['z'] = -98.79, nom = "outside"},
	},	
	["School Entrance 3"] = {
		positionFrom = { ['x'] = -1664.03, ['y'] = 158.12, ['z'] = 61.74, nom = "School"},
		positionTo = { ['x'] = -1663.41, ['y'] = 158.28, ['z'] = -98.79, nom = "outside"},
	},
	
	["Harmony Vault"] = {
		positionFrom = { ['x'] = 1176.41, ['y'] = 2711.68, ['z'] = 38.1, nom = "Vault"},
		positionTo = { ['x'] = 1174.61, ['y'] = 2711.69, ['z'] = 38.07, nom = "Bank"},
	},
		
	["Rockford Hills Vault"] = {
		positionFrom = { ['x'] = -1212.07, ['y'] = -335.82, ['z'] = 37.79, nom = "Vault"},
		positionTo = { ['x'] = -1210.06, ['y'] = -334.79, ['z'] = 37.78, nom = "Bank"},
	},		
	
	["Banham Canyon Vault"] = {
		positionFrom = { ['x'] = -2957.71, ['y'] = 481.12, ['z'] = 15.71, nom = "Vault"},
		positionTo = { ['x'] = -2957.69, ['y'] = 483.21, ['z'] = 15.68, nom = "Bank"},
		
	},
		
	["FIB Building"] = {
		positionFrom = { ['x'] = 136.2, ['y'] = -761.73, ['z'] = 242.15, nom = "Lobby"},
		positionTo = { ['x'] = 136.2, ['y'] = -761.72, ['z'] = 45.74, nom = "Top Floor"},
	},
	
	["Casino"] = {
		positionFrom = { ['x'] = 924.4, ['y'] = 46.89, ['z'] = 81.19, nom = "Outside"},
		positionTo = { ['x'] = 937.28, ['y'] = 39.07, ['z'] = 75.32, nom = "Casino"},
	},d
}

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
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

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k, j in pairs(TeleportFromTo) do

			--msginf(k .. " " .. tostring(j.positionFrom.x), 15000)
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 150.0)then
				DrawMarker(1, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to go to ".. j.positionFrom.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end

			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 150.0)then
				DrawMarker(1, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Press ~r~E~w~ to go to ".. j.positionTo.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
		end
	end
end)
