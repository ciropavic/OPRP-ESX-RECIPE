-- Heal Command
ESX.RegisterCommand('heal', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('esx_basicneeds:healPlayer')
	args.playerId.triggerEvent('chat:addMessage', {args = {'^5HEAL', 'You have been healed.'}})
end, true, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', validate = true, arguments = {
	{name = 'playerId', help = 'the player id', type = 'player'}
}})


--
-- FOOD
--

for i = 1, #Config.Items.food do
	ESX.RegisterUsableItem(Config.Items.food[i].name, function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem(Config.Items.food[i].name, 1)
	
		TriggerClientEvent('esx_status:add', source, 'hunger', Config.Items.food[i].restoreAmount)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~".. Config.Items.food[i].name .."~s~")
	end)
end




--
-- DRINKS
--

for i = 1, #Config.Items.drinks do
	ESX.RegisterUsableItem(Config.Items.drinks[i].name, function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem(Config.Items.drinks[i].name, 1)
	
		TriggerClientEvent('esx_status:add', source, 'thirst', Config.Items.drink[i].restoreAmount)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~".. Config.Items.drink[i].name .."~s~")
	end)
end



