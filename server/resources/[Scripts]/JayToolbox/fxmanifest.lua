fx_version 'cerulean'
games { 'gta5' }

author "Jay (Error#3569)"

version 'legacy'

dependencies {
    'mysql-async', -- Comes With ESX Legacy
	'es_extended', -- Comes With ESX Legacy
	'esx_policejob', -- Comes With ESX Legacy
    'spikestrips' -- https://github.com/JayPaulinCodes/spikestrips MUST BE MY FORK OR IT WONT WORK!
}

shared_scripts{
    '@es_extended/imports.lua',
    'config.lua',
    'NativeUI.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    '@esx_policejob/client/main.lua'
    "client.lua"
} 

server_scripts {
    '@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
    "server.lua"
} 