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
	ESX.RegisterUsableItem("activia", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("activia", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)  
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~activia~s~")
	end)


	ESX.RegisterUsableItem("baconfries", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("baconfries", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~bacon fries~s~")
	end)


	ESX.RegisterUsableItem("bagel", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("bagel", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~bagel~s~")
	end)


	ESX.RegisterUsableItem("ban_muffin", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("ban_muffin", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~bannana muffin~s~")
	end)


	ESX.RegisterUsableItem("banana", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("banana", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~banana~s~")
	end)


	ESX.RegisterUsableItem("bolchips", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("bolchips", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~chips~s~")
	end)


	ESX.RegisterUsableItem("blue_muffin", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("blue_muffin", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~blueberry muffin~s~")
	end)


	ESX.RegisterUsableItem("bread", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("bread", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~bread~s~")
	end)


	ESX.RegisterUsableItem("caesar", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("caesar", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~caesar~s~")
	end)


	ESX.RegisterUsableItem("calzone", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("calzone", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~calzone~s~")
	end)


	ESX.RegisterUsableItem("chocolate", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("chocolate", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~chocolate~s~")
	end)


	ESX.RegisterUsableItem("chocolates", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("chocolates", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~chocolates~s~")
	end)


	ESX.RegisterUsableItem("croissant", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("croissant", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~croissant~s~")
	end)


	ESX.RegisterUsableItem("cupcake", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("cupcake", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~cupcake~s~")
	end)


	ESX.RegisterUsableItem("donut", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("donut", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~donut~s~")
	end)


	ESX.RegisterUsableItem("fries", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("fries", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~fries~s~")
	end)


	ESX.RegisterUsableItem("burger", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("burger", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~burger~s~")
	end)


	ESX.RegisterUsableItem("steak", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("steak", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~steak~s~")
	end)


	ESX.RegisterUsableItem("hamburger", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("hamburger", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~hamburger~s~")
	end)


	ESX.RegisterUsableItem("klobasa", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("klobasa", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~klobasa~s~")
	end)


	ESX.RegisterUsableItem("lasagne", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("lasagne", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~lasagne~s~")
	end)


	ESX.RegisterUsableItem("nachos_salsa", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("nachos_salsa", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~nachos salsa~s~")
	end)


	ESX.RegisterUsableItem("nachos_syr", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("nachos_syr", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~nachos_syr~s~")
	end)


	ESX.RegisterUsableItem("packaged_chicken", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("packaged_chicken", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~packaged chicken~s~")
	end)


	ESX.RegisterUsableItem("pancake", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("pancake", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~pancake~s~")
	end)


	ESX.RegisterUsableItem("pizza", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("pizza", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~pizza~s~")
	end)


	ESX.RegisterUsableItem("popcorn", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("popcorn", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~popcorn~s~")
	end)


	ESX.RegisterUsableItem("popcorn_karamel", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("popcorn_karamel", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~karamel popcorn~s~")
	end)


	ESX.RegisterUsableItem("pretcil", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("pretcil", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~pretzel~s~")
	end)


	ESX.RegisterUsableItem("proteinbar", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("proteinbar", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~protein bar~s~")
	end)


	ESX.RegisterUsableItem("sandwich", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("sandwich", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~sandwich~s~")
	end)


	ESX.RegisterUsableItem("saucisson", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("saucisson", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~saucisson~s~")
	end)


	ESX.RegisterUsableItem("spagetie", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("spagetie", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~spagetie~s~")
	end)


	ESX.RegisterUsableItem("tortellini", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("tortellini", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~tortellini~s~")
	end)


	ESX.RegisterUsableItem("yogurt", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("yogurt", 1)

		TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
		TriggerClientEvent('esx_basicneeds:onEat', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~yogurt~s~")
	end)




--
-- DRINKS
--
	ESX.RegisterUsableItem("water", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("water", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~water~s~")
	end)


	ESX.RegisterUsableItem("adios", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("adios", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~adios~s~")
	end)


	ESX.RegisterUsableItem("americano", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("americano", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~americano~s~")
	end)


	ESX.RegisterUsableItem("bacardi", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("bacardi", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~bacardi~s~")
	end)


	ESX.RegisterUsableItem("beer", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("beer", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~beer~s~")
	end)


	ESX.RegisterUsableItem("cappuccino", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("cappuccino", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~cappuccino~s~")
	end)


	ESX.RegisterUsableItem("champagne", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("champagne", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~champagne~s~")
	end)


	ESX.RegisterUsableItem("cocacola", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("cocacola", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~cocacola~s~")
	end)


	ESX.RegisterUsableItem("coffee", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("coffee", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~coffee~s~")
	end)


	ESX.RegisterUsableItem("cosmopolitan", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("cosmopolitan", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~cosmopolitan~s~")
	end)


	ESX.RegisterUsableItem("cubalibre", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("cubalibre", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~cubalibre~s~")
	end)


	ESX.RegisterUsableItem("drink_meloun", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("drink_meloun", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~melon drink~s~")
	end)


	ESX.RegisterUsableItem("drpepper", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("drpepper", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~dr pepper~s~")
	end)


	ESX.RegisterUsableItem("energy", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("energy", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~monster~s~")
	end)


	ESX.RegisterUsableItem("espresso", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("espresso", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~espresso~s~")
	end)


	ESX.RegisterUsableItem("espresso_latte", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("espresso_latte", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~espresso latte~s~")
	end)


	ESX.RegisterUsableItem("frappe", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("frappe", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~frappe~s~")
	end)


	ESX.RegisterUsableItem("frappucino", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("frappucino", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~frappucino~s~")
	end)


	ESX.RegisterUsableItem("golem", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("golem", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~golem~s~")
	end)


	ESX.RegisterUsableItem("icetea", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("icetea", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~iced tea~s~")
	end)


	ESX.RegisterUsableItem("jager", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("jager", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~jager~s~")
	end)


	ESX.RegisterUsableItem("jagerbomb", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("jagerbomb", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~jager bomb~s~")
	end)


	ESX.RegisterUsableItem("jahoda_smoot", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("jahoda_smoot", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~jahoda smooth~s~")
	end)


	ESX.RegisterUsableItem("jus_raisin", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("jus_raisin", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~grape juice~s~")
	end)


	ESX.RegisterUsableItem("jusfruit", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("jusfruit", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~fruit juice~s~")
	end)


	ESX.RegisterUsableItem("limonade", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("limonade", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~lemonade~s~")
	end)


	ESX.RegisterUsableItem("logger", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("logger", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~logger~s~")
	end)


	ESX.RegisterUsableItem("longisland", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("longisland", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~long island~s~")
	end)


	ESX.RegisterUsableItem("martini", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("martini", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~martini~s~")
	end)


	ESX.RegisterUsableItem("manhattan", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("manhattan", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~manhattan~s~")
	end)


	ESX.RegisterUsableItem("pinacolada", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("pinacolada", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~pinacolada~s~")
	end)


	ESX.RegisterUsableItem("pineapple_drink", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("pineapple_drink", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~pineapple drink~s~")
	end)


	ESX.RegisterUsableItem("purifiedwater", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("purifiedwater", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~purified water~s~")
	end)


	ESX.RegisterUsableItem("redbull", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("redbull", 1)

		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~redbull~s~")
	end)


	ESX.RegisterUsableItem("rhum", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("rhum", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~rhum~s~")
	end)


	ESX.RegisterUsableItem("vodka", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("vodka", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~vodka~s~")
	end)


	ESX.RegisterUsableItem("wine", function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem("wine", 1)

		TriggerClientEvent('Radiant_Drunk:GetDrunk', source)
		TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
		TriggerClientEvent('esx_basicneeds:onDrink', source)
		xPlayer.showNotification("you have used ~y~1x~s~ ~b~wine~s~")
	end)