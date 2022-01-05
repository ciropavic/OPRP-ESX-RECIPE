

if config.CustomMenuEnabled then
    local RuntimeTXD = CreateRuntimeTxd("Custom_Menu_Head")
    local Object = CreateDui(config.MenuImage, 512, 128)
    _G.Object = Object
    local TextureThing = GetDuiHandle(Object)
    local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, "Custom_Menu_Head", TextureThing)
    menuImage = "Custom_Menu_Head"
else
    menuImage = "shopui_title_sm_hangar"
end
    
-- Alert on top of screen

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- Check if the player is in a police station
function InPolice()
    local distance = 10000
    local pos = {}
    for i = 1, #config.policestation do
        local coords = GetEntityCoords(PlayerPedId(), 0)
        local currentDistance = Vdist(config.policestation[i].x, config.policestation[i].y, config.policestation[i].z, coords.x, coords.y, coords.z)
        if(currentDistance < distance) then
            distance = currentDistance
            pos = config.policestation[i]
        end
    end

    if _MenuPool:IsAnyMenuOpen() and distance > 3 then
        _MenuPool:CloseAllMenus()
    end

    if(distance < 10) then
        if not _MenuPool:IsAnyMenuOpen() then
            DrawMarker(1, pos.x, pos.y, pos.z-1, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 155, 255, 200, 0, 0, 2, 0 ,0 ,0 ,0)
        end
    end

    if(distance < 2) then
        return true
    end
end

-- Give player weapons
function giveWeapon(hash, weapon, ammoCount, price)

    local playerBal = exports.Money_Script:CheckWallet()
    
    if price > playerBal then
        SetNotificationTextEntry("STRING")
        AddTextComponentString("You don't have enough money for that!")
        DrawNotification(true, true)
    else
        GiveWeaponToPed(PlayerPedId(), GetHashKey(hash), ammoCount, false, false)
        SetNotificationTextEntry("STRING")
        AddTextComponentString("You've purchased a " .. "~b~" .. weapon .. "~w~ for ~g~$" .. price .. ".")
        DrawNotification(true, true)
        exports.Money_Script:RemoveCash(price)
    end

end

-- Give player ammo
function giveAmmo(ammoType, name, amount, price)

    local playerBal = exports.Money_Script:CheckWallet()
    print(price, playerBal)
    if price > playerBal then 
        SetNotificationTextEntry("STRING")
        AddTextComponentString("You don't have enought money for that!")
        DrawNotification(true, true)
    else 
        AddAmmoToPedByType(PlayerPedId(), ammoType, amount)
        SetNotificationTextEntry("STRING")
        AddTextComponentString("You've purchased a " .. "~b~" .. name .. "~w~ for ~g~$" .. price .. ".")
        DrawNotification(true, true)
        exports.Money_Script:RemoveCash(price)
    end


end