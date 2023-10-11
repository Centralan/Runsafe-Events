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
local pe = Location:new(world, 1.2, 215.0, -22.0);
local p4 = Location:new(world, 1.5, 167.0, -538.0);
local p5 = Location:new(world, 1.0, 167.0, -673.0);

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
        pe:playSound('ENDERMAN_IDLE', 1, 0.5);
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

function tunnel3_message2(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&4(???)&fYou should not be here... you cannot be me...");
        p4:playSound('HORSE_SKELETON_HIT', 1, 0.5);

end

registerHook("REGION_LEAVE", "tunnel3_message2", "tunnel2-t3_message2");

------------------
--Maze----------
------------------

local maze1 = Location:new(world, -5.300, 168.0, -152.554);
maze1:setYaw(89.4);
maze1:setPitch(6.2);

local maze2 = Location:new(world, -7.592, 165.0, -152.355);
maze1:setYaw(91.1);
maze1:setPitch(9.5);

local maze3 = Location:new(world, -7.592, 162.0, -152.355);
maze1:setYaw(91.1);
maze1:setPitch(9.5);

local maze4 = Location:new(world, -7.592, 159.0, -152.355);
maze1:setYaw(91.1);
maze1:setPitch(9.5);

function maze_enter(data)
	local p = Player:new(data["player"]);
	p:teleport(maze1);

end

function maze_2(data)
	local p = Player:new(data["player"]);
	p:teleport(maze2);

end

function maze_3(data)
	local p = Player:new(data["player"]);
	p:teleport(maze3);

end

function maze_4(data)
	local p = Player:new(data["player"]);
	p:teleport(maze4);

end


registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze1");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze2");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze3");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze5");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze6");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze7");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze9");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze10");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze11");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze13");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze14");
registerHook("REGION_ENTER", "maze_enter", "tunnel2-maze15");

registerHook("REGION_ENTER", "maze_2", "tunnel2-maze4");
registerHook("REGION_ENTER", "maze_3", "tunnel2-maze8");
registerHook("REGION_ENTER", "maze_4", "tunnel2-maze12");

------------------
--End----------
------------------

function tunnel3_message3(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&4(???)&fStop! I will not let you go any further... you're hurting us both. GET OUT!!!");
        p5:playSound('ZOMBIE_PIG_DEATH', 1, 0.5);
end

registerHook("REGION_LEAVE", "tunnel3_message3", "tunnel2-t3_message3");

function tunnel3_endloot(data)
        local player = Player:new(data.player);
              endloot:cloneChestToPlayer(player.name);
              player:closeInventory();
  
registerHook("REGION_LEAVE", "tunnel3_endloot", "tunnel-tunnel3_test");
  
