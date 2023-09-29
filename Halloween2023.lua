---------------
--Worlds / sound--
---------------
local world = World:new('spawn2');
local spawnsound = Location:new(world, -81.0, 76.0, -494.0);

-------------
--teleports--
-------------

----------------
--Chests--
----------------
local spawn1 = Location:new(world, -79.0, 65.0, -503.0);

--------
-----AI---
----------

local spook = '&f[&k?&r] &bDOG&f:'
local Message = ''
local spook1 = ''

function h_broadcast(msg)
	world:broadcast(msg);
end

function h_broadcast_npc(npc, msg)
	h_broadcast5('&f&c' .. npc .. '&6: &f' .. msg);
end

function h_whisper_good(npc, msg, player)
	player:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

--------
-----Spawn---
----------
function welcome(data)
        local player = Player:new(data.player);
        player:sendMessage("A cold wind gives you a chill, you trip over some old bones.");
	spawnsound:playSound('FIREWORK_LAUNCH', 100, 0.1);
	spawn1:cloneChestToPlayer(player.name);
end

function welcome2(data)
        local player = Player:new(data.player);
        player:sendMessage("You hear a wolf in the distance, man it sounds hungry.");
	player:sendMessage("Something uphead make a noise.");
	spawnsound:playSound('WOLF_HOWL', 100, 0.8);
end

registerHook("REGION_LEAVE", "welcome", "spawn2-h2023_enter");
registerHook("REGION_ENTER", "welcome2", "spawn2-h2023_enter2");
