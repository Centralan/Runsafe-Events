----------------------------------
-------Step 8 / pumpkin
------------------------------------

local world = World:new('spawn2');

local pump = Location:new(world, 39.0, 52.0, -480.0);
local pumpR = Location:new(world, 48.0, 38.0, -480.0);
local pumpB = Location:new(world, 48.0, 38.0, -482.0);
local pumpE = Location:new(world, 39.0, 76.0, -493.0);

local ParenaPlayers = {};
local PplayerCount = 0;

local entityList = {};

local function PspawnMob(position, mobType)
        local entity = Entity:new(position);
        entity:spawn(mobType);
        table.insert(entityList, entity);
end

local function purgeEntityListP()
        for index, value in pairs(entityList) do
                entityList[index] = nil;
        end
end

function check_alive_statsP()
        for key, value in pairs(entityList) do
                if value:isAlive() then
                        return false;
                end
        end

        return true;
end

local pRoundRunning = false;
local pLRoundRunning = false;
local pR1 = Timer:new("p_end_r1", 1);

local pS1 = Location:new(world, 52.0, 50.0, -477.0);
local pS2 = Location:new(world, 51.0, 52.0, -487.0);
local pS3 = Location:new(world, 53.0, 48.0, -487.0);
local pS4 = Location:new(world, 53.0, 45.0, -482.0);
local pS5 = Location:new(world, 45.0, 45.0, -488.0);
local pS6 = Location:new(world, 42.0, 52.0, -487.0);
local pS7 = Location:new(world, 44.0, 45.0, -476.0);
local pS8 = Location:new(world, 41.0, 51.0, -475.0);

function pump_enter(data)
        local player = Player:new(data.player);
        player:sendMessage("&7 This pumpkin smells funny.");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 2);
        player:teleport(pump)
        pumpB:cloneChestToPlayer(player.name);
        ParenaPlayers[player.name] = true;
        PplayerCount = PplayerCount + 1;
end

registerHook("REGION_ENTER", "pump_enter", "spawn2-h2023_pump");


function p_start_r1(data)
        for playerName, value in pairs(ParenaPlayers) do
         local player = Player:new(data.player);
      if not pRoundRunning then
         pRoundRunning = true;
         pR1:startRepeating()
        player:sendMessage("&7 EEK BATS!");
        PspawnMob(pS1, "BAT");
        PspawnMob(pS2, "BAT");
        PspawnMob(pS3, "BAT");
        PspawnMob(pS4, "BAT");
        PspawnMob(pS5, "BAT");
        PspawnMob(pS6, "BAT");
        PspawnMob(pS7, "BAT");
        PspawnMob(pS8, "BAT");
        PspawnMob(pS1, "BAT");
        PspawnMob(pS2, "BAT");
        PspawnMob(pS3, "BAT");
        PspawnMob(pS4, "BAT");
        PspawnMob(pS5, "BAT");
        PspawnMob(pS6, "BAT");
        PspawnMob(pS7, "BAT");
        PspawnMob(pS8, "BAT");
end
end
end

function p_end_r1()
        if check_alive_statsP() then
           pR1:cancel()
           pRoundRunning = false;
for playerName, value in pairs(ParenaPlayers) do
local player = Player:new(playerName);
           player:teleport(pumpE);
    player:sendMessage("&7 Glad thats over.");
           pumpR:cloneChestToPlayer(player.name);
        end
        end
end

registerHook("REGION_ENTER", "p_start_r1", "spawn2-h2023_pump_main");

function pump_exit(data)
        local player = Player:new(data.player);
          ParenaPlayers[player.name] = nil;
          PplayerCount = PplayerCount - 1;
end
registerHook("REGION_LEAVE", "pump_exit", "spawn2-h2023_pump_main");

---------------------
---Bones--------
----------------

local b1sound = Location:new(world, -14.0, 81.0, -569.0);
local b2sound = Location:new(world, -102.0, 67.0, -432.0);
local b3sound = Location:new(world, 157.0, 136.0, -421.0);
local b4sound = Location:new(world, 37.0, 82.0, -428.0);
local b5sound = Location:new(world, 116.0, 86.0, -511.0);

