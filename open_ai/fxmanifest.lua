fx_version 'adamant'

game 'gta5'
name 'ruxo_openai'
version '1.5'
description 'Ruxo OpenAi'


shared_scripts{
    "@es_extended/imports.lua",
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',	
    'server/server.lua',
} 

dependencies {
	'es_extended'
}

