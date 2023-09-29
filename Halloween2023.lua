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
        player:sendMessage("&7A cold wind gives you a chill, you trip over some old bones.");
	spawnsound:playSound('HURT_FLESH', 100, 0.1);
	spawn1:cloneChestToPlayer(player.name);
	player:sendEvent("achievement.halloween2023");
end

function welcome2(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You hear a wolf in the distance, man it sounds hungry.");
	player:sendMessage("&7Something up ahead make a noise.");
	spawnsound:playSound('WOLF_HOWL', 100, 0.8);
end

registerHook("REGION_LEAVE", "welcome", "spawn2-h2023_enter");
registerHook("REGION_ENTER", "welcome2", "spawn2-h2023_enter2");

-------------------
-----Step 1 Tree---
-------------------
function tree1(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	spawnsound:playSound('SKELETON_IDLE', 100, 0.1);
end
end

registerHook("REGION_ENTER", "tree1", "spawn2-grave1");

function tree2(data)
        local player = Player:new(data.player);
        player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end

registerHook("REGION_LEAVE", "tree2", "spawn2-grave1");

-------------------
-----Step 2 house---
-------------------
function knock1(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You knock rather aggresively...");
	spawnsound:playSound('ZOMBIE_WOOD', 100, 5);
	spawnsound:playSound('ZOMBIE_WOOD', 100, 5);
	spawnsound:playSound('ZOMBIE_WOOD', 100, 5);
end
end

registerHook("REGION_ENTER", "tree1", "spawn2-grave1");

function knock2(data)
        local player = Player:new(data.player);
        player:sendMessage("&7Nobody seems to be home.");
end

registerHook("REGION_ENTER", "knock1", "spawn2-knock1");
registerHook("REGION_ENTER", "knock1", "spawn2-knock2");
registerHook("REGION_LEAVE", "knock2", "spawn2-knock1");
registerHook("REGION_LEAVE", "knock2", "spawn2-knock2");
