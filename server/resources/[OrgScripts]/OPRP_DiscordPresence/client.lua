Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(904853202820792340)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('logo1')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('🍁 4Ontario Provincial Roleplay 🍁')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('logo2')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('A Canadian Based FiveM Server')


        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Join Our Discord!", "https://discord.gg/hPttnfrwAb")
        SetDiscordRichPresenceAction(1, "Connect To The server!", "fivem://connect/142.126.189.97:30120")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)