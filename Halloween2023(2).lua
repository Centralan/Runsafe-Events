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
