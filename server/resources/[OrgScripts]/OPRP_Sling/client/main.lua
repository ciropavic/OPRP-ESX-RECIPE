-- Created by Scully#5775 | https://discord.gg/5CJSdeS

local HasWeaponSlingOne, SlingWeaponOne, WeaponToSlingOne, AmmoInSlingOne, HasWeaponSlingTwo, SlingWeaponTwo, WeaponToSlingTwo, AmmoInSlingTwo = false, nil, nil, 0, false, nil, nil, 0

RegisterCommand(Config.Command, function(source, args, rawCommand)
    local player = GetPlayerPed(-1)
	if args[1] == "1" then
		if GetSelectedPedWeapon(player) == `WEAPON_CARBINERIFLE` or GetSelectedPedWeapon(player) == `WEAPON_PUMPSHOTGUN` then
		    if not HasWeaponSlingOne then
			    WeaponToSlingOne = GetSelectedPedWeapon(player)
			    AmmoInSlingOne = GetAmmoInPedWeapon(player, WeaponToSlingOne)
			    Wait(100)
			    if not HasWeaponAssetLoaded(WeaponToSlingOne) then
		            RequestWeaponAsset(WeaponToSlingOne)
		            while not HasWeaponAssetLoaded(WeaponToSlingOne) do
			            Wait(0)
		            end
	            end
				SlingWeaponOne = CreateWeaponObject(WeaponToSlingOne, 50, 1.0, 1.0, 1.0, true, 1.0, 0)
				AttachEntityToEntity(SlingWeaponOne, player, GetPedBoneIndex(player, 18905), 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 1, 1, 0, 1, 1, 0)
				if Config.ShouldAddAttach == true then
				    GiveWeaponComponentToWeaponObject(SlingWeaponOne, `COMPONENT_AT_AR_FLSH`)
					if WeaponToSlingOne == `WEAPON_CARBINERIFLE` then
					    GiveWeaponComponentToWeaponObject(SlingWeaponOne, `COMPONENT_AT_SCOPE_MEDIUM`)
					end
				end
				RemoveWeaponFromPed(player, WeaponToSlingOne)
				HasWeaponSlingOne = true
				SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
				RequestAnimDict("mp_player_intdrink")
		        while not HasAnimDictLoaded("mp_player_intdrink") do 
		            Wait(0) 
		        end
		        TaskPlayAnim(player, 'mp_player_intdrink', 'loop_bottle', 8.0, -8.0, 200, 49, 0, 0, 0, 0)
				Wait(100)
				ClearPedTasks(player)
				RemoveAnimDict("mp_player_intdrink")
				AttachEntityToEntity(SlingWeaponOne, player, GetPedBoneIndex(player, 24816), 0.0, 0.27, -0.02, 0.0, 320.0, 175.0, 1, 1, 0, 0, 2, 1)
			end
		elseif HasWeaponSlingOne and GetSelectedPedWeapon(player) == `WEAPON_UNARMED` then
			HasWeaponSlingOne = false
			RequestAnimDict("mp_player_intdrink")
		    while not HasAnimDictLoaded("mp_player_intdrink") do 
		        Wait(0) 
		    end
		    TaskPlayAnim(player, 'mp_player_intdrink', 'loop_bottle', 8.0, -8.0, 200, 49, 0, 0, 0, 0)
			Wait(50)
			AttachEntityToEntity(SlingWeaponOne, player, GetPedBoneIndex(player, 18905), 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 1, 1, 0, 1, 1, 0)
			Wait(50)
			ClearPedTasks(player)
			RemoveAnimDict("mp_player_intdrink")
			if DoesEntityExist(SlingWeaponOne) then
				DeleteObject(SlingWeaponOne)
				RemoveWeaponAsset(SlingWeaponOne)
			    SetModelAsNoLongerNeeded(SlingWeaponOne)
			end
			GiveWeaponToPed(player, WeaponToSlingOne, AmmoInSlingOne, false)
			if Config.ShouldAddAttach == true then
			    GiveWeaponComponentToPed(player, WeaponToSlingOne, `COMPONENT_AT_AR_FLSH`)
				if WeaponToSlingOne == `WEAPON_CARBINERIFLE` then
		            GiveWeaponComponentToPed(player, WeaponToSlingOne, `COMPONENT_AT_SCOPE_MEDIUM`)
				end
			end
		    SetCurrentPedWeapon(player, WeaponToSlingOne, true)
			SetPedAmmo(player, WeaponToSlingOne, AmmoInSlingOne)
		end
	elseif args[1] == "2" then
	    if GetSelectedPedWeapon(player) == `WEAPON_CARBINERIFLE` or GetSelectedPedWeapon(player) == `WEAPON_PUMPSHOTGUN` then
		    if not HasWeaponSlingTwo then
			    WeaponToSlingTwo = GetSelectedPedWeapon(player)
			    AmmoInSlingTwo = GetAmmoInPedWeapon(player, WeaponToSlingTwo)
			    Wait(100)
			    if not HasWeaponAssetLoaded(WeaponToSlingTwo) then
		            RequestWeaponAsset(WeaponToSlingTwo)
		            while not HasWeaponAssetLoaded(WeaponToSlingTwo) do
			            Wait(0)
		            end
	            end
				SlingWeaponTwo = CreateWeaponObject(WeaponToSlingTwo, 50, 1.0, 1.0, 1.0, true, 1.0, 0)
				AttachEntityToEntity(SlingWeaponTwo, player, GetPedBoneIndex(player, 18905), 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 1, 1, 0, 1, 1, 0)
				if Config.ShouldAddAttach == true then
				    GiveWeaponComponentToWeaponObject(SlingWeaponTwo, `COMPONENT_AT_AR_FLSH`)
					if WeaponToSlingTwo == `WEAPON_CARBINERIFLE` then
					    GiveWeaponComponentToWeaponObject(SlingWeaponTwo, `COMPONENT_AT_SCOPE_MEDIUM`)
					end
				end
				RemoveWeaponFromPed(player, WeaponToSlingTwo)
				HasWeaponSlingTwo = true
				SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
				RequestAnimDict("mp_player_intdrink")
		        while not HasAnimDictLoaded("mp_player_intdrink") do 
		            Wait(0) 
		        end
		        TaskPlayAnim(player, 'mp_player_intdrink', 'loop_bottle', 8.0, -8.0, 400, 49, 0, 0, 0, 0)
				Wait(400)
				ClearPedTasks(player)
				RemoveAnimDict("mp_player_intdrink")
				AttachEntityToEntity(SlingWeaponTwo, player, GetPedBoneIndex(player, 24816), 0.05, -0.18, -0.02, 0.0, 165.0, 0.0, 1, 1, 0, 0, 2, 1)
			end
		elseif HasWeaponSlingTwo and GetSelectedPedWeapon(player) == `WEAPON_UNARMED` then
			HasWeaponSlingTwo = false
			RequestAnimDict("mp_player_intdrink")
		    while not HasAnimDictLoaded("mp_player_intdrink") do 
		        Wait(0) 
		    end
		    TaskPlayAnim(player, 'mp_player_intdrink', 'loop_bottle', 8.0, -8.0, 400, 49, 0, 0, 0, 0)
			Wait(300)
			AttachEntityToEntity(SlingWeaponTwo, player, GetPedBoneIndex(player, 18905), 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 1, 1, 0, 1, 1, 0)
			Wait(100)
			ClearPedTasks(player)
			RemoveAnimDict("mp_player_intdrink")
			if DoesEntityExist(SlingWeaponTwo) then
				DeleteObject(SlingWeaponTwo)
				RemoveWeaponAsset(SlingWeaponTwo)
			    SetModelAsNoLongerNeeded(SlingWeaponTwo)
			end
			GiveWeaponToPed(player, WeaponToSlingTwo, AmmoInSlingTwo, false)
			if Config.ShouldAddAttach == true then
			    GiveWeaponComponentToPed(player, WeaponToSlingTwo, `COMPONENT_AT_AR_FLSH`)
				if WeaponToSlingTwo == `WEAPON_CARBINERIFLE` then
		            GiveWeaponComponentToPed(player, WeaponToSlingTwo, `COMPONENT_AT_SCOPE_MEDIUM`)
				end
			end
		    SetCurrentPedWeapon(player, WeaponToSlingTwo, true)
			SetPedAmmo(player, WeaponToSlingTwo, AmmoInSlingTwo)
		end
	end
end)