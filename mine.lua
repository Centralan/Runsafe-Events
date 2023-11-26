local world = World:new('survival3');

--------
-----AI---
----------

function mine_good(npc, msg, player)
	player:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

local smsound = Location:new(world, 19526, 11, -20704);
local ssound = Location:new(world, 19546, 72, -20790);
local minetpout = Location:new(world, 19546, 72, -20790);

--------------------------------
----Mob Control---
---------------------------------

local entityList = {};

local function SMspawnMob(position, mobType)
	local entity = Entity:new(position);
	entity:spawn(mobType);
	table.insert(entityList, entity);
end

local function purgeEntityListSM()
	for index, value in pairs(entityList) do
		entityList[index] = nil;
	end
end

function check_alive_statsSM()
	for key, value in pairs(entityList) do
		if value:isAlive() then
			return false;
		end
	end

	return true;
end

---------------------
----Toggles/Timers------
-----------------------

local sm1Done = false;
local smRoundRunning = false;
local smR1 = Timer:new("sm_end_r1", 1);

--------------------------------
----Player Control--
----------------------------------

local SMarenaPlayers = {};
local SMplayerCount = 0;


-------------------
--lobby managment--
-------------------

function mine_start(data)
        local player = Player:new(data.player);
          smsound:playSound('ENTITY_EVOCATION_ILLAGER_PREPARE_WOLOLO', 1, 0.1);
          player:sendMessage("&cI shouldn't be here.");
	 
end

  
registerHook("REGION_ENTER", "mine_start", "survival3-mine_enter");

---------------------------------------
---mob spawn points------
----------------------------------------
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19533, 10, -20694);
local smS2 = Location:new(world, 19535, 11, -20706);
local smS1 = Location:new(world, 19530, 10, -20691);
local smS1 = Location:new(world, 19539, 11, -20688);
local smS2 = Location:new(world, 19544, 11, -20693);
local smS1 = Location:new(world, 19546, 10, -20699);
local smS1 = Location:new(world, 19548, 11, -20701);
local smS1 = Location:new(world, 19537, 12, -20682);
local smS1 = Location:new(world, 19527, 12, -20681);
local smS1 = Location:new(world, 19523, 11, -20701);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19517, 10, -20688);
local smS2 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19522, 12, -20687);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19515, 10, -20696);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19509, 9, -20693);
local smS1 = Location:new(world, 19506, 9, -20696);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS2 = Location:new(world, 19500, 6, -20692);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19495, 7, -20685);
local smS2 = Location:new(world, 19491, 7, -20689);
local smS1 = Location:new(world, 19493, 5, -20693);
local smS1 = Location:new(world, 19487, 5, -20696);
local smS1 = Location:new(world, 19496, 6, -20697);
local smS2 = Location:new(world, 19491, 6, -20698);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19491, 6, -20698);
local smS1 = Location:new(world, 19481, 6, -20698);
local smS1 = Location:new(world, 19494, 6, -20704);
local smS1 = Location:new(world, 19487, 5, -20706);
local smS1 = Location:new(world, 19496, 6, -20709);
local smS2 = Location:new(world, 19499, 5, -20712);
local smS1 = Location:new(world, 19528, 12, -20702);
local smS1 = Location:new(world, 19504, 6, -20708);
local smS2 = Location:new(world, 19507, 6, -20708);
local smS1 = Location:new(world, 19507, 6, -20712);
local smS1 = Location:new(world, 19510, 6, -20710);
local smS3 = Location:new(world, 19508, 6, -20710);

---------------------------
-----------Round---------
---------------------------

-- EVOKER - Boss
-- VINDICATOR- AD
-- ILLUSIONER - Support
    
function sm_start_r1(data)
         local player = Player:new(data.player);
      if not smRoundRunning then
         SMarenaPlayers[player.name] = true;
          SMplayerCount = SMplayerCount + 1;
         smRoundRunning = true;
         smR1:startRepeating()
         SMspawnMob(smS1, "VINDICATOR");
         SMspawnMob(smS2, "VINDICATOR");
         SMspawnMob(smS3, "ILLUSIONER");
         SMspawnMob(smS4, "VINDICATOR");
         SMspawnMob(smS5, "VINDICATOR");
         SMspawnMob(smS6, "VINDICATOR");
         SMspawnMob(smS7, "ILLUSIONER");
         SMspawnMob(smS8, "VINDICATOR");
         SMspawnMob(smS9, "VINDICATOR");
         SMspawnMob(smS10, "VINDICATOR");
         SMspawnMob(smS11, "VINDICATOR");
         SMspawnMob(smS12, "VINDICATOR");
         SMspawnMob(smS13, "ILLUSIONER");
         SMspawnMob(smS14, "VINDICATOR");
         SMspawnMob(smS15, "VINDICATOR");
         SMspawnMob(smS16, "VINDICATOR");
         SMspawnMob(smS17, "VINDICATOR");
         SMspawnMob(smS18, "ILLUSIONER");
         SMspawnMob(smS19, "VINDICATOR");
         SMspawnMob(smS20, "VINDICATOR");
         SMspawnMob(smS21, "VINDICATOR");
         SMspawnMob(smS22, "VINDICATOR");
         SMspawnMob(smS23, "VINDICATOR");
         SMspawnMob(smS24, "VINDICATOR");
         SMspawnMob(smS25, "ILLUSIONER");
         SMspawnMob(smS26, "VINDICATOR");
         SMspawnMob(smS27, "VINDICATOR");
         SMspawnMob(smS28, "VINDICATOR");
         SMspawnMob(smS29, "VINDICATOR");
         SMspawnMob(smS30, "ILLUSIONER");
         SMspawnMob(smS31, "VINDICATOR");
         SMspawnMob(smS32, "VINDICATOR");
         SMspawnMob(smS33, "VINDICATOR");
         SMspawnMob(smS34, "VINDICATOR");
         SMspawnMob(smS35, "VINDICATOR");
         SMspawnMob(smS36, "VINDICATOR");
         SMspawnMob(smS37, "VINDICATOR");
         SMspawnMob(smS38, "VINDICATOR");
         SMspawnMob(smS39, "ILLUSIONER");
         SMspawnMob(smS40, "VINDICATOR");
	       SMspawnMob(smS41, "ILLUSIONER");
         SMspawnMob(smS42, "EVOKER");
      end
   end

function sm_end_r1()
        if check_alive_statsSM() then
           smR1:cancel()
           smRoundRunning = false;
           smR1Done = true;
    for playerName, value in pairs(SMarenaPlayers) do
        local player = Player:new(playerName);
	      player:teleport(mine1tp);
        end
end
end

function sm_tp()
	if smR1Done then
           smR1Done = false;
           ssound:playSound('UI_TOAST_CHALLENGE_COMPLETE', 1, 1);
           SMarenaPlayers[player.name] = nil;
           SMplayerCount = SMplayerCount - 1;
  
  end
end

function sm_remove()
	     local player = Player:new(playerName);
           SMarenaPlayers[player.name] = nil;
           SMplayerCount = SMplayerCount - 1;
  
  end

registerHook("REGION_ENTER", "sm_start_r1", "survival3-mine_enter");
registerHook("REGION_LEAVE", "sm_tp", "survival3-mine1");
registerHook("REGION_LEAVE", "sm_tp", "survival3-mine2");
registerHook("REGION_LEAVE", "sm_remove", "survival3-mine1");
registerHook("REGION_LEAVE", "sm_remove", "survival3-mine2");
    
    
