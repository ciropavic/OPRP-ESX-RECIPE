
-- SEED USABLE ITEM REGISTER
-- Register every seed only changing the name of it between ''

ESX.RegisterUsableItem('weed_seed', function(playerId)
		plant(playerId, 'weed_seed')
end)

ESX.RegisterUsableItem('coca_seed', function(playerId)
		plant(playerId, 'coca_seed')
end)

-- DRUGS USABLE ITEM REGISTER
-- Register every drug only changing the name of it between ''

ESX.RegisterUsableItem('weed', function(playerId)
		drug(playerId, 'weed')
end)

ESX.RegisterUsableItem('cocaine', function(playerId)
		drug(playerId, 'cocaine')
end)

-- PROCCESING TABLE ITEM REGISTER
-- Register every proccesing table only changing the name of it between ''

ESX.RegisterUsableItem('cocaine_processing_table', function(playerId)
		proccesing(playerId, 'cocaine_processing_table')
end)

