fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

author 'Atoshi'
description 'Logic Gamemode'
version '1.0.0'

shared_scripts {
    -- Utils
    'shared/utils/logger.lua',
}

server_scripts {
    -- Classes
    'server/classes/profiles/profiles.lua',

    -- Modules
    'modules/deferrals/server/*.lua',

    -- All
    'server/playerConnecting.lua'
}