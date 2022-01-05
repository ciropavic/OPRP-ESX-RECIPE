Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    local myCoords = GetEntityCoords(GetPlayerPed(-1))
    if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 1307.26,3666.80,33.47, true ) < 80 then
      ClearAreaOfPeds(1307.26,3666.80,33.47, 58.0, 0)
    end
  end
end)
