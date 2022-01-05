--
-- HOOD COMMAND
--
if config.isCommandEnabled.hood then 

    RegisterCommand("hood", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )
    
        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )
    
            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )
    
                if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 4) > 0 then
                            SetVehicleDoorShut(vehicle, 4, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                    end
    
                else 
                    drawNotification( "You must be in the driver's seat!" )
                end 
            else
                local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
                local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )
    
                if ( DoesEntityExist( vehicle ) ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 4) > 0 then
                            SetVehicleDoorShut(vehicle, 4, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                    end
    
                else 
                    drawNotification( "~y~You must be in or near a vehicle to open or close the hood." )
                end 
            end 
    
        end 
    
    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/hood", "Open and Close your vehicles hood")
    end)

end

--
-- TRUNK COMMAND
--
if config.isCommandEnabled.trunk then 
    RegisterCommand("trunk", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 5) > 0 then
                            SetVehicleDoorShut(vehicle, 5, false)
                        else
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        end
                    end

                else 
                    drawNotification( "You must be in the driver's seat!" )
                end 
            else
                local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
                local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

                if ( DoesEntityExist( vehicle ) ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 5) > 0 then
                            SetVehicleDoorShut(vehicle, 5, false)
                        else
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        end
                    end

                else 
                    drawNotification( "~y~You must be in or near a vehicle to open or close the trunk." )
                end 
            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/trunk", "Open and Close your vehicles trunk")
    end)
    
end

--
-- FDDOOR COMMAND
--
if config.isCommandEnabled.fddoor then 
    RegisterCommand("fddoor", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 0) > 0 then
                            SetVehicleDoorShut(vehicle, 0, false)
                        else
                            SetVehicleDoorOpen(vehicle, 0, false, false)
                        end
                    end

                else 
                    drawNotification( "You must be in the driver's seat!" )
                end 
            else
                local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
                local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

                if ( DoesEntityExist( vehicle ) ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 0) > 0 then
                            SetVehicleDoorShut(vehicle, 0, false)
                        else
                            SetVehicleDoorOpen(vehicle, 0, false, false)
                        end
                    end

                else 
                    drawNotification( "~y~You must be in or near a vehicle to open or close doors." )
                end 
            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/fddoor", "Open and Close your vehicles front driver door.")
    end)
    
end

--
-- FPDOOR COMMAND
--
if config.isCommandEnabled.fpdoor then 
    RegisterCommand("fpdoor", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 1) > 0 then
                            SetVehicleDoorShut(vehicle, 1, false)
                        else
                            SetVehicleDoorOpen(vehicle, 1, false, false)
                        end
                    end

                else 
                    drawNotification( "You must be in the driver's seat!" )
                end 
            else
                local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
                local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

                if ( DoesEntityExist( vehicle ) ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 1) > 0 then
                            SetVehicleDoorShut(vehicle, 1, false)
                        else
                            SetVehicleDoorOpen(vehicle, 1, false, false)
                        end
                    end

                else 
                    drawNotification( "~y~You must be in or near a vehicle to open or close doors." )
                end 
            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/fpdoor", "Open and Close your vehicles front passenger door.")
    end)
    
end

--
-- RDDOOR COMMAND
--
if config.isCommandEnabled.rddoor then 
    RegisterCommand("rddoor", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 2) > 0 then
                            SetVehicleDoorShut(vehicle, 2, false)
                        else
                            SetVehicleDoorOpen(vehicle, 2, false, false)
                        end
                    end

                else 
                    drawNotification( "You must be in the driver's seat!" )
                end 
            else
                local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
                local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

                if ( DoesEntityExist( vehicle ) ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 2) > 0 then
                            SetVehicleDoorShut(vehicle, 2, false)
                        else
                            SetVehicleDoorOpen(vehicle, 2, false, false)
                        end
                    end

                else 
                    drawNotification( "~y~You must be in or near a vehicle to open or close doors." )
                end 
            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/rddoor", "Open and Close your vehicles rear driver door.")
    end)
    
end

--
-- RPDOOR COMMAND
--
if config.isCommandEnabled.rpdoor then 
    RegisterCommand("rpdoor", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 3) > 0 then
                            SetVehicleDoorShut(vehicle, 3, false)
                        else
                            SetVehicleDoorOpen(vehicle, 3, false, false)
                        end
                    end

                else 
                    drawNotification( "You must be in the driver's seat!" )
                end 
            else
                local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
                local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

                if ( DoesEntityExist( vehicle ) ) then 
                    
                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
                        if GetVehicleDoorAngleRatio(vehicle, 3) > 0 then
                            SetVehicleDoorShut(vehicle, 3, false)
                        else
                            SetVehicleDoorOpen(vehicle, 3, false, false)
                        end
                    end

                else 
                    drawNotification( "~y~You must be in or near a vehicle to open or close doors." )
                end 
            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/rpdoor", "Open and Close your vehicles rear passenger door.")
    end)
    
