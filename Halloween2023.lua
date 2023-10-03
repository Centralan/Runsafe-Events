---------------
--Worlds / sound--
---------------
local world = World:new('spawn2');
local spawnsound = Location:new(world, -81.0, 76.0, -494.0);

-------------
--teleports--
-------------
local tp1 = Location:new(world, 26.0, 86.0, -560.0);
local tp2 = Location:new(world, -38.0, 41.0, -519.0);
local tp3 = Location:new(world, 119.0, 142.0, -384.0);
local tpend = Location:new(world, -22.0, 123.0, -627.0);

---------------------
----timers-----------
---------------------

----------------
--Chests--
----------------
local spawn1 = Location:new(world, -79.0, 65.0, -503.0);
local Knock2 = Location:new(world, -79.0, 65.0, -505.0);
local Knock3 = Location:new(world, -79.0, 65.0, -507.0);
local graveloot = Location:new(world, -79.0, 65.0, -509.0);
local graveloot2 = Location:new(world, -79.0, 65.0, -513.0);
local graveloot3 = Location:new(world, -79.0, 65.0, -515.0);
local graveloot4 = Location:new(world, -81.0, 65.0, -513.0);
local graveloot5 = Location:new(world, -83.0, 65.0, -513.0);
local graveloot6 = Location:new(world, -85.0, 65.0, -513.0);
local candyI = Location:new(world, -79.0, 65.0, -511.0);
local candy1 = Location:new(world, -77.0, 65.0, -503.0);
local candy2 = Location:new(world, -77.0, 65.0, -505.0);
local candy3 = Location:new(world, -77.0, 65.0, -507.0);
local candy4 = Location:new(world, -77.0, 65.0, -509.0);
local candy5 = Location:new(world, -77.0, 65.0, -511.0);
local candy6 = Location:new(world, -77.0, 65.0, -513.0);
local candy7 = Location:new(world, -77.0, 65.0, -515.0);

-----------------------
--- Candy HANDLING ----
-----------------------
local candy1ChestPlayers = {};
local candy1ChestResetTimer = Timer:new("candy1_reset_chest", 20 * 60 * 5);
local candy1ChestResetTimerRunning = false;
local candy1ChestOpen = Location:new(world, -77.0, 65.0, -503.0);

function candy1_chest(data)
	local player = Player:new(data.player);
	if not candy1ChestPlayers[player.name] then
		candy1:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy1ChestPlayers[player.name] = true; 
		
		if not candy1ChestResetTimerRunning then
			candy1ChestResetTimerRunning = true;
			candy1ChestResetTimer:start();
		end
	end
end

function candy1_reset_chest()
	candy1ChestPlayers = {};
	candy1ChestResetTimerRunning = false;
end

local candy2ChestPlayers = {};
local candy2ChestResetTimer = Timer:new("candy2_reset_chest", 20 * 60 * 5);
local candy2ChestResetTimerRunning = false;
local candy2ChestOpen = Location:new(world, -79.0, 65.0, -509.0);

function candy2_chest(data)
	local player = Player:new(data.player);
	if not candy2ChestPlayers[player.name] then
		candy2:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy2ChestPlayers[player.name] = true; 
		
		if not candy2ChestResetTimerRunning then
			candy2ChestResetTimerRunning = true;
			candy2ChestResetTimer:start();
		end
	end
end

function candy2_reset_chest()
	candy2ChestPlayers = {};
	candy2ChestResetTimerRunning = false;
end

local candy3ChestPlayers = {};
local candy3ChestResetTimer = Timer:new("candy3_reset_chest", 20 * 60 * 5);
local candy3ChestResetTimerRunning = false;
local candy3ChestOpen = Location:new(world, -77.0, 65.0, -507.0);

function candy3_chest(data)
	local player = Player:new(data.player);
	if not candy3ChestPlayers[player.name] then
		candy3:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy3ChestPlayers[player.name] = true; 
		
		if not candy3ChestResetTimerRunning then
			candy3ChestResetTimerRunning = true;
			candy3ChestResetTimer:start();
		end
	end
end

function candy3_reset_chest()
	candy3ChestPlayers = {};
	candy3ChestResetTimerRunning = false;
end

local candy4ChestPlayers = {};
local candy4ChestResetTimer = Timer:new("candy4_reset_chest", 20 * 60 * 5);
local candy4ChestResetTimerRunning = false;
local candy4ChestOpen = Location:new(world, -77.0, 65.0, -509.0);

function candy4_chest(data)
	local player = Player:new(data.player);
	if not candy4ChestPlayers[player.name] then
		candy4:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy4ChestPlayers[player.name] = true; 
		
		if not candy4ChestResetTimerRunning then
			candy4ChestResetTimerRunning = true;
			candy4ChestResetTimer:start();
		end
	end
end

function candy4_reset_chest()
	candy4ChestPlayers = {};
	candy4ChestResetTimerRunning = false;
end

local candy5ChestPlayers = {};
local candy5ChestResetTimer = Timer:new("candy5_reset_chest", 20 * 60 * 5);
local candy5ChestResetTimerRunning = false;
local candy5ChestOpen = Location:new(world, -77.0, 65.0, -511.0);

function candy5_chest(data)
	local player = Player:new(data.player);
	if not candy5ChestPlayers[player.name] then
		candy5:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy5ChestPlayers[player.name] = true; 
		
		if not candy5ChestResetTimerRunning then
			candy5ChestResetTimerRunning = true;
			candy5ChestResetTimer:start();
		end
	end
end

function candy5_reset_chest()
	candy5ChestPlayers = {};
	candy5ChestResetTimerRunning = false;
end


local candy6ChestPlayers = {};
local candy6ChestResetTimer = Timer:new("candy6_reset_chest", 20 * 60 * 5);
local candy6ChestResetTimerRunning = false;
local candy6ChestOpen = Location:new(world, -77.0, 65.0, -513.0);

function candy6_chest(data)
	local player = Player:new(data.player);
	if not candy6ChestPlayers[player.name] then
		candy6:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy6ChestPlayers[player.name] = true; 
		
		if not candy6ChestResetTimerRunning then
			candy6ChestResetTimerRunning = true;
			candy6ChestResetTimer:start();
		end
	end
end

function candy6_reset_chest()
	candy6ChestPlayers = {};
	candy6ChestResetTimerRunning = false;
end

local candy7ChestPlayers = {};
local candy7ChestResetTimer = Timer:new("candy7_reset_chest", 20 * 60 * 5);
local candy7ChestResetTimerRunning = false;
local candy7ChestOpen = Location:new(world, -77.0, 65.0, -515.0);

function candy7_chest(data)
	local player = Player:new(data.player);
	if not candy7ChestPlayers[player.name] then
		candy7:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy7ChestPlayers[player.name] = true; 
		
		if not candy7ChestResetTimerRunning then
			candy7ChestResetTimerRunning = true;
			candy7ChestResetTimer:start();
		end
	end
end

function candy7_reset_chest()
	candy7ChestPlayers = {};
	candy7ChestResetTimerRunning = false;
end

local candyIChestPlayers = {};
local candyIChestResetTimer = Timer:new("candy7_reset_chest", 20 * 60 * 5);
local candyIChestResetTimerRunning = false;
local candyIChestOpen = Location:new(world, -79.0, 65.0, -511.0);

function candyI_chest(data)
	local player = Player:new(data.player);
	if not candyIChestPlayers[player.name] then
		candyI:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&fThe chest smells sweet almost like candy.');
		player:sendMessage('&7Maybe more candy can be found, I should look everywhere.');
		spawnsound:playSound('EAT', 1, 0.5);
		candyIChestPlayers[player.name] = true; 
		
		if not candyIChestResetTimerRunning then
			candyIChestResetTimerRunning = true;
			candyIChestResetTimer:start();
		end
	end
end

function candyI_reset_chest()
	candyIChestPlayers = {};
	candyIChestResetTimerRunning = false;
end

registerHook("INTERACT", "candyI_chest", 54, "spawn2", -59, 75, -498);

registerHook("INTERACT", "candy1_chest", 54, "spawn2", -30, 82, -498);
registerHook("INTERACT", "candy1_chest", 54, "spawn2", -92, 79, -532);
registerHook("INTERACT", "candy1_chest", 54, "spawn2", -97, 67, -468);
registerHook("INTERACT", "candy1_chest", 54, "spawn2", -43, 82, -439);
registerHook("INTERACT", "candy1_chest", 54, "spawn2", -11, 94, -489);

registerHook("INTERACT", "candy2_chest", 54, "spawn2", -60, 81, -537);
registerHook("INTERACT", "candy2_chest", 54, "spawn2", -210, 82, -456);
registerHook("INTERACT", "candy2_chest", 54, "spawn2", -109, 75, -442);
registerHook("INTERACT", "candy2_chest", 54, "spawn2", -105, 80, -512);
registerHook("INTERACT", "candy2_chest", 54, "spawn2", -11, 94, -489);


registerHook("INTERACT", "candy3_chest", 54, "spawn2", -64, 85, -537);
registerHook("INTERACT", "candy3_chest", 54, "spawn2", -20, 79, -459);
registerHook("INTERACT", "candy3_chest", 54, "spawn2", -96, 75, -439);
registerHook("INTERACT", "candy3_chest", 54, "spawn2", -106, 82, -544);

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
	graveloot:cloneChestToPlayer(player.name);
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

