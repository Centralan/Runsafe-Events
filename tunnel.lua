------------------
--Locals--
------------------

--World
local world = World:new('tunnel');
local world2 = World:new('spawn2');

--tps
local tunnelrespawn = Location:new(world, 1.0, 168.0, -22.0);
tunnelrespawn:setYaw(-179.55);
tunnelrespawn:setPitch(5.55);

local tunnelenter = Location:new(world, 1.0, 240.0, -22.0);
tunnelrespawn:setYaw(-179.55);
tunnelrespawn:setPitch(5.55);

--sounds

--chests
local endloot = Location:new(world2, -1581.0, 44.0, -365.0);

--misc

----------------
--ai------------
----------------

local ai = '&f[&k?&r] &bDOG&f:'
local Message = ''
local ai = ''

function tunnel_broadcast(msg)
	world:broadcast(msg);
end

function tunnel_broadcast_npc(npc, msg)
	tunnel_broadcast5('&f&c' .. npc .. '&6: &f' .. msg);
end

function tunnel_whisper_good(npc, msg, player)
	player:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

------------------
--Respawning----------
------------------

function respawn_tunnel(data)
             local player = Player:new(data.player);
             player:setHealth(20);
             player:teleport(tunnelrespawn);
	     player:sendMessage("&7You feel a little more crazy...");

      end
   end

registerHook("PLAYER_DEATH", "respawn_tunnel", "tunnel2");


------------------
--Entrance----------
------------------

function tunnel_start(data)
	local p = Player:new(data["player"]);
	p:removePotionEffects();
end

registerHook("REGION_ENTER", "tunnel_start", "tunnel2-tunnel3_main");

function tunnel_tp_enter(data)
	local p = Player:new(data["player"]);
	player:teleport(tunnelenter);

end

registerHook("REGION_ENTER", "tunnel_tp_enter", "survival3-tunnel_e");

function tunnel_e_message(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&4&n Yo&ku&r&4&nr &kf&r&4&nate i&ks&r&4&n se&kal&r&4&ned, yo&ku&r&4&n can n&ke&r&4&nver &kes&r&4&ncape");

end

registerHook("REGION_ENTER", "tunnel_e_message", "tunnel2-tunnel3_e_message");




------------------
--Part1----------
------------------

------------------
--Part2----------
------------------

------------------
--Part3----------
------------------

------------------
--Part4----------
------------------

------------------
--Maze----------
------------------

------------------
--End----------
------------------

function tunnel3_endloot(data)
        local player = Player:new(data.player);
              endloot:cloneChestToPlayer(player.name);
              player:closeInventory();
  
registerHook("REGION_LEAVE", "tunnel3_endloot", "tunnel-tunnel3_test");
  