local b1 = Location:new(world, -81.0, 65.0, -503.0);
local b2 = Location:new(world, -83.0, 65.0, -503.0);
local b3 = Location:new(world, -85.0, 65.0, -503.0);
local b4 = Location:new(world, -81.0, 65.0, -505.0);
local b5 = Location:new(world, -83.0, 65.0, -505.0);


local b1ChestPlayers = {};
local b1ChestResetTimer = Timer:new("b1_reset_chest", 20 * 60 * 5);
local b1ChestResetTimerRunning = false;
local b1ChestOpen = Location:new(world, -61.0, 65.0, -513.0);

local b2ChestPlayers = {};
local b2ChestResetTimer = Timer:new("b2_reset_chest", 20 * 60 * 5);
local b2ChestResetTimerRunning = false;
local b2ChestOpen = Location:new(world, -61.0, 65.0, -513.0);

local b3ChestPlayers = {};
local b3ChestResetTimer = Timer:new("b3_reset_chest", 20 * 60 * 5);
local b3ChestResetTimerRunning = false;
local b3ChestOpen = Location:new(world, -61.0, 65.0, -513.0);

local b4ChestPlayers = {};
local b4ChestResetTimer = Timer:new("b4_reset_chest", 20 * 60 * 5);
local b4ChestResetTimerRunning = false;
local b4ChestOpen = Location:new(world, -61.0, 65.0, -513.0);

local b5ChestPlayers = {};
local b5ChestResetTimer = Timer:new("b5_reset_chest", 20 * 60 * 5);
local b5ChestResetTimerRunning = false;
local b5ChestOpen = Location:new(world, -61.0, 65.0, -513.0);

function b1(data)
        local player = Player:new(data.player);
        if not b1ChestPlayers[player.name] then
                b1:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage("&7You trip over some old bones.");
                b1sound:playSound('SKELETON_HURT', 1, 0.1);
                b1ChestPlayers[player.name] = true;

                if not b1ChestResetTimerRunning then
                        b1IChestResetTimerRunning = true;
                        b1ChestResetTimer:start();
                end
        end
end

function b1_reset_chest()
	b1ChestPlayers = {};
	b1ChestResetTimerRunning = false;
end

function b2(data)
        local player = Player:new(data.player);
        if not b2ChestPlayers[player.name] then
                b2:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage("&7You trip over some old bones.");
                b2sound:playSound('SKELETON_HURT', 1, 0.1);
                b2ChestPlayers[player.name] = true;

                if not b2ChestResetTimerRunning then
                        b2IChestResetTimerRunning = true;
                        b2ChestResetTimer:start();
                end
        end
end

function b2_reset_chest()
	b2ChestPlayers = {};
	b2ChestResetTimerRunning = false;
end

function b3(data)
        local player = Player:new(data.player);
        if not b3ChestPlayers[player.name] then
                b3:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage("&7You trip over some old bones.");
                b3sound:playSound('SKELETON_HURT', 1, 0.1);
                b3ChestPlayers[player.name] = true;

                if not b3ChestResetTimerRunning then
                        b3IChestResetTimerRunning = true;
                        b3ChestResetTimer:start();
                end
        end
end

function b3_reset_chest()
	b3ChestPlayers = {};
	b3ChestResetTimerRunning = false;
end

function b4(data)
        local player = Player:new(data.player);
        if not b4ChestPlayers[player.name] then
                b4:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage("&7You trip over some old bones.");
                b4sound:playSound('SKELETON_HURT', 1, 0.1);
                b4ChestPlayers[player.name] = true;

                if not b4ChestResetTimerRunning then
                        b4IChestResetTimerRunning = true;
                        b4ChestResetTimer:start();
                end
        end
end

function b4_reset_chest()
	b4ChestPlayers = {};
	b4ChestResetTimerRunning = false;
end
function b5(data)
        local player = Player:new(data.player);
        if not b5ChestPlayers[player.name] then
                b5:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage("&7You trip over some old bones.");
                b5sound:playSound('SKELETON_HURT', 1, 0.1);
                b5ChestPlayers[player.name] = true;

                if not b5ChestResetTimerRunning then
                        b5IChestResetTimerRunning = true;
                        b5ChestResetTimer:start();
                end
        end
end

function b5_reset_chest()
	b5ChestPlayers = {};
	b5ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "b1", "spawn2-h2023_b1");
registerHook("REGION_ENTER", "b2", "spawn2-h2023_b2");
registerHook("REGION_ENTER", "b3", "spawn2-h2023_b3");
registerHook("REGION_ENTER", "b4", "spawn2-h2023_b4");
registerHook("REGION_ENTER", "b5", "spawn2-h2023_b5");

--------------------
---candy2----
----------------

local candy23 = Location:new(world, -59.0, 65.0, -513.0);
local candy24 = Location:new(world, -57.0, 65.0, -513.0);
local candy25 = Location:new(world, -55.0, 65.0, -513.0);
local candy26 = Location:new(world, -53.0, 65.0, -513.0);
local candy27 = Location:new(world, -60.0, 65.0, -515.0);
local candy28 = Location:new(world, -58.0, 65.0, -515.0);
local candy29 = Location:new(world, -56.0, 65.0, -515.0);
local candy30 = Location:new(world, -54.0, 65.0, -515.0);

local candy23ChestPlayers = {};
local candy23ChestResetTimer = Timer:new("candy23_reset_chest", 20 * 60 * 5);
local candy23ChestResetTimerRunning = false;
local candy23ChestOpen = Location:new(world, -79.0, 65.0, -511.0);

local candy24ChestPlayers = {};
local candy24ChestResetTimer = Timer:new("candy24_reset_chest", 20 * 60 * 5);
local candy24ChestResetTimerRunning = false;
local candy24ChestOpen = Location:new(world, -77.0, 65.0, -503.0);


local candy25ChestPlayers = {};
local candy25ChestResetTimer = Timer:new("candy25_reset_chest", 20 * 60 * 5);
local candy25ChestResetTimerRunning = false;
local candy25ChestOpen = Location:new(world, -79.0, 65.0, -509.0);

local candy26ChestPlayers = {};
local candy26ChestResetTimer = Timer:new("candy26_reset_chest", 20 * 60 * 5);
local candy26ChestResetTimerRunning = false;
local candy26ChestOpen = Location:new(world, -77.0, 65.0, -507.0);

local candy27ChestPlayers = {};
local candy27ChestResetTimer = Timer:new("candy27_reset_chest", 20 * 60 * 5);
local candy27ChestResetTimerRunning = false;
local candy27ChestOpen = Location:new(world, -77.0, 65.0, -509.0);

local candy28ChestPlayers = {};
local candy28ChestResetTimer = Timer:new("candy28_reset_chest", 20 * 60 * 5);
local candy28ChestResetTimerRunning = false;
local candy28ChestOpen = Location:new(world, -77.0, 65.0, -511.0);

local candy29ChestPlayers = {};
local candy29ChestResetTimer = Timer:new("candy29_reset_chest", 20 * 60 * 5);
local candy29ChestResetTimerRunning = false;
local candy29ChestOpen = Location:new(world, -77.0, 65.0, -513.0);

local candy30ChestPlayers = {};
local candy30ChestResetTimer = Timer:new("candy30_reset_chest", 20 * 60 * 5);
local candy30ChestResetTimerRunning = false;
local candy30ChestOpen = Location:new(world, -77.0, 65.0, -515.0);

function candy23_reset_chest()
	candy23ChestPlayers = {};
	candy23ChestResetTimerRunning = false;
end

function candy24_reset_chest()
	candy24ChestPlayers = {};
	candy24ChestResetTimerRunning = false;
end

function candy25_reset_chest()
	candy25ChestPlayers = {};
	candy25ChestResetTimerRunning = false;
end

function candy26_reset_chest()
	candy26ChestPlayers = {};
	candy26ChestResetTimerRunning = false;
end

function candy27_reset_chest()
	candy27ChestPlayers = {};
	candy27ChestResetTimerRunning = false;
end

function candy28_reset_chest()
	candy28ChestPlayers = {};
	candy28ChestResetTimerRunning = false;
end

function candy29_reset_chest()
	candy29ChestPlayers = {};
	candy29ChestResetTimerRunning = false;
end

function candy30_reset_chest()
	candy30ChestPlayers = {};
	candy30ChestResetTimerRunning = false;
end
function candy23_chest(data)
	local player = Player:new(data.player);
	if not candy2ChestPlayers[player.name] then
		candy23:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy23ChestPlayers[player.name] = true; 
		
		if not candy23ChestResetTimerRunning then
			candy23ChestResetTimerRunning = true;
			candy23ChestResetTimer:start();
		end
	end
end

function candy24_chest(data)
	local player = Player:new(data.player);
	if not candy24ChestPlayers[player.name] then
		candy24:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy24ChestPlayers[player.name] = true; 
		
		if not candy24ChestResetTimerRunning then
			candy24ChestResetTimerRunning = true;
			candy24ChestResetTimer:start();
		end
	end
end

function candy25_chest(data)
	local player = Player:new(data.player);
	if not candy25ChestPlayers[player.name] then
		candy25:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy25ChestPlayers[player.name] = true; 
		
		if not candy25ChestResetTimerRunning then
			candy25ChestResetTimerRunning = true;
			candy25ChestResetTimer:start();
		end
	end
end

function candy26_chest(data)
	local player = Player:new(data.player);
	if not candy26ChestPlayers[player.name] then
		candy26:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy26ChestPlayers[player.name] = true; 
		
		if not candy26ChestResetTimerRunning then
			candy26ChestResetTimerRunning = true;
			candy26ChestResetTimer:start();
		end
	end
end

function candy27_chest(data)
	local player = Player:new(data.player);
	if not candy27ChestPlayers[player.name] then
		candy27:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy27ChestPlayers[player.name] = true; 
		
		if not candy27ChestResetTimerRunning then
			candy27ChestResetTimerRunning = true;
			candy27ChestResetTimer:start();
		end
	end
end

function candy28_chest(data)
	local player = Player:new(data.player);
	if not candy28ChestPlayers[player.name] then
		candy28:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy28ChestPlayers[player.name] = true; 
		
		if not candy28ChestResetTimerRunning then
			candy28ChestResetTimerRunning = true;
			candy28ChestResetTimer:start();
		end
	end
end

function candy29_chest(data)
	local player = Player:new(data.player);
	if not candy29ChestPlayers[player.name] then
		candy29:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy29ChestPlayers[player.name] = true; 
		
		if not candy29ChestResetTimerRunning then
			candy29ChestResetTimerRunning = true;
			candy29ChestResetTimer:start();
		end
	end
end

function candy30_chest(data)
	local player = Player:new(data.player);
	if not candy30ChestPlayers[player.name] then
		candy30:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy30ChestPlayers[player.name] = true; 
		
		if not candy30ChestResetTimerRunning then
			candy30ChestResetTimerRunning = true;
			candy30ChestResetTimer:start();
		end
	end
end

registerHook("INTERACT", "candy23_chest", 54, "spawn2", 106, 90, -466);
registerHook("INTERACT", "candy24_chest", 54, "spawn2", 63, 76, -518);
registerHook("INTERACT", "candy25_chest", 54, "spawn2", 60, 84, -520);
registerHook("INTERACT", "candy26_chest", 54, "spawn2", 45, 78, -478);
registerHook("INTERACT", "candy27_chest", 54, "spawn2", 45, 78, -478);
registerHook("INTERACT", "candy28_chest", 54, "spawn2", 45, 78, -478);
registerHook("INTERACT", "candy29_chest", 54, "spawn2", 45, 78, -478);
registerHook("INTERACT", "candy30_chest", 54, "spawn2", 45, 78, -478);

-----------------------
-------windmill--------
-----------------------
local windmill = Location:new(world, 61.0, 76.0, -514.0);

function knock5(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You knock rather aggresively...");
	windmill:playSound('ZOMBIE_WOOD', 1, 5);
end

function knock6(data)
        local player = Player:new(data.player);
        player:sendMessage("&7Nobody seems to be home.");
end

registerHook("REGION_ENTER", "knock5", "spawn2-h2023_knock5");
registerHook("REGION_LEAVE", "knock6", "spawn2-h2023_knock5");

function wmessage(data)
        local player = Player:new(data.player);
        player:sendMessage("&7YMan this place really seems familiar. I must have seen it somewhere.");
end

registerHook("REGION_ENTER", "wmessage", "spawn2-h2023_2_message");