function knock2(data)
        local player = Player:new(data.player);
        player:sendMessage("&7Nobody seems to be home.");
        player:sendMessage("&7You find a note on the door, it seems hard to read.");
        Knock2:cloneChestToPlayer(player.name);
end

function knock3(data)
        local player = Player:new(data.player);
        player:sendMessage("&7Nobody seems to be home.");
        player:sendMessage("&7You find a note on the door, it seems hard to read.");
        Knock3:cloneChestToPlayer(player.name);
end

registerHook("REGION_ENTER", "knock1", "spawn2-knock1");
registerHook("REGION_ENTER", "knock1", "spawn2-knock2");
registerHook("REGION_LEAVE", "knock2", "spawn2-knock1");
registerHook("REGION_LEAVE", "knock2", "spawn2-knock2");
registerHook("REGION_ENTER", "knock1", "spawn2-knock3");
registerHook("REGION_LEAVE", "knock3", "spawn2-knock3");

----------------------------------
-----Step 3 / (Dracula Tree Intro)
----------------------------------
function dracula1(data)
        local player = Player:new(data.player);
                if player:hasItem("paper", 2) then
        player:sendMessage("(&6???&f) I remember you... ");
        player:sendMessage("(&6???&f) The pit will guide the way.");
	spawnsound:playSound('VILLAGER_HAGGLE', 100, 0.5);
	else
	player:sendMessage("&7 The tree seems to have no reaction, maybe I'm missing something.");
end
end

function pit1(data)
        local player = Player:new(data.player);
                if player:hasItem("paper", 2) then
		player:removeItem("paper", 2);
        player:sendMessage("&7The pit gurgles at you... ");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
	spawnsound:playSound('LAVA', 100, 0.2);
	player:teleport(tp1);
end
end

function scare1(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You get a funny feeling.");
        player:teleport(tp2)
end

function phase2(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You can start to see things, but have no idea where you are.");
	player:sendMessage("&7You try and find a way out.");
end

registerHook("REGION_ENTER", "dracula1", "spawn2-tree2");
registerHook("REGION_ENTER", "pit1", "spawn2-portal1");
registerHook("REGION_ENTER", "scare1", "spawn2-scare1");
registerHook("REGION_ENTER", "phase2", "spawn2-phase2");

---------------------
-----unground ---
---------------------

function piston_extend(data)
        local player = Player:new(data.player);
        spawnsound:playSound('PISTON_EXTEND', 100, 0.5);
end

function piston_retract(data)
        local player = Player:new(data.player);
        spawnsound:playSound('PISTON_RETRACT', 100, 0.5);
end

function enderdragon_growl(data)
        local player = Player:new(data.player);
        spawnsound:playSound('ENDERDRAGON_GROWL', 100, 0.5);
end

function horse_skeleton_death(data)
        local player = Player:new(data.player);
        spawnsound:playSound('HORSE_SKELETON_DEATH', 100, 0.5);
end

function horse_skeleton_idle(data)
        local player = Player:new(data.player);
        spawnsound:playSound('HORSE_SKELETON_IDLE', 100, 0.5);
end


registerHook("REGION_ENTER", "piston_extend", "spawn2-trap1");
registerHook("REGION_ENTER", "enderdragon_growl", "spawn2-trap2");
registerHook("REGION_ENTER", "piston_retract", "spawn2-trap3");
registerHook("REGION_ENTER", "horse_skeleton_death", "spawn2-trap4");
registerHook("REGION_ENTER", "horse_skeleton_idle", "spawn2-trap5");
registerHook("REGION_ENTER", "horse_skeleton_idle", "spawn2-trap6");
registerHook("REGION_ENTER", "enderdragon_growl", "spawn2-trap7");
registerHook("REGION_ENTER", "piston_extend", "spawn2-trap8");
registerHook("REGION_ENTER", "piston_retract", "spawn2-trap9");
registerHook("REGION_ENTER", "horse_skeleton_death", "spawn2-trap10");

function button_wrong(data)
        local player = Player:new(data.player);
        player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 2);
        spawnsound:playSound('EAT', 100, 0.5);
end

function exit_cave(data)
        local player = Player:new(data.player);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 6);
        player:sendMessage("&7It suddenly gets cold outside.");
        player:sendMessage("&7Great now where am I?");
        player:teleport(tp3)
end

registerHook("INTERACT", "button_wrong", 77, "spawn2", -57, 41, -523);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -67, 40, -511);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -67, 39, -534);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -87, 39, -519);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -54, 38, -535);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -32, 37, -516);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -13, 43, -514);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -18, 43, -530);
registerHook("INTERACT", "button_wrong", 77, "spawn2", 3, 43, -529);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -19, 41, -491);
registerHook("INTERACT", "button_wrong", 77, "spawn2", -17, 39, -472);
registerHook("REGION_ENTER", "exit_cave", "spawn2-h2023_tp3");
