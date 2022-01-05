resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page 'nui/nui.html'

files {
	'Newtonsoft.Json.dll',
	'streets.json',
	'config.json',
	'nui/nui.html',
	'nui/style.css',
	'nui/style.css',
	'nui/rotate.css',
	'nui/script.js',
	'nui/images/heli.png',
	'nui/images/plane.png',
	'nui/images/heading.png',
	'nui/images/cam.png',
	'nui/images/arrow.png'
}

client_scripts {
	'Common.Client.net.dll',
	'HeliCam.Client.net.dll'
}

server_script {
	'Common.Server.net.dll',
	'HeliCam.Server.net.dll'
}
