fx_version 'cerulean'
games { 'gta5' }
author 'NAT2K15'

files {
    'html/index.html',
    'html/sounds/zip.ogg',
    'html/sounds/unzip.ogg',
    'html/script.js'
}
ui_page 'html/index.html'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}