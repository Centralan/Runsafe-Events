---------------
--Worlds / sound--
---------------
local world = World:new('survival3');

---------------------------
----------messaging--------
---------------------------

function spawn_whisper(npc, msg, player)
	p:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

local sp = AI:new("SPENCER", "AI", "survival3");


-------------------
--Intro Book ------
-------------------


---------------
--Task 1 --
---------------
--warp hunt1
--18946,-21854

function find_trees(data)
          local player = Player:new(data.player);
                 xmas:speak( player.name .. " has completed (classifed) objective.");
                 player:addPermission("runsafe.event.trees");
  end

registerHook("REGION_ENTER", "find_trees", "survival3-hunt_1");


---------------
--Task 2 --
---------------
--warp hunt2
--18444,-17258

local beanschest = Location:new(world, 18444.0, 62.0, -17258.0);
local beanschestChestPlayers = {};
local beanschestChestResetTimer = Timer:new("beans_reset_chest", 20 * 60 * 5);
local beanschestChestResetTimerRunning = false;
local beanschestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function beans_snow(data)
	local player = Player:new(data.player);
	if not beanschestChestPlayers[player.name] then
		beanschest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed (classifed) objective.");
                player:addPermission("runsafe.event.beans");
		beanschestChestPlayers[player.name] = true; 
		
		if not beanschestChestResetTimerRunning then
			beanschestChestResetTimerRunning = true;
			beanschestChestResetTimer:start();
		end
	end
end

function beanschest_reset_chest()
	beanschestChestPlayers = {};
	beanschestChestResetTimerRunning = false;
end

registerHook("INTERACT", "beans_snow", 61, "survival3", 18446, 66, -17257);

registerHook("INTERACT", "beans_snow", 61, "survival3", 18446, 66, -17257);
