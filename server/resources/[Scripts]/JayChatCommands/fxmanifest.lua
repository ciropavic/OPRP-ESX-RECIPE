fx_version 'cerulean'
games { 'gta5' }

author "Jay (Error#3569)"

version 'legacy'

shared_script '@es_extended/imports.lua'
shared_script 'config.lua'

client_scripts {
    '@es_extended/locale.lua',
    "client.lua"
} 

server_scripts {
    '@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
    "server.lua"
} 