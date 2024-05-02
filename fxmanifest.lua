fx_version "adamant"
games {"rdr3"}
description 'Wild Horses, Doctor Menu'
author 'MidoZ' -- don't change thanks!

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
server_scripts {
	'server/server.lua',
	'config.lua',
	
}


shared_scripts {
    'config.lua',
}

client_scripts {
	'client/client.lua',
	'config.lua',

}