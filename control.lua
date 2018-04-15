require "config"

local add_items = function(player)
	for _,item in pairs(ITEMS_I_WANT) do
		if game.item_prototypes[item[1]] ~= nul then
			player.insert{name=item[1], count=item[2]}
		end
	end
end

local on_player_created_event = function(event)
	local player = game.players[event.player_index]
	add_items(player)
end

script.on_event(defines.events.on_player_created, on_player_created_event)