end

--
-- ENG COMMAND
--
if config.isCommandEnabled.eng then 
    RegisterCommand("eng", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                -- Check if the vehicle is real and the player is in it
                if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
                    -- Toggle the engine
                    SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)

                    -- Draw a message
                    drawNotification('~g~Engine Toggled!')
                else
                    -- Draw a message
                    drawNotification('~r~You\'re not in a Vehicle!')
                end

            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/engine", "Toggle your vehicle's engine on and off")
    end)

end

--
-- ENGINE COMMAND
--
if config.isCommandEnabled.engine then 
    RegisterCommand("engine", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
            -- Get the players cords
            local pos = GetEntityCoords( ped )

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                -- Check if the vehicle is real and the player is in it
                if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
                    -- Toggle the engine
                    SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)

                    -- Draw a message
                    drawNotification('~g~Engine Toggled!')
                else
                    -- Draw a message
                    drawNotification('~r~You\'re not in a Vehicle!')
                end

            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/eng", "Toggle your vehicle's engine on and off")
    end)

end

--
-- FDWINDOW COMMAND
--
local FDWINDOW_UP = true
if config.isCommandEnabled.fdwindow then 
    RegisterCommand("fdwindow", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if (GetPedInVehicleSeat(vehicle, -1) == ped) then 
                    SetEntityAsMissionEntity(vehicle, true, true)
                    if (FDWINDOW_UP) then
                        RollDownWindow(vehicle, 0)
                        FDWINDOW_UP = false

                        -- Draw a message
                        drawNotification('~g~Front Driver Window Rolled Down!')
                    else
                        RollUpWindow(vehicle, 0)
                        FDWINDOW_UP = true

                        -- Draw a message
                        drawNotification('~g~Front Driver Window Rolled Up!')
                    end
                end

            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/fdwindow", "Toggle your vehicle's front driver window.")
    end)

end

--
-- FPWINDOW COMMAND
--
local FPWINDOW_UP = true
if config.isCommandEnabled.fpwindow then 
    RegisterCommand("fpwindow", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if (GetPedInVehicleSeat(vehicle, -1) == ped) then 
                    SetEntityAsMissionEntity(vehicle, true, true)
                    if (FPWINDOW_UP) then
                        RollDownWindow(vehicle, 1)
                        FPWINDOW_UP = false

                        -- Draw a message
                        drawNotification('~g~Front Passenger Window Rolled Down!')
                    else
                        RollUpWindow(vehicle, 1)
                        FPWINDOW_UP = true

                        -- Draw a message
                        drawNotification('~g~Front Passenger Window Rolled Up!')
                    end
                end

            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/fpwindow", "Toggle your vehicle's front passenger window.")
    end)

end

--
-- RDWINDOW COMMAND
--
local RDWINDOW_UP = true
if config.isCommandEnabled.rdwindow then 
    RegisterCommand("rdwindow", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if (GetPedInVehicleSeat(vehicle, -1) == ped) then 
                    SetEntityAsMissionEntity(vehicle, true, true)
                    if (RDWINDOW_UP) then
                        RollDownWindow(vehicle, 2)
                        RDWINDOW_UP = false

                        -- Draw a message
                        drawNotification('~g~Rear Driver Window Rolled Down!')
                    else
                        RollUpWindow(vehicle, 2)
                        RDWINDOW_UP = true

                        -- Draw a message
                        drawNotification('~g~Rear Driver Window Rolled Up!')
                    end
                end

            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/rdwindow", "Toggle your vehicle's rear driver window.")
    end)

end

--
-- RPWINDOW COMMAND
--
local RPWINDOW_UP = true
if config.isCommandEnabled.rpwindow then 
    RegisterCommand("rpwindow", function(source, args, rawCommands)
        -- Define the player
        local ped = GetPlayerPed( -1 )

        -- check if the player is alive and exists
        if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 

            -- Check if the player is in a car
            if ( IsPedSittingInAnyVehicle( ped ) ) then 
                -- Define the vehicle the player is in
                local vehicle = GetVehiclePedIsIn( ped, false )

                if (GetPedInVehicleSeat(vehicle, -1) == ped) then 
                    SetEntityAsMissionEntity(vehicle, true, true)
                    if (RPWINDOW_UP) then
                        RollDownWindow(vehicle, 3)
                        RPWINDOW_UP = false

                        -- Draw a message
                        drawNotification('~g~Rear Passenger Window Rolled Down!')
                    else
                        RollUpWindow(vehicle, 3)
                        RPWINDOW_UP = true

                        -- Draw a message
                        drawNotification('~g~Rear Passenger Window Rolled Up!')
                    end
                end

            end 

        end 

    end)

    Citizen.CreateThread(function()
        TriggerEvent("chat:addSuggestion", "/rpwindow", "Toggle your vehicle's rear passenger window.")
    end)

end




--
-- FUNCTIONS
--

function drawNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end