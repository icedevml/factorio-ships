require "util"
require 'stdlib/event/event'
require 'stdlib/log/logger'
require 'stdlib/entity/entity'
require 'stdlib/area/position'
require 'stdlib/area/area'
require 'stdlib/table'
require 'stdlib/game'
require "libs.utils"


script.on_configuration_changed(function(data)
	if data.mod_changes ~= nil and data.mod_changes["Ships"] ~= nil and data.mod_changes["Ships"].old_version == nil then
		-- "My Mod" was added to an existing game
	end
	
	
	for k, v in pairs(game.forces) do
        if v.technologies["automobilism"].researched then
            v.recipes["basic-ship"].enabled = true
        end
    end
end)

script.on_load(function(data)
	
end)
script.on_init(function(data)
	
end)
