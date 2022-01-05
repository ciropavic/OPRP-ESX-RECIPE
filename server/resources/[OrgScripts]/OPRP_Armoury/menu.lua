rightPosition = {x = 1320, y = 100}
leftPosition = {x = 0, y = 100}
menuPosition = {x = 0, y = 200}

-- Check in the config for the location of the menu
if config.menuPosition then
    if config.menuPosition == "left" then
        menuPosition = leftPosition
    elseif config.menuPosition == "right" then
        menuPosition = rightPosition
    end
end

-- Create a menu pool
_MenuPool = NativeUI.CreatePool()

-- Create the main menu
MainMenu = NativeUI.CreateMenu()


function Menu()

    local MenuTitle = ""

    if not config.customMenuEnabled then
        MenuTitle = GetPlayerName(PlayerId())
    end

    -- Redefine the pool
    _MenuPool:Remove()
    _MenuPool = NativeUI.CreatePool()

    -- Redefine the main menu
    MainMenu = NativeUI.CreateMenu(MenuTitle, GetResourceMetadata(GetCurrentResourceName(), "C", 0), menuPosition["x"], menuPosition["y"], menuImage, menuImage)

    -- Add the Main Menu to the pool
    _MenuPool:Add(MainMenu)

    -- Set the width offset
    MainMenu:SetMenuWidthOffset(config.menuWidth)
    collectgarbage()
    MainMenu:SetMenuWidthOffset(config.menuWidth)

    _MenuPool:ControlDisablingEnabled(false)
	_MenuPool:MouseControlsEnabled(false)

    --
    -- WEAPONS MENU
    --

        local ammo = _MenuPool:AddSubMenu(MainMenu, "AMMO", "", true, menuImage, menuImage)
            ammo:SetMenuWidthOffset(config.menuWidth)
            local ammo_pistol = NativeUI.CreateItem("Pistol Ammo: ~g~$ Funded by Dept", "Restock 60 rounds of pistol ammo.")
            local ammo_ars = NativeUI.CreateItem("Rifle Ammo: ~g~$ Funded by Dept", "Restock 150 rounds of Assault Rifle Ammo.")
            local ammo_shotgun = NativeUI.CreateItem("Shotgun Ammo: ~g~$ Funded by Dept", "Restock 30 rounds of Shotgun ammo.")
            
            ammo:AddItem(ammo_pistol)

            ammo:AddItem(ammo_ars)
            ammo:AddItem(ammo_shotgun)
            ammo_pistol.Activated = function(ParentMenu, SelectedItem)
                giveAmmo("AMMO_PISTOL", "Pistol Ammo", 60, 1)
            end
            ammo_ars.Activated = function(ParentMenum, SelectedItem)
                giveAmmo("AMMO_RIFLE", "Rifle Ammo", 150, 0)
            end
            ammo_shotgun.Activated = function(ParentMenu, SelectedItem)
                giveAmmo("AMMO_SHOTGUN", "Shotgun Ammo", 30, 0)
            end
        


            
  --
    -- CLOSE MENU
    --
    local ToggleClose = NativeUI.CreateItem("Close", "Close the menu")
        MainMenu:AddItem(ToggleClose)
        ToggleClose.Activated = function(ParentMenu, SelectedItem)
            _MenuPool:CloseAllMenus()
        end

    _MenuPool:RefreshIndex()

end


-- Alert thread
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		_MenuPool:ProcessMenus()	
		_MenuPool:ControlDisablingEnabled(false)
		_MenuPool:MouseControlsEnabled(false)

		if InPolice() and not _MenuPool:IsAnyMenuOpen() then
			alert("Press ~INPUT_CONTEXT~ to view the police armoury menu.")
			if IsControlJustPressed(0, 51) and not _MenuPool:IsAnyMenuOpen() then
                Menu()
                MainMenu:Visible(true)
			end
		end
	end
end)