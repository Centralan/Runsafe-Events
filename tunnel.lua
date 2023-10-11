------------------
--Locals--
------------------

--World
local world = World:new('tunnel');
local world2 = World:new('spawn2');

--tps
local tunnelrespawn = Location:new(world, 1.0, 168.0, -22.0);

--sounds

--chests
local endloot = Location:new(world2, -1581.0, 44.0, -365.0);

--misc
local tunnelPlayers = {};
local tplayerCount = 0;

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
         for playerName, value in pairs(tunnelPlayers) do
             local player = Player:new(data.player);
             player:setHealth(20);
             player:teleport(tunnelrespawn);

      end
   end
end

registerHook("PLAYER_DEATH", "respawn_tunnel", "tunnel2");


------------------
--Entrance----------
------------------

function tunnel_start(data)
	local p = Player:new(data["player"]);
	p:removePotionEffects();
	tunnelPlayers[player.name] = true;
        tplayerCount = tplayerCount + 1;
end

registerHook("REGION_ENTER", "tunnel_start", "tunnel2-tunnel3_1");

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
  
