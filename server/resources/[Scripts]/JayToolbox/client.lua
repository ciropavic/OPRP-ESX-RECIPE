_MenuPool = NativeUI.CreatePool()
MainMenu = NativeUI.CreateMenu()

function Menu() 

    -- Basic Menu Setup
    _MenuPool:Remove()
	_MenuPool = NativeUI.CreatePool()
	MainMenu = NativeUI.CreateMenu("Toolbox", "Main Menu")
	_MenuPool:Add(MainMenu)
	collectgarbage()
	_MenuPool:ControlDisablingEnabled(false)
	_MenuPool:MouseControlsEnabled(false)

    
    --
    -- Setting up the toolboxes based on the configuration file
    --

    -- Check if the Poolice Toolbox is enabled
    if Config.PoliceToolbox.enabld then
        local PoliceToolboxComps = Config.PoliceToolbox.components
        
        -- Create the PoliceToolbox Submenu
        local PoliceMenu = _MenuPool:AddSubMenu(MainMenu, "Police Toolbox", "Tools for police officers", true)

        -- Process the grab option
        if PoliceToolboxComps.grab.enabled then
            -- Create the item
            local PoliceMenu_Grab = NativeUI.CreateItem(PoliceToolboxComps.grab.name, PoliceToolboxComps.grab.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_Grab)

            -- Define the actions to take on item selection
            PoliceMenu_Grab.Activated = function(ParentMenu, SelectedItem)
                -- Use ESX to find the closest player
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                -- Check how far the closest player is
                if closestPlayer ~= -1 and closestDistance <= 3.0 then
                    -- Trigger a server event from esx_policejob to grab the player
                    TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(closestPlayer))
                else 
                    drawNotification("No Nearby Players!")
                end
            end
        end
        
        -- Process the handcuff option
        if PoliceToolboxComps.handcuff.enabled then
            -- Create the item
            local PoliceMenu_Handcuff = NativeUI.CreateItem(PoliceToolboxComps.handcuff.name, PoliceToolboxComps.handcuff.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_Handcuff)

            -- Define the actions to take on item selection
            PoliceMenu_Handcuff.Activated = function(ParentMenu, SelectedItem)
                -- Use ESX to find the closest player
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                -- Check how far the closest player is
                if closestPlayer ~= -1 and closestDistance <= 3.0 then
                     -- Trigger a server event from esx_policejob to cuff the player
                    TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
                else 
                    drawNotification("No Nearby Players!")
                end
            end
        end

        -- Process the search option
        if PoliceToolboxComps.search.enabled then
            -- Create the item
            local PoliceMenu_Search = NativeUI.CreateItem(PoliceToolboxComps.search.name, PoliceToolboxComps.search.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_Search)

            -- Define the actions to take on item selection
            PoliceMenu_Search.Activated = function(ParentMenu, SelectedItem)
                 -- Use ESX to find the closest player
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                -- Check how far the closest player is
                if closestPlayer ~= -1 and closestDistance <= 3.0 then
                     -- Using a import from esx_policejob call the function
                     -- to open the search menu
                    OpenBodySearchMenu(closestPlayer)
                else 
                    drawNotification("No Nearby Players!")
                end
            end
        end

        -- Process the inCar option
        if PoliceToolboxComps.inCar.enabled then
            -- Create the item
            local PoliceMenu_InCar = NativeUI.CreateItem(PoliceToolboxComps.inCar.name, PoliceToolboxComps.inCar.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_InCar)

            -- Define the actions to take on item selection
            PoliceMenu_InCar.Activated = function(ParentMenu, SelectedItem)
                -- Use ESX to find the closest player
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

                -- Check how far the closest player is
                if closestPlayer ~= -1 and closestDistance <= 3.0 then
                    -- Trigger a server event from esx_policejob to put the player in the car
                    TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
                else 
                    drawNotification("No Nearby Players!")
                end
            end
        end

        -- Process the outOfCar option
        if PoliceToolboxComps.outOfCar.enabled then
            -- Create the item
            local PoliceMenu_OutOfCar = NativeUI.CreateItem(PoliceToolboxComps.outOfCar.name, PoliceToolboxComps.outOfCar.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_OutOfCar)

            -- Define the actions to take on item selection
            PoliceMenu_OutOfCar.Activated = function(ParentMenu, SelectedItem)
                -- Use ESX to find the closest player
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                
                -- Check how far the closest player is
                if closestPlayer ~= -1 and closestDistance <= 3.0 then
                    -- Trigger a server event from esx_policejob to remove the player from the car
                    TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
                else 
                    drawNotification("No Nearby Players!")
                end
            end
        end

        -- Process the setSpikes option
        if PoliceToolboxComps.setSpikes.enabled then
            -- Create the list varriables
            local PoliceMenu_SetSpikes_Options = { "1", "2", "3", "4", "5" }
            local PoliceMenu_SetSpikes_Selection = 1
            
            -- Create the item
            local PoliceMenu_SetSpikes = NativeUI.CreateListItem(PoliceToolboxComps.setSpikes.name, PoliceMenu_SetSpikes_Options, 1, PoliceToolboxComps.setSpikes.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_SetSpikes)

            -- Define the actions to take on list change
            PoliceMenu_SetSpikes.OnListChange = function(sender, item, index)
                if item == PoliceMenu_SetSpikes_Options then
                    SpikeLength = item:IndexToItem(index)
                    if SpikeLength == "1" then
                        PoliceMenu_SetSpikes_Selection = 1
                    elseif SpikeLength == "2" then
                        PoliceMenu_SetSpikes_Selection = 2
                    elseif SpikeLength == "3" then
                        PoliceMenu_SetSpikes_Selection = 3
                    elseif SpikeLength == "4" then
                        PoliceMenu_SetSpikes_Selection = 4
                    elseif SpikeLength == "5" then
                        PoliceMenu_SetSpikes_Selection = 5
                    else
                        PoliceMenu_SetSpikes_Selection = 3
                    end
                end
            end
            
            -- Define the actions to take on item selection
            PoliceMenu_SetSpikes.Activated = function(ParentMenu, SelectedItem)
                -- Use a server event we added into SpikeStrips to spawn a spike strip
                TriggerServerEvent('SetSpikesAction', GetPlayerServerId(PlayerId()), PoliceMenu_SetSpikes_Selection)
            end
        end

        -- Process the toggleCarbine option
        if PoliceToolboxComps.toggleCarbine.enabled then
            -- Create the item
            local PoliceMenu_ToggleCarbine = NativeUI.CreateItem(PoliceToolboxComps.toggleCarbine.name, PoliceToolboxComps.toggleCarbine.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_ToggleCarbine)

            -- Define the actions to take on item selection
            PoliceMenu_ToggleCarbine.Activated = function(ParentMenu, SelectedItem)
                -- Get the Player's ped
                local ped = GetPlayerPed(PlayerId())

                -- Check if the player has the weapon so we know if we are racking or unracking
                if HasPedGotWeapon(ped, "WEAPON_CARBINERIFLE", false) then -- The player has the carbine, RACK
                    -- Check in the config if we send a message
                    if PoliceToolboxComps.toggleCarbine.options.sendMessage then
                        TriggerServerEvent('JayToolbox:sendMsgCarbineRack', GetPlayerServerId(PlayerId()))
                    end

                    -- Check in the config if we add/remove the weapon
                    if PoliceToolboxComps.toggleCarbine.options.addAndRemoveWeapon then
                        local weapon = GetHashKey("WEAPON_CARBINERIFLE")
                        RemoveWeaponFromPed(ped, weapon)
                    end
                    
                else -- The player has the carbine, UNRACK
                    -- Check in the config if we send a message
                    if PoliceToolboxComps.toggleCarbine.options.sendMessage then
                        TriggerServerEvent('JayToolbox:sendMsgCarbineUnrack', GetPlayerServerId(PlayerId()))
                    end

                    -- Check in the config if we add/remove the weapon
                    if PoliceToolboxComps.toggleCarbine.options.addAndRemoveWeapon then
                        local weapon = GetHashKey("WEAPON_CARBINERIFLE")
                        GiveWeaponToPed(ped, weapon, 160, false, false)
                        GiveWeaponComponentToPed(ped, weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
                        GiveWeaponComponentToPed(ped, weapon, GetHashKey("COMPONENT_AT_AR_AFGRIP"))
                    end
                end
            end
        end

        -- Process the toggleShotgun option
        if PoliceToolboxComps.toggleShotgun.enabled then
            -- Create the item
            local PoliceMenu_ToggleShotgun = NativeUI.CreateItem(PoliceToolboxComps.toggleShotgun.name, PoliceToolboxComps.toggleShotgun.description)
        
            -- Add the item to the menu
            PoliceMenu:AddItem(PoliceMenu_ToggleShotgun)

            -- Define the actions to take on item selection
            PoliceMenu_ToggleShotgun.Activated = function(ParentMenu, SelectedItem)
                -- Get the Player's ped
                local ped = GetPlayerPed(PlayerId())

                -- Check if the player has the weapon so we know if we are racking or unracking
                if HasPedGotWeapon(ped, "WEAPON_PUMPSHOTGUN_MK2", false) then -- The player has the carbine, RACK
                    -- Check in the config if we send a message
                    if PoliceToolboxComps.toggleShotgun.options.sendMessage then
                        TriggerServerEvent('JayToolbox:sendMsgCarbineRack', GetPlayerServerId(PlayerId()))
                    end

                    -- Check in the config if we add/remove the weapon
                    if PoliceToolboxComps.toggleShotgun.options.addAndRemoveWeapon then
                        local weapon = GetHashKey("WEAPON_PUMPSHOTGUN_MK2")
                        RemoveWeaponFromPed(ped, weapon)
                    end
                    
                else -- The player has the carbine, UNRACK
                    -- Check in the config if we send a message
                    if PoliceToolboxComps.toggleShotgun.options.sendMessage then
                        TriggerServerEvent('JayToolbox:sendMsgCarbineUnrack', GetPlayerServerId(PlayerId()))
                    end

                    -- Check in the config if we add/remove the weapon
                    if PoliceToolboxComps.toggleShotgun.options.addAndRemoveWeapon then
                        local weapon = GetHashKey("WEAPON_PUMPSHOTGUN_MK2")
                        GiveWeaponToPed(ped, weapon, 160, false, false)
                        GiveWeaponComponentToPed(ped, weapon, GetHashKey("COMPONENT_AT_AR_FLSH"))
                        GiveWeaponComponentToPed(ped, weapon, GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"))
                    end
                end
            end
        end

    end

    _MenuPool:RefreshIndex()
end

---------------- Mechanism ----------------

Citizen.CreateThread(function()
    TriggerEvent("chat:addSuggestion", Config.Activation.command.cmd, Config.Activation.command.toolTip)
end)

RegisterCommand(Config.Activation.command.cmd, function(source, args, rawCommands)
    _MenuPool:ProcessMenus()	
    _MenuPool:ControlDisablingEnabled(false)
    _MenuPool:MouseControlsEnabled(false)

    if not menuOpen then
        Menu()
        MainMenu:Visible(true)
    else
        _MenuPool:CloseAllMenus()
    end
end)

if Config.Activation.keymap.enabled then
    RegisterKeyMapping(Config.Activation.command.cmd, Config.Activation.command.toolTip, 'keyboard', Config.Activation.keymap.default)
end


---------------- Functions ----------------

function drawNotification(text) --Just Don't Edit!
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end