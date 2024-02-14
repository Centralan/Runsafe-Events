------------------
---- Tunnel 3 ----
------------------

--World
local world = World:new('tunnel2');
local world2 = World:new('survival3');

--tps
local tunnelrespawn = Location:new(world, 1.0, 168.0, -22.0);
      tunnelrespawn:setYaw(-179.55);
      tunnelrespawn:setPitch(5.55);

local tunnelenter = Location:new(world, 1.483, 240.0, -22.648);
      tunnelenter:setYaw(-179.55);
      tunnelenter:setPitch(5.55);

local tunnelreset1 = Location:new(world, 1.407, 168.0, -289.634);
      tunnelreset1:setYaw(179.4);
      tunnelreset1:setPitch(3.8);

local tunnelreset2 = Location:new(world, -0.580, 168.0, -290.634);
      tunnelreset2:setYaw(179.4);
      tunnelreset2:setPitch(3.8);

--sounds
local pe = Location:new(world, 1.2, 215.0, -22.0);
local p4 = Location:new(world, 1.5, 167.0, -538.0);
local p5 = Location:new(world, 1.0, 167.0, -673.0);
local p6 = Location:new(world, 1.3, 168.0, -295.0);
local p7 = Location:new(world, 1.3, 168.0, -267.0);
local p8 = Location:new(world, 1.3, 168.0, -224.0);
local p9 = Location:new(world, -0.7, 168.0, -223.0);
local p9 = Location:new(world, -0.7, 168.0, -266.0);
local p10 = Location:new(world, -0.5, 168.0, -293.0);
local p11 = Location:new(world, 3.6, 168.0, -234.0);
local p12 = Location:new(world, 3.6, 168.0, -310.0);
local p12 = Location:new(world, 3.6, 168.0, -367.0);

--chests
local endloot = Location:new(world2, 19536.0, 64.0, -20805.0);

--misc
local Tunneltimer = false;

--perms
-- "runsafe.tunnel3.complete");
-- "runsafe.tunnel3.loot");

----------------
----ai------------
------------------
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

function title(player, title, subtitle)
         sendTitle(player.name, title, subtitle);
end

------------------
----Respawning----------
--------------------

function respawn_tunnel(data)
             local player = Player:new(data.player);
             player:setHealth(20);
             player:teleport(tunnelrespawn);
             player:sendMessage("&cyou feel something strange...");

      end

--registerHook("PLAYER_DEATH", "respawn_tunnel", "tunnel2");

------------------
----Entrance----------
--------------------

function tunnel_start(data)
	local p = Player:new(data["player"]);
	p:removePotionEffects();
        p:setMode("ADVENTURE");
end

registerHook("REGION_ENTER", "tunnel_start", "tunnel2-tunnel3_main");
registerHook("REGION_ENTER", "tunnel_start", "tunnel2-effect_clear");
registerHook("REGION_ENTER", "tunnel_start", "tunnel2-t4_gamecheck");

function tunnel_tp_enter(data)
	local player = Player:new(data["player"]);
	player:teleport(tunnelenter);

end

registerHook("REGION_ENTER", "tunnel_tp_enter", "survival3-tunnel_e");

function tunnel_e_message(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&4&n Yo&ku&r&4&nr &kf&r&4&nate i&ks&r&4&n se&kal&r&4&ned, yo&ku&r&4&n can n&ke&r&4&nver &kes&r&4&ncape");
        pe:playSound('ENTITY_ENDERMEN_AMBIENT', 5, 0.5);
        p:sendEvent("achievement.wrongofpassage");
        p:setMode("ADVENTURE");
end

registerHook("REGION_ENTER", "tunnel_e_message", "tunnel2-tunnel3_e_message");

------------------
----Part1----------
--------------------

------------------
----Part2----------
--------------------

function hardcore_mode(data)
        local p = Player:new(data["player"]);
        p:sendMessage("&c Gamemode has been set to &4HARDCORE&c.");
        p :setHealth(0.5);

end

registerHook("INTERACT", "hardcore_mode", 77, "tunnel2", 1.0, 170.0, -48.0);

------------------
----Part3----------
--------------------

function plate_1(data)
	local p = Player:new(data["player"]);
	p :setHealth(0);
end

function plate_2(data)
	local player = Player:new(data["player"]);
	EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
end

function plate_3(data)
	local player = Player:new(data["player"]);
	EventEngine.player.addPotionEffect(player.name, 'POISON', 10, 10);
end

function plate_4(data)
	local player = Player:new(data["player"]);
	EventEngine.player.addPotionEffect(player.name, 'WITHER', 10, 10);
end

function plate_5(data)
	local player = Player:new(data["player"]);
	EventEngine.player.addPotionEffect(player.name, 'SLOW', 1, 10);
end

function plate_6(data)
	local player = Player:new(data["player"]);
	EventEngine.player.addPotionEffect(player.name, 'CONFUSION', 100, 10);
end

registerHook("INTERACT", "plate_1", 70, "tunnel2", -1.0, 168.0, -137.0);
registerHook("INTERACT", "plate_3", 70, "tunnel2", 2.0, 168.0, -136.0);
registerHook("INTERACT", "tunnel_tp_enter", 70, "tunnel2", 3.0, 168.0, -134.0);
registerHook("INTERACT", "plate_4", 70, "tunnel2", -1.0, 168.0, -134.0);
registerHook("INTERACT", "plate_2", 70, "tunnel2", 1.0, 168.0, -135.0);
registerHook("INTERACT", "plate_6", 70, "tunnel2", 3.0, 168.0, -141.0);
registerHook("INTERACT", "plate_2", 70, "tunnel2", 0.0, 168.0, -141.0);
registerHook("INTERACT", "plate_5", 70, "tunnel2", 0.0, 168.0, -139.0);
registerHook("INTERACT", "plate_1", 70, "tunnel2", 1.0, 168.0, -139.0);
registerHook("INTERACT", "plate_3", 70, "tunnel2", 3.0, 168.0, -136.0);

------------------
----Part4----------
--------------------

function tunnel3_message2(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&4(???)&fYou should not be here... you cannot be me...");
--        p4:playSound('ENTITY_SKELETON_HORSE_HIT', 1, 0.5);
end

registerHook("REGION_LEAVE", "tunnel3_message2", "tunnel2-t3_message2");

function tunnel_reset1(data)
	local player = Player:new(data["player"]);
	player:teleport(tunnelreset1);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 2);
        EventEngine.player.addPotionEffect(player.name, 'SLOW', 1, 1);
--        p6:playSound('AMBIENCE_CAVE', 1, 0.5);

end

function tunnel_reset2(data)
	local player = Player:new(data["player"]);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 2);
        EventEngine.player.addPotionEffect(player.name, 'SLOW', 1, 1);
--        p7:playSound('AMBIENCE_CAVE', 1, 0.5);

end



function tunnel_reset3(data)
	local player = Player:new(data["player"]);
	player:teleport(tunnelreset2);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 2);
        EventEngine.player.addPotionEffect(player.name, 'SLOW', 1, 1);
--        p10:playSound('AMBIENCE_CAVE', 1, 0.5);

end

registerHook("REGION_ENTER", "tunnel_reset1", "tunnel2-t3_reset1");
registerHook("REGION_ENTER", "tunnel_reset2", "tunnel2-t3_reset2");
registerHook("REGION_ENTER", "tunnel_reset2", "tunnel2-t3_reset3");
registerHook("REGION_ENTER", "tunnel_reset2", "tunnel2-t3_reset4");
registerHook("REGION_ENTER", "tunnel_reset2", "tunnel2-t3_reset5");
registerHook("REGION_ENTER", "tunnel_reset2", "tunnel2-t3_reset8");
registerHook("REGION_ENTER", "tunnel_reset2", "tunnel2-t3_reset9");
registerHook("REGION_ENTER", "tunnel_reset3", "tunnel2-t3_reset6");


------------------
----Maze----------
------------------

local maze1 = Location:new(world, -5.300, 168.0, -152.554);
maze1:setYaw(89.4);
maze1:setPitch(6.2);

local maze2 = Location:new(world, -7.592, 165.0, -152.355);
maze2:setYaw(70.1);
maze2:setPitch(6.5);

local maze3 = Location:new(world, -7.592, 162.0, -152.355);
maze3:setYaw(91.1);
maze3:setPitch(9.5);

local maze4 = Location:new(world, -7.592, 159.0, -152.355);
maze4:setYaw(91.1);
maze4:setPitch(9.5);

local maze5 = Location:new(world, -7.592, 154.0, -152.355);
maze5:setYaw(91.1);
maze5:setPitch(9.5);

local maze6 = Location:new(world, -21.700, 154.0, -159.300);
maze6:setYaw(-179.1);
maze6:setPitch(7.8);


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

function maze_5(data)
	local p = Player:new(data["player"]);
	p:teleport(maze5);

end

function maze_6(data)
	local p = Player:new(data["player"]);
	p:teleport(maze6);

end

function maze_cheeve(data)
	local p = Player:new(data["player"]);
	p:sendEvent("achievement.wrongturn");
--        p:sendMessage("&7Wrong Turn Cheeve Granted - Debug");
end

--bad warps
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
registerHook("REGION_ENTER", "maze_5", "tunnel2-maze18");
registerHook("REGION_ENTER", "maze_5", "tunnel2-maze19");
registerHook("REGION_ENTER", "maze_5", "tunnel2-maze20");

--good warps
registerHook("REGION_ENTER", "maze_2", "tunnel2-maze4");
registerHook("REGION_ENTER", "maze_3", "tunnel2-maze8");
registerHook("REGION_ENTER", "maze_4", "tunnel2-maze12");
registerHook("REGION_ENTER", "maze_5", "tunnel2-maze16");
registerHook("REGION_ENTER", "maze_6", "tunnel2-maze17");

--Cheeve
registerHook("REGION_ENTER", "maze_cheeve", "tunnel2-maze_cheeve");

------------------
----End----------
--------------------

local sign = Location:new(world, -2.0, 170.0, -678.0);

function tunnel3_message3(data)
	local player = Player:new(data.player);
	player:sendMessage("&4(???)&fStop! I will not let you go any further... you're hurting us both. GET OUT!!!");
        player:sendEvent("achievement.legacyofpain");
        sign:setSign('Recent Survivor:', player.name, 'Time:', '2h3?m??s');
end

function tunnel3_perm(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.tunnel3.complete") then
	        player:addPermission("runsafe.tunnel3.loot");
	        player:addPermission("runsafe.tunnel3.complete");
                player:sendMessage("&6You'll get your rewards for completing tunnel 3 once you return to spawn.");
		
	end
end

function tunnel3_perm2(data)
	local player = Player:new(data.player);
	if player:hasPermission("runsafe.tunnel3.complete") then
                player:sendMessage("&cYou're crazy for doing this again...");
		
	end
end



registerHook("REGION_LEAVE", "tunnel3_message3", "tunnel2-t3_message3");
registerHook("REGION_LEAVE", "tunnel3_perm", "tunnel2-t3_message3");

function tunnel3_endloot(data)
        local player = Player:new(data.player);
	  if player:hasPermission("runsafe.tunnel3.loot") then
              endloot:cloneChestToPlayer(player.name);
              player:closeInventory();
	      player:removePermission("runsafe.tunnel3.loot");
	end
end
 
registerHook("REGION_ENTER", "tunnel3_endloot", "survival3-spawn");


--------------------------------------------------------------------------------------------------------
                                         ---- Tunnel 4 ----
--------------------------------------------------------------------------------------------------------


-- Emerald Blocks

function tunnel_health(data)
          local player = Player:new(data.player);
             player:setHealth(20);
             player:sendMessage("&aThe obsidian spits in your direction...");
	     player:playSound('ENTITY_LLAMA_SPIT', 1, 2);
end

registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t3_health1");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t3_health2");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t3_health3");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t3_health4");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health1");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health2");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health3");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health4");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health5");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health6");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health7");
registerHook("REGION_ENTER", "tunnel_health", "tunnel2-t4_health8");

-- Checkpoints

local t4cp1 = Location:new(world, 4.1, 169.0, -890.203);
t4cp1:setYaw(146.8);
t4cp1:setPitch(4.5);

local t4cp2 = Location:new(world, 1.549, 172.0, -976.515);
t4cp2:setYaw(179.9);
t4cp2:setPitch(29.6);


function tunnel4_cp1_add(data)
        local player = Player:new(data.player);
	  player:addPermission("runsafe.tunnel4.cp1");
end

function tunnel4_cp2_add(data)
        local player = Player:new(data.player);
	  player:addPermission("runsafe.tunnel4.cp2");
end


registerHook("REGION_ENTER", "tunnel4_cp1_add", "tunnel2-tunnel4_cp1");
registerHook("REGION_ENTER", "tunnel4_cp2_add", "tunnel2-tunnel4_cp2");

function tunnel4_cp1(data)
        local player = Player:new(data.player);
	  if player:hasPermission("runsafe.tunnel4.cp1") then
	     player:teleport(t4cp1);
             player:playSound('ENTITY_ENDERMEN_AMBIENT', 5, 0.5);
	end
end

function tunnel4_cp2(data)
        local player = Player:new(data.player);
	  if player:hasPermission("runsafe.tunnel4.cp2") then
	     player:teleport(t4cp2);
	     player:playSound('ENTITY_ENDERMEN_AMBIENT', 5, 0.5);
	end
end


registerHook("REGION_ENTER", "tunnel4_cp1", "tunnel2-tunnel4_point1"); 
registerHook("REGION_ENTER", "tunnel4_cp2", "tunnel2-tunnel4_point2");


-- Tp's

local t4tp = Location:new(world, 2.113, 168.0, -1008.534);
t4tp:setYaw(-89.7);
t4tp:setPitch(7.0);

local t4maze = Location:new(world, 1.5, 168.0, -682.0);
t4maze:setYaw(178.4);
t4maze:setPitch(6.7);


function tunnel4_tp(data)
        local player = Player:new(data.player);
	  if player:hasPermission("runsafe.tunnel3.complete") then
	     player:teleport(t4maze);
             player:sendMessage("&4&nY&ko&4&nu come &kt&4&no see&kk &4&na grea&kt&4&ner c&kh&4&nalla&kn&4&nge");
             player:playSound('ENTITY_ENDERMEN_AMBIENT', 5, 0.5);


	end
end

function tunnel4_icemaze(data)
        local player = Player:new(data.player);
	     player:teleport(t4tp);
end
		
registerHook("REGION_ENTER", "tunnel4_tp", "tunnel2-tunnel4_tp2");
registerHook("REGION_ENTER", "tunnel4_icemaze", "tunnel2-t4_icetp");
