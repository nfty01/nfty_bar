fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.1.0'

ui_page 'html/index.html'

client_scripts {
    'client.lua',
}

shared_scripts {
	'config.lua'
}

files {
    'html/index.html',
    'html/main.js',
    'html/style.css',
}

exports { 'run', 'stop' }
