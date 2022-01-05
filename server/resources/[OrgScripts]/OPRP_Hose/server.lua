--[[RegisterNetEvent("beginHose")
AddEventHandler("beginHose", function( cords )
	--x,y,z = (unpack (x) )
	local coordinates = cords
	TriggerClientEvent("hoseEffect", -1, coordinates)
end)]]

RegisterNetEvent('hose:startParticleEffect')
AddEventHandler('hose:startParticleEffect', function()
	TriggerClientEvent('hose:startParticleEffect', -1, source)
end)

RegisterNetEvent('hose:stopParticleEffect')
AddEventHandler('hose:stopParticleEffect', function()
	TriggerClientEvent('hose:stopParticleEffect', -1, source)
end)
