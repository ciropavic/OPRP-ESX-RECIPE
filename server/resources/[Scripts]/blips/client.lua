local blips = {
	  {title="City Hall", colour=30, id=475, x=-1304.28, y=-554.71, z=30.57},
    {title="Court House", colour=46, id=525, x=0, y=0, z=0},
    {title="Court House", colour=46, id=525, x=0, y=0, z=0},
    {title="Phone Store", colour=11, id=459, x=-657.35, y=-857.55, z=24.5},
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)