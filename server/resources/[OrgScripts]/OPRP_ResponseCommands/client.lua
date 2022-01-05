-----------------------------------------------------------------
-----------------------------------------------------------------
--------------------Made by ServerCop#0392--------------------
----------------Customizable-Response-Commands-------------------
-----------------------------------------------------------------
-----------------------------------------------------------------


--------**To add more links copy and paste the lines below**--------
--------**To change the colors of the message follow this page: https://forum.cfx.re/t/chat-formatting-colors-bold-underline/67641**--------

--------------------RESPONSE COMMANDS--------------------------
print("Customizable Response Commands - By ServerCopMug#0392")

RegisterCommand("discord", function(source, args, rawCommand) -------- replace "discord" with any other command you want **DON'T INCLUDE /**
    TriggerEvent("chatMessage", "^*^3[Our Discord:] ^7discord.gg/9nHU7tQR") ------- change message in the ""
end)

RegisterCommand("cad", function(source, args, rawCommand) ------- replace "cad" with any other command you want DON'T INCLUDE /
    TriggerEvent("chatMessage", "^*^3[Our CAD:] ^7Create an account here: https://oprp.live then request in #cad-request on our discord! (/discord)") ------- change message in the ""
end)

RegisterCommand("website", function(source, args, rawCommand) ------- replace "website" with any other command you want DON'T INCLUDE /
    TriggerEvent("chatMessage", "^*^3[Our Website:] ^7WIP") ------- change message in the ""
end)

RegisterCommand("commands", function(source, args, rawCommand) ------- replace "commands" with any other command you want DON'T INCLUDE /
    TriggerEvent("chatMessage", "^*^3[Commands:] ^7/website, /cad, /discord, /cars, /info, /help, /do, /me, /twt, /ooc, /ad, /news, /darkweb") ------- change message in the ""
end)

RegisterCommand("cars", function(source, args, rawCommand) ------- replace "cars" with any other command you want DON'T INCLUDE /
    TriggerEvent("chatMessage", "^*^3[Custom Car Spawn Codes:] ^7VELAR, CAPRICE13, EXPLORER, TAHOE, 20COR") ------- change message in the ""
end)

RegisterCommand("info", function(source, args, rawCommand) ------- replace "info" with any other command you want DON'T INCLUDE /
    TriggerEvent("chatMessage", "^*^3[Server Info:] ^7Some server info...") ------- change message in the ""
end)


RegisterCommand("help", function(source, args, rawCommand) ------- replace "help" with any other command you want DON'T INCLUDE /
    TriggerEvent("chatMessage", "^*^3[Help:] ^7If you need a staff member do /report and wait for them to reply!") ------- change message in the ""
end)

