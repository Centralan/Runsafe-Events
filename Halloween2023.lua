---------------
--Worlds / sound--
---------------
local world = World:new('spawn2');
local spawnsound = Location:new(world, -81.0, 76.0, -494.0);
local knock1sound = Location:new(world, -55.0, 81.0, -537.0);
local knock2sound = Location:new(world, -22.0, 78.0, -455.0);
local grave1sound = Location:new(world, -42.0, 79.0, -501.0);
local grave2sound = Location:new(world, -21.0, 77.0, -550.0);
local grave3sound = Location:new(world, -54.0, 71.0, -456.0);
local grave4sound = Location:new(world, 180.0, 101.0, -402.0);
local grave5sound = Location:new(world, 59.0, 81.0, -436.0);
local grave6sound = Location:new(world, -54.0, 71.0, -456.0);
local tree1sound = Location:new(world, -17.0, 110.0, -534.0);
local cave1sound = Location:new(world, -38.0, 35.0, -519.0);
local spencer1sound = Location:new(world, 151.0, 136.0, -408.0);
local spencer2sound = Location:new(world, 167.0, 115.0, -418.0);

-------------
--teleports--
-------------
local enter = Location:new(world, -78.0, 75.0, -494.0);
local tp1 = Location:new(world, 26.0, 86.0, -560.0);
local tp2 = Location:new(world, -38.0, 41.0, -519.0);
local tp3 = Location:new(world, 119.0, 142.0, -384.0);
local tpend = Location:new(world, -22.0, 123.0, -627.0);

---------------------
----Entrance-----------
---------------------
function boat_enter(data)
        local player = Player:new(data.player);
        player:teleport(enter);
end

registerHook("INTERACT", "boat_enter", 143, "spawn2", -192, 71, -558);
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
local candy8 = Location:new(world, -74.0, 65.0, -515.0);
local candy9 = Location:new(world, -72.0, 65.0, -515.0);
local candy10 = Location:new(world, -70.0, 65.0, -515.0);
local cand11 = Location:new(world, -68.0, 65.0, -515.0);
local candy12 = Location:new(world, -66.0, 65.0, -515.0);
local candy13 = Location:new(world, -64.0, 65.0, -515.0);
local candy14 = Location:new(world, -62.0, 65.0, -515.0);
local candy15 = Location:new(world, -75.0, 65.0, -513.0);
local candy16 = Location:new(world, -73.0, 65.0, -513.0);
local candy17 = Location:new(world, -71.0, 65.0, -513.0);
local candy18 = Location:new(world, -69.0, 65.0, -513.0);
local candy19 = Location:new(world, -67.0, 65.0, -513.0);
local candy20 = Location:new(world, -65.0, 65.0, -513.0);
local candy21 = Location:new(world, -63.0, 65.0, -513.0);
local candy22 = Location:new(world, -61.0, 65.0, -513.0);
local bucket = Location:new(world, 154.0, 156.0, -408.0);

-----------------------
--- Candy HANDLING ----
-----------------------
local candyIChestPlayers = {};
local candyIChestResetTimer = Timer:new("candy7_reset_chest", 20 * 60 * 5);
local candyIChestResetTimerRunning = false;
local candyIChestOpen = Location:new(world, -79.0, 65.0, -511.0);

local candy1ChestPlayers = {};
local candy1ChestResetTimer = Timer:new("candy1_reset_chest", 20 * 60 * 5);
local candy1ChestResetTimerRunning = false;
local candy1ChestOpen = Location:new(world, -77.0, 65.0, -503.0);


local candy2ChestPlayers = {};
local candy2ChestResetTimer = Timer:new("candy2_reset_chest", 20 * 60 * 5);
local candy2ChestResetTimerRunning = false;
local candy2ChestOpen = Location:new(world, -79.0, 65.0, -509.0);

local candy3ChestPlayers = {};
local candy3ChestResetTimer = Timer:new("candy3_reset_chest", 20 * 60 * 5);
local candy3ChestResetTimerRunning = false;
local candy3ChestOpen = Location:new(world, -77.0, 65.0, -507.0);

local candy4ChestPlayers = {};
local candy4ChestResetTimer = Timer:new("candy4_reset_chest", 20 * 60 * 5);
local candy4ChestResetTimerRunning = false;
local candy4ChestOpen = Location:new(world, -77.0, 65.0, -509.0);

local candy5ChestPlayers = {};
local candy5ChestResetTimer = Timer:new("candy5_reset_chest", 20 * 60 * 5);
local candy5ChestResetTimerRunning = false;
local candy5ChestOpen = Location:new(world, -77.0, 65.0, -511.0);

local candy6ChestPlayers = {};
local candy6ChestResetTimer = Timer:new("candy6_reset_chest", 20 * 60 * 5);
local candy6ChestResetTimerRunning = false;
local candy6ChestOpen = Location:new(world, -77.0, 65.0, -513.0);

local candy7ChestPlayers = {};
local candy7ChestResetTimer = Timer:new("candy7_reset_chest", 20 * 60 * 5);
local candy7ChestResetTimerRunning = false;
local candy7ChestOpen = Location:new(world, -77.0, 65.0, -515.0);

local candy8ChestPlayers = {};
local candy8ChestResetTimer = Timer:new("candy8_reset_chest", 20 * 60 * 5);
local candy8ChestResetTimerRunning = false;
local candy8ChestOpen = Location:new(world, -74.0, 65.0, -515.0);

local candy9ChestPlayers = {};
local candy9ChestResetTimer = Timer:new("candy9_reset_chest", 20 * 60 * 5);
local candy9ChestResetTimerRunning = false;
local candy9ChestOpen = Location:new(world, -72.0, 65.0, -515.0);

local candy10ChestPlayers = {};
local candy10ChestResetTimer = Timer:new("candy10_reset_chest", 20 * 60 * 5);
local candy10ChestResetTimerRunning = false;
local candy10ChestOpen = Location:new(world, -70.0, 65.0, -515.0);

local candy11ChestPlayers = {};
local candy11ChestResetTimer = Timer:new("candy11_reset_chest", 20 * 60 * 5);
local candy11ChestResetTimerRunning = false;
local candy11ChestOpen = Location:new(world, -68.0, 65.0, -515.0);

local candy12ChestPlayers = {};
local candy12ChestResetTimer = Timer:new("candy12_reset_chest", 20 * 60 * 5);
local candy12ChestResetTimerRunning = false;
local candy12ChestOpen = Location:new(world, -66.0, 65.0, -515.0);

local candy13ChestPlayers = {};
local candy13ChestResetTimer = Timer:new("candy13_reset_chest", 20 * 60 * 5);
local candy13ChestResetTimerRunning = false;
local candy13ChestOpen = Location:new(world, -64.0, 65.0, -515.0);

local candy14ChestPlayers = {};
local candy14ChestResetTimer = Timer:new("candy14_reset_chest", 20 * 60 * 5);
local candy14ChestResetTimerRunning = false;
local candy14ChestOpen = Location:new(world, -62.0, 65.0, -515.0);

local candy15ChestPlayers = {};
local candy15ChestResetTimer = Timer:new("candy5_reset_chest", 20 * 60 * 5);
local candy15ChestResetTimerRunning = false;
local candy15ChestOpen = Location:new(world, -75.0, 65.0, -513.0);

local candy16ChestPlayers = {};
local candy16ChestResetTimer = Timer:new("candy16_reset_chest", 20 * 60 * 5);
local candy16ChestResetTimerRunning = false;
local candy16ChestOpen = Location:new(world, -73.0, 65.0, -513.0);

local candy17ChestPlayers = {};
local candy17ChestResetTimer = Timer:new("candy17_reset_chest", 20 * 60 * 5);
local candy17ChestResetTimerRunning = false;
local candy17ChestOpen = Location:new(world, -71.0, 65.0, -513.0);

local candy18ChestPlayers = {};
local candy18ChestResetTimer = Timer:new("candy18_reset_chest", 20 * 60 * 5);
local candy18ChestResetTimerRunning = false;
local candy18ChestOpen = Location:new(world, -69.0, 65.0, -513.0);

local candy19ChestPlayers = {};
local candy19ChestResetTimer = Timer:new("candy19_reset_chest", 20 * 60 * 5);
local candy19ChestResetTimerRunning = false;
local candy19ChestOpen = Location:new(world, -67.0, 65.0, -513.0);

local candy20ChestPlayers = {};
local candy20ChestResetTimer = Timer:new("candy20_reset_chest", 20 * 60 * 5);
local candy20ChestResetTimerRunning = false;
local candy20ChestOpen = Location:new(world, -65.0, 65.0, -513.0);

local candy21ChestPlayers = {};
local candy21ChestResetTimer = Timer:new("candy21_reset_chest", 20 * 60 * 5);
local candy21ChestResetTimerRunning = false;
local candy21ChestOpen = Location:new(world, -63.0, 65.0, -513.0);

local candy22ChestPlayers = {};
local candy22ChestResetTimer = Timer:new("candy22_reset_chest", 20 * 60 * 5);
local candy22ChestResetTimerRunning = false;
local candy22ChestOpen = Location:new(world, -61.0, 65.0, -513.0);;

function candyI_reset_chest()
	candyIChestPlayers = {};
	candyIChestResetTimerRunning = false;
end

function candy1_reset_chest()
	candy1ChestPlayers = {};
	candy1ChestResetTimerRunning = false;
end

function candy2_reset_chest()
	candy2ChestPlayers = {};
	candy2ChestResetTimerRunning = false;
end

function candy3_reset_chest()
	candy3ChestPlayers = {};
	candy3ChestResetTimerRunning = false;
end

function candy4_reset_chest()
	candy4ChestPlayers = {};
	candy4ChestResetTimerRunning = false;
end

function candy5_reset_chest()
	candy5ChestPlayers = {};
	candyIChestResetTimerRunning = false;
end

function candy6_reset_chest()
	candy6ChestPlayers = {};
	candy6ChestResetTimerRunning = false;
end

function candy7_reset_chest()
	candy7ChestPlayers = {};
	candy7ChestResetTimerRunning = false;
end

function candy8_reset_chest()
	candy8ChestPlayers = {};
	candy8ChestResetTimerRunning = false;
end

function candy9_reset_chest()
	candy9ChestPlayers = {};
	candy9ChestResetTimerRunning = false;
end

function candy10_reset_chest()
	candy10ChestPlayers = {};
	candy10ChestResetTimerRunning = false;
end

function candy11_reset_chest()
	candy11ChestPlayers = {};
	candy11ChestResetTimerRunning = false;
end

function candy12_reset_chest()
	candy12ChestPlayers = {};
	candy12ChestResetTimerRunning = false;
end

function candy13_reset_chest()
	candy13ChestPlayers = {};
	candy13ChestResetTimerRunning = false;
end

function candy14_reset_chest()
	candy14ChestPlayers = {};
	candy14ChestResetTimerRunning = false;
end

function candy15_reset_chest()
	candy15ChestPlayers = {};
	candy15ChestResetTimerRunning = false;
end

function candy16_reset_chest()
	candy16ChestPlayers = {};
	candy16ChestResetTimerRunning = false;
end

function candy17_reset_chest()
	candy18ChestPlayers = {};
	candy19ChestResetTimerRunning = false;
end

function candy18_reset_chest()
	candy18ChestPlayers = {};
	candy18ChestResetTimerRunning = false;
end

function candy19_reset_chest()
	candy19ChestPlayers = {};
	candy19ChestResetTimerRunning = false;
end

function candy20_reset_chest()
	candy20ChestPlayers = {};
	candy20ChestResetTimerRunning = false;
end

function candy21_reset_chest()
	candy21ChestPlayers = {};
	candy21ChestResetTimerRunning = false;
end

function candy22_reset_chest()
	candy22ChestPlayers = {};
	candy22ChestResetTimerRunning = false;
end


function candyI_chest(data)
        local player = Player:new(data.player);
        if not candyIChestPlayers[player.name] then
                candyI:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage('&7The chest smells sweet almost like candy.');
                player:sendMessage('&7I wonder if I can find more.');
                spawnsound:playSound('EAT', 1, 0.5);
                candyIChestPlayers[player.name] = true;
	if candyIChestPlayers[player.name] then
	   player:sendMessage('&7The chest seems empty.');
            player:closeInventory();
                if not candyIChestResetTimerRunning then
                        candyIChestResetTimerRunning = true;
                        candyIChestResetTimer:start();
                end
        end
end


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

function candy8_chest(data)
	local player = Player:new(data.player);
	if not candy8ChestPlayers[player.name] then
		candy8:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy8ChestPlayers[player.name] = true; 
		
		if not candy8ChestResetTimerRunning then
			candy8ChestResetTimerRunning = true;
			candy8ChestResetTimer:start();
		end
	end
end

function candy9_chest(data)
	local player = Player:new(data.player);
	if not candy9ChestPlayers[player.name] then
		candy9:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy9ChestPlayers[player.name] = true; 
		
		if not candy9ChestResetTimerRunning then
			candy9ChestResetTimerRunning = true;
			candy9ChestResetTimer:start();
		end
	end
end

function candy10_chest(data)
	local player = Player:new(data.player);
	if not candy10ChestPlayers[player.name] then
		candy10:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy10ChestPlayers[player.name] = true; 
		
		if not candy10ChestResetTimerRunning then
			candy10ChestResetTimerRunning = true;
			candy10ChestResetTimer:start();
		end
	end
end

function candy11_chest(data)
	local player = Player:new(data.player);
	if not candy11ChestPlayers[player.name] then
		candy11:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy11ChestPlayers[player.name] = true; 
		
		if not candy11ChestResetTimerRunning then
			candy11ChestResetTimerRunning = true;
			candy11ChestResetTimer:start();
		end
	end
end

function candy12_chest(data)
	local player = Player:new(data.player);
	if not candy12ChestPlayers[player.name] then
		candy12:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy12ChestPlayers[player.name] = true; 
		
		if not candy12ChestResetTimerRunning then
			candy12ChestResetTimerRunning = true;
			candy12ChestResetTimer:start();
		end
	end
end

function candy13_chest(data)
	local player = Player:new(data.player);
	if not candy13ChestPlayers[player.name] then
		candy13:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy13ChestPlayers[player.name] = true; 
		
		if not candy13ChestResetTimerRunning then
			candy13ChestResetTimerRunning = true;
			candy13ChestResetTimer:start();
		end
	end
end

function candy14_chest(data)
	local player = Player:new(data.player);
	if not candy14ChestPlayers[player.name] then
		candy14:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy14ChestPlayers[player.name] = true; 
		
		if not candy14ChestResetTimerRunning then
			candy14ChestResetTimerRunning = true;
			candy14ChestResetTimer:start();
		end
	end
end

function candy15_chest(data)
	local player = Player:new(data.player);
	if not candy15ChestPlayers[player.name] then
		candy15:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy15ChestPlayers[player.name] = true; 
		
		if not candy15ChestResetTimerRunning then
			candy15ChestResetTimerRunning = true;
			candy15ChestResetTimer:start();
		end
	end
end

function candy16_chest(data)
	local player = Player:new(data.player);
	if not candy16ChestPlayers[player.name] then
		candy16:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy16ChestPlayers[player.name] = true; 
		
		if not candy16ChestResetTimerRunning then
			candy16ChestResetTimerRunning = true;
			candy16ChestResetTimer:start();
		end
	end
end

function candy17_chest(data)
	local player = Player:new(data.player);
	if not candy17ChestPlayers[player.name] then
		candy17:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy17ChestPlayers[player.name] = true; 
		
		if not candy17ChestResetTimerRunning then
			candy17ChestResetTimerRunning = true;
			candy17ChestResetTimer:start();
		end
	end
end

function candy18_chest(data)
	local player = Player:new(data.player);
	if not candy18ChestPlayers[player.name] then
		candy18:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy18ChestPlayers[player.name] = true; 
		
		if not candy18ChestResetTimerRunning then
			candy18ChestResetTimerRunning = true;
			candy18ChestResetTimer:start();
		end
	end
end

function candy19_chest(data)
	local player = Player:new(data.player);
	if not candy19ChestPlayers[player.name] then
		candy19:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy19ChestPlayers[player.name] = true; 
		
		if not candy19ChestResetTimerRunning then
			candy19ChestResetTimerRunning = true;
			candy19ChestResetTimer:start();
		end
	end
end

function candy20_chest(data)
	local player = Player:new(data.player);
	if not candy20ChestPlayers[player.name] then
		candy20:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy20ChestPlayers[player.name] = true; 
		
		if not candy20ChestResetTimerRunning then
			candy20ChestResetTimerRunning = true;
			candy20ChestResetTimer:start();
		end
	end
end

function candy21_chest(data)
	local player = Player:new(data.player);
	if not candy21ChestPlayers[player.name] then
		candy21:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy21ChestPlayers[player.name] = true; 
		
		if not candy21ChestResetTimerRunning then
			candy21ChestResetTimerRunning = true;
			candy21ChestResetTimer:start();
		end
	end
end

function candy22_chest(data)
	local player = Player:new(data.player);
	if not candy22ChestPlayers[player.name] then
		candy22:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&7The chest smells sweet almost like candy.');
		spawnsound:playSound('EAT', 1, 0.5);
		candy22ChestPlayers[player.name] = true; 
		
		if not candy22ChestResetTimerRunning then
			candy22ChestResetTimerRunning = true;
			candy22ChestResetTimer:start();
		end
	end
end
registerHook("INTERACT", "candyI_chest", 54, "spawn2", -59, 75, -498);
registerHook("INTERACT", "candy1_chest", 54, "spawn2", -30, 82, -498);
registerHook("INTERACT", "candy2_chest", 54, "spawn2", -92, 79, -532);
registerHook("INTERACT", "candy3_chest", 54, "spawn2", -97, 67, -468);
registerHook("INTERACT", "candy4_chest", 54, "spawn2", -43, 82, -439);
registerHook("INTERACT", "candy5_chest", 54, "spawn2", -11, 94, -489);
registerHook("INTERACT", "candy6_chest", 54, "spawn2", -60, 81, -537);
registerHook("INTERACT", "candy7_chest", 54, "spawn2", -210, 82, -456);
registerHook("INTERACT", "candy8_chest", 54, "spawn2", -109, 75, -442);
registerHook("INTERACT", "candy9_chest", 54, "spawn2", -105, 80, -512);
registerHook("INTERACT", "candy10_chest", 54, "spawn2", -11, 94, -489);
registerHook("INTERACT", "candy11_chest", 54, "spawn2", -64, 85, -537);
registerHook("INTERACT", "candy12_chest", 54, "spawn2", -20, 79, -459);
registerHook("INTERACT", "candy13_chest", 54, "spawn2", -96, 75, -439);
registerHook("INTERACT", "candy14_chest", 54, "spawn2", -106, 82, -544);
registerHook("INTERACT", "candy15_chest", 54, "spawn2", 157, 142, -409);
registerHook("INTERACT", "candy16_chest", 54, "spawn2", 149, 132, -407);
registerHook("INTERACT", "candy17_chest", 54, "spawn2", 73, 81, -442);
registerHook("INTERACT", "candy18_chest", 54, "spawn2", 46, 81, -450);
registerHook("INTERACT", "candy19_chest", 54, "spawn2", 37, 75, -487);
registerHook("INTERACT", "candy20_chest", 54, "spawn2", 109, 120, -471);
registerHook("INTERACT", "candy21_chest", 54, "spawn2", 67, 79, -490);
registerHook("INTERACT", "candy22_chest", 54, "spawn2", 45, 78, -478);



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

local spawn1ChestPlayers = {};
local spawn1ChestResetTimer = Timer:new("spawn1_reset_chest", 20 * 60 * 5);
local spawn1ChestResetTimerRunning = false;
local spawn1ChestOpen = Location:new(world, -61.0, 65.0, -513.0);

function welcome(data)
        local player = Player:new(data.player);
        if not spawn1ChestPlayers[player.name] then
                spawn1:cloneChestToPlayer(player.name);
                player:closeInventory();
                player:sendMessage("&7A cold wind gives you a chill, you trip over some old bones.");
                spawnsound:playSound('SKELETON_HURT', 1, 0.1);
		player:sendEvent("achievement.halloween2023");
                spawn1ChestPlayers[player.name] = true;

                if not spawn1ChestResetTimerRunning then
                        spawn1IChestResetTimerRunning = true;
                        spawn1ChestResetTimer:start();
                end
        end
end
	
function welcome2(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You hear a wolf in the distance, man it sounds hungry.");
	player:sendMessage("&7Something up ahead make a noise.");
	spawnsound:playSound('WOLF_HOWL', 1, 0.8);
end

registerHook("REGION_LEAVE", "welcome", "spawn2-h2023_enter");
registerHook("REGION_ENTER", "welcome2", "spawn2-h2023_enter2");

-------------------
-----Grave Loot---
-------------------

local grave1ChestPlayers = {};
local grave1ChestResetTimer = Timer:new("grave1_reset_chest", 20 * 60 * 5);
local grave1ChestResetTimerRunning = false;

function grave1(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	graveloot:cloneChestToPlayer(player.name);
	grave1sound:playSound('SKELETON_IDLE', 1, 0.1);
	grave1ChestPlayers[player.name] = true;
	player:addPermission("runsafe.warp.use.grave1");
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave1_reset_chest()
	grave1ChestPlayers = {};
	grave1ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave1", "spawn2-grave1");

local grave2ChestPlayers = {};
local grave2ChestResetTimer = Timer:new("grave2_reset_chest", 20 * 60 * 5);
local grave2ChestResetTimerRunning = false;

function grave2(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	graveloot2:cloneChestToPlayer(player.name);
	grave2sound:playSound('SKELETON_IDLE', 1, 0.1);
	grave2ChestPlayers[player.name] = true; 
	player:addPermission("runsafe.warp.use.grave2");
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave2_reset_chest()
	grave2ChestPlayers = {};
	grave2ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave2", "spawn2-grave2");

local grave3ChestPlayers = {};
local grave3ChestResetTimer = Timer:new("grave3_reset_chest", 20 * 60 * 5);
local grave3ChestResetTimerRunning = false;

function grave3(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	graveloot3:cloneChestToPlayer(player.name);
	grave3sound:playSound('SKELETON_IDLE', 1, 0.1);
	grave3ChestPlayers[player.name] = true;
	player:addPermission("runsafe.warp.use.grave3");
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave3_reset_chest()
	grave3ChestPlayers = {};
	grave3ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave3", "spawn2-grave3");

local grave4ChestPlayers = {};
local grave4ChestResetTimer = Timer:new("grave4_reset_chest", 20 * 60 * 5);
local grave4ChestResetTimerRunning = false;

function grave4(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	graveloot4:cloneChestToPlayer(player.name);
	grave4sound:playSound('SKELETON_IDLE', 1, 0.1);
	grave4ChestPlayers[player.name] = true;
	player:addPermission("runsafe.warp.use.grave4");
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave4_reset_chest()
	grave4ChestPlayers = {};
	grave4ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave4", "spawn2-grave4");

local grave5ChestPlayers = {};
local grave5ChestResetTimer = Timer:new("grave5_reset_chest", 20 * 60 * 5);
local grave5ChestResetTimerRunning = false;

function grave5(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	graveloot5:cloneChestToPlayer(player.name);
	grave5sound:playSound('SKELETON_IDLE', 1, 0.1);
	grave5ChestPlayers[player.name] = true;
	player:addPermission("runsafe.warp.use.grave5");
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave5_reset_chest()
	grave5ChestPlayers = {};
	grave5ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave5", "spawn2-grave5");

local grave5ChestPlayers = {};
local grave5ChestResetTimer = Timer:new("grave6_reset_chest", 20 * 60 * 5);
local grave5ChestResetTimerRunning = false;

function grave6(data)
        local player = Player:new(data.player);
	if player:hasItem("bone", 1) then
		player:removeItem("bone", 1);
        player:sendMessage("&7The grave reacts to your presence.");
	graveloot6:cloneChestToPlayer(player.name);
	grave6sound:playSound('SKELETON_IDLE', 1, 0.1);
	grave6ChestPlayers[player.name] = true;
	player:addPermission("runsafe.warp.use.grave6");
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave6_reset_chest()
	grave6ChestPlayers = {};
	grave6ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave6", "spawn2-grave6");
	
function grave_ach(data)
        grave_ach2({world:getPlayers()});
end

function grave_ach2(players)
        local player = Player:new(playerName);
        if players:hasPermission("runsafe.warp.use.grave1") then
        if player:hasPermission("runsafe.warp.use.grave2") then
        if player:hasPermission("runsafe.warp.use.grave3") then
        if player:hasPermission("runsafe.warp.use.grave4") then
        if player:hasPermission("runsafe.warp.use.grave5") then
        if player:hasPermission("runsafe.warp.use.grave6") then
        player:sendEvent("achievement.topexcavator");
end
end
end
end
end
end
end

registerHook("REGION_LEAVE", "grave_ach2", "spawn2-h2023_main");
registerHook("REGION_ENTER", "grave_ach2", "spawn2-h2023_main");
--registerHook("BLOCK_GAINS_CURRENT", "grave_ach", "spawn2", -77.0, 65.0, -518.0);



-------------------
-----Step 2 house---
-------------------
function knock1(data)
        local player = Player:new(data.player);
        player:sendMessage("&7You knock rather aggresively...");
	knock1:playSound('ZOMBIE_WOOD', 1, 5);
	knock1:playSound('ZOMBIE_WOOD', 1, 5);
	knock2:playSound('ZOMBIE_WOOD', 1, 5);
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
	tree1:playSound('VILLAGER_HAGGLE', 1, 0.5);
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
	tree1:playSound('LAVA', 10, 0.2);
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
        cave1:playSound('PISTON_EXTEND', 10, 0.5);
end

function piston_retract(data)
        local player = Player:new(data.player);
        cave1:playSound('PISTON_RETRACT', 10, 0.5);
end

function enderdragon_growl(data)
        local player = Player:new(data.player);
       cave1:playSound('ENDERDRAGON_GROWL', 10, 0.5);
end

function horse_skeleton_death(data)
        local player = Player:new(data.player);
        cave1:playSound('HORSE_SKELETON_DEATH', 10, 0.5);
end

function horse_skeleton_idle(data)
        local player = Player:new(data.player);
        cave1:playSound('HORSE_SKELETON_IDLE', 10, 0.5);
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
        cave1sound:playSound('EAT', 10, 0.5);
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

----------------------------------
-----Step 4 / (Spencer The Villager)
----------------------------------
function villager_enter(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Spencer&f) What are you doing get out of my house!! ");
        player:sendMessage("(&6Spencer&f) I don't have the candy you seek now scram!");
        player:sendMessage("&7You hear some weird noises coming from the basement....");
	spencer1sound:playSound('VILLAGER_HAGGLE', 1, 1.5);
end

registerHook("REGION_ENTER", "villager_enter", "spawn2-h2023_vil_talk");

function house_enderman(data)
        local player = Player:new(data.player);
	spencer1:playSound('ENDERMAN_SCREAM', 1, 0.5);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
end

registerHook("INTERACT", "house_enderman", 143, "spawn2", 155, 134, -412);
registerHook("INTERACT", "house_enderman", 143, "spawn2", 149, 134, -407);

function house_donkey(data)
        local player = Player:new(data.player);
	spencer1sound:playSound('DONKEY_DEATH', 1, 2.6);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
end

registerHook("INTERACT", "house_donkey", 143, "spawn2", 155, 134, -408);
registerHook("INTERACT", "house_donkey", 143, "spawn2", 147, 134, -410);

function house_furnace(data)
        local player = Player:new(data.player);
	spencer1sound:playSound('GHAST_SCREAM', 1, 0.5);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
end

registerHook("INTERACT", "house_furnace", 61, "spawn2", 148, 137, -405);
registerHook("INTERACT", "house_furnace", 61, "spawn2", 148, 138, -405);


function house_zombie(data)
        local player = Player:new(data.player);
	spencer1:playSound('HORSE_ZOMBIE_DEATH', 1, 0.7);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
end

registerHook("INTERACT", "house_zombie", 143, "spawn2", 148, 140, -411);
registerHook("INTERACT", "house_zombie", 143, "spawn2", 152, 140, -413);

function cave_blind(data)
        local player = Player:new(data.player);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 1600);
        if player:hasItem("335", 1) then
        player:removeItem("335", 1)
        bucket:cloneChestToPlayer(player.name);
	player:sendMessage("(&6Spencer&f) I thought of that you cheater! Keep your bucket.");
end
end

function cave_blind_remove(data)
        local player = Player:new(data.player);
        EventEngine.player.removePotionEffects(player.name, 'BLINDNESS');
end


registerHook("REGION_ENTER", "cave_blind", "spawn2-h2023_cave_blind");
registerHook("REGION_ENTER", "cave_blind_remove", "spawn2-h2023_blind_remove");

function cave_blind_remove2(data)
        local player = Player:new(data.player);
        EventEngine.player.removePotionEffects(player.name, 'BLINDNESS');
end

registerHook("REGION_LEAVE", "cave_blind_remove2", "spawn2-h2023_cave_main");

function villager_enter(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Spencer&f) Good luck getting out you filthy peasant.");
        player:sendMessage("&7Spencer must have placed a curse on me.");
	spencer2sound:playSound('VILLAGER_HAGGLE', 1, 1.5);
end

registerHook("REGION_ENTER", "villager_enter", "spawn2-h2023_cave_message");

----------------------------------
-----Step 5 / Maze
----------------------------------
local mazesound = Location:new(world, 61.0, 85.0, -446.0);
local maze1 = Location:new(world, 78.0, 81.0, -447.0);
local maze2 = Location:new(world, 44.0, 81.0, -447.0);

function maze_reset1(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) That chest was empty tree again.");
	mazesound:playSound('ANVIL_LAND', 1, 0.5);
        player:teleport(maze1)
end

function maze_reset2(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) That chest was empty tree again.");
	mazesound:playSound('ANVIL_LAND', 1, 0.5);
        player:teleport(maze2)
end

registerHook("INTERACT", "maze_reset1", 54, "spawn2", 63, 81, -445);
registerHook("INTERACT", "maze_reset1", 54, "spawn2", 66, 81, -445);
registerHook("INTERACT", "maze_reset1", 54, "spawn2", 72, 81, -448);
registerHook("INTERACT", "maze_reset1", 54, "spawn2", 69, 81, -452);
registerHook("INTERACT", "maze_reset1", 54, "spawn2", 71, 81, -452);
registerHook("INTERACT", "maze_reset2", 54, "spawn2", 61, 81, -443);
registerHook("INTERACT", "maze_reset2", 54, "spawn2", 54, 81, -441);
registerHook("INTERACT", "maze_reset2", 54, "spawn2", 48, 81, -443);
registerHook("INTERACT", "maze_reset2", 54, "spawn2", 51, 81, -452);
registerHook("INTERACT", "maze_reset2", 54, "spawn2", 52, 81, -453);
registerHook("INTERACT", "maze_reset2", 54, "spawn2", 59, 81, -454);

----------------------------------
-----Step 6 / Toweer
----------------------------------
local tower1 = Location:new(world, 108.0, 80.0, -445.0);
local keychest = Location:new(world, 106.0, 133.0, -471.0);


function tower_door(data)
        local player = Player:new(data.player);
        player:sendMessage("&7 This tower seems empty, I wonder what I can find.");
	tower1:playSound('DOOR_OPEN', 1, 0.5);
end

registerHook("INTERACT", "tower_door", 431, "spawn2", 108, 80, -475);

local keychestChestPlayers = {};
local keychestChestResetTimer = Timer:new("keychest_reset_chest", 20 * 60 * 5);
local keychestChestResetTimerRunning = false;
local keychestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function tower_redstone(data)
	local player = Player:new(data.player);
	if not keychestChestPlayers[player.name] then
		keychest:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage("&7 Something fell off the top of the anvil.");
		spawnsound:playSound('WOOD_CLICK', 3, 0.5);
		keychestChestPlayers[player.name] = true; 
		
		if not keychestChestResetTimerRunning then
			keychestChestResetTimerRunning = true;
			keychestChestResetTimer:start();
		end
	end
end

function keychest_reset_chest()
	keychestChestPlayers = {};
	keychestChestResetTimerRunning = false;
end

registerHook("INTERACT", "tower_redstone", 356, "spawn2", 108, 90, -470);

----------------------------------
-------Step 7 / Castle
------------------------------------
local gatesound = Location:new(world, 99.0, 89.0, -520.0);
local gateY = Location:new(world, 100.0, 86.0, -530.0);
local gateN = Location:new(world, 99.0, 89.0, -520.0);

function castle_gate(data)
        local player = Player:new(data.player);
                if player:hasItem("369", 1) then
                if player:hasItem("91", 1) then
                player:removeItem("369", 1)
                player:removeItem("91", 1)
        player:sendMessage("(&6???&f) Ah you again");
        player:sendMessage("(&6???&f) I wish you the best of luck.");
        gatesound:playSound('VILLAGER_HAGGLE', 5, 0.5);
        player:teleport(gateY)
end
end
end

function castle_gate2(data)
        local player = Player:new(data.player);
           if not  player:hasItem("369", 1) then
           if not player:hasItem("91", 1) then
           player:sendMessage("&7 The tree seems to have no reaction, maybe I'm missing something.");
        player:teleport(gateN)
end
end
end
registerHook("REGION_ENTER", "castle_gate", "spawn2-h2023_gate");
registerHook("REGION_ENTER", "castle_gate2", "spawn2-h2023_gate2");

---------------------------------
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
registerHook("INTERACT", "candy26_chest", 54, "spawn2", 75, 81, -490);
registerHook("INTERACT", "candy27_chest", 54, "spawn2", 104, 75, -589);
registerHook("INTERACT", "candy28_chest", 54, "spawn2", 92, 73, -684);
registerHook("INTERACT", "candy29_chest", 54, "spawn2", 135, 73, -699);
registerHook("INTERACT", "candy30_chest", 54, "spawn2", 105, 84, -667);

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

-----------------------
-------tunnel--------
-----------------------
local t1 = Location:new(world, 100.0, 81.0, -542.0);
local t2 = Location:new(world, 100.0, 74.0, -575.0);
local t3 = Location:new(world, 100.0, 73.0, -604.0);
local t4 = Location:new(world, 100.0, 70.0, -632.0);
local t5s = Location:new(world, 100.0, 70.0, -685.0);
local t5t = Location:new(world, 100.0, 73.0, -665.0);

function soon1(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) I shall see you soon...");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 10);
	EventEngine.player.addPotionEffect(player.name, 'SLOW', 10, 4);
	t1:playSound('VILLAGER_HAGGLE', 1, 1.5);
end

registerHook("REGION_ENTER", "soon1", "spawn2-h2023_slow1");

function soon2(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) You have caused my kind to much grief over the years.");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 10);
	EventEngine.player.addPotionEffect(player.name, 'SLOW', 10, 4);
	t2:playSound('VILLAGER_HAGGLE', 1, 1.5);
end

registerHook("REGION_ENTER", "soon2", "spawn2-h2023_t2");

function soon3(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) You've stolen so much, and now you found our candy.");
	player:sendMessage("(&6???&f) At what point is enough for your kind?");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 10);
	EventEngine.player.addPotionEffect(player.name, 'SLOW', 10, 4);
	t3:playSound('VILLAGER_HAGGLE', 1, 1.5);
end

registerHook("REGION_ENTER", "soon3", "spawn2-h2023_t3");

function soon4(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) This ends here...");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 10);
	EventEngine.player.addPotionEffect(player.name, 'SLOW', 10, 4);
	t4:playSound('VILLAGER_HAGGLE', 1, 1.5);
end

registerHook("REGION_ENTER", "soon4", "spawn2-h2023_t4");

function soon5(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6???&f) Try and find me...");
	player:sendMessage("(&6???&f) You'll be free to leave once you do.");
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 10);
	EventEngine.player.addPotionEffect(player.name, 'SLOW', 10, 4);
	t5s:playSound('VILLAGER_HAGGLE', 1, 1.5);
	player:teleport(t5t)
end

registerHook("REGION_ENTER", "soon5", "spawn2-h2023_t5");

-----------------------
-------villagers--------
-----------------------

local tproof = Location:new(world, 100.0, 104.0, -675.0);

function v1(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) They got the keys we should hide.");
end

registerHook("REGION_ENTER", "soon4", "spawn2-h2023_v1");

function v2(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) Please don't eat the cake.");
end

registerHook("REGION_ENTER", "v2", "spawn2-h2023_v2");

function v3(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) This stock seems to be doing well.");
end

registerHook("REGION_ENTER", "v3", "spawn2-h2023_v3");

function v4(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) Rumor has it they nuke any village they find.");
end

registerHook("REGION_ENTER", "v4", "spawn2-h2023_v4");

function v5(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) Please don't take the loot we have.");
end

registerHook("REGION_ENTER", "v5", "spawn2-h2023_v5");

function v6(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) I bet they're looking for &6???&f.");
end

registerHook("REGION_ENTER", "v6", "spawn2-h2023_v6");

function v7(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) DO YOU MIND???");
end

registerHook("REGION_ENTER", "v7", "spawn2-h2023_v7");

function v8(data)
        local player = Player:new(data.player);
        player:sendMessage("(&6Villagers&f) Hopefully they don't get to the roof");
end

registerHook("REGION_ENTER", "v8", "spawn2-h2023_v8");

---------------
---fight-------
---------------

local gear = Location:new(world, 270.0, 155.0, -566.0);
local gear2 = Location:new(world, 270.0, 155.0, -566.0);
local roofE = Location:new(world, -78.0, 75.0, -494.0);
local roofD = Location:new(world, 100.0, 85.0, -668.0);

local RarenaPlayers = {};
local RplayerCount = 0;

local entityList = {};

local function RspawnMob(position, mobType)
        local entity = Entity:new(position);
        entity:spawn(mobType);
        table.insert(entityList, entity);
end

local function purgeEntityListR()
        for index, value in pairs(entityList) do
                entityList[index] = nil;
        end
end

function check_alive_statsR()
        for key, value in pairs(entityList) do
                if value:isAlive() then
                        return false;
                end
        end

        return true;
end

local RRoundRunning = false;
local RLRoundRunning = false;
local RR1 = Timer:new("r_end_r1", 1);

local rS1 = Location:new(world, 265.0, 134.0, -555.0);
local rS2 = Location:new(world, 286.0, 134.0, -555.0);
local rS3 = Location:new(world, 275.0, 134.0, -559.0);
local rS4 = Location:new(world, 279.0, 134.0, -461.0);
local rS5 = Location:new(world, 275.0, 134.0, -570.0);
local rS6 = Location:new(world, 280.0, 134.0, -570.0);
local rS7 = Location:new(world, 294.0, 134.0, -573.0);
local rS8 = Location:new(world, 305.0, 134.0, -573.0);
local rS9 = Location:new(world, 260.0, 134.0, -573.0);
local rS10 = Location:new(world, 246.0, 134.0, -573.0);
local rS11 = Location:new(world, 266.0, 141.0, -555.0);
local rS12 = Location:new(world, 283.0, 141.0, -555.0);
local rS13 = Location:new(world, 277.0, 140.0, -558.0);

function vtp(data)
        if RplayerCount < 1 then
        local player = Player:new(data.player);
        player:sendMessage("(&6Dexter&f) ah you finally made it. This is the end for you");
        player:teleport(tproof)
        tproof:playSound('VILLAGER_HAGGLE', 3, 1.5);
        EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 4);
        EventEngine.player.addPotionEffect(player.name, 'SLOW', 10, 4);
        gear:cloneChestToPlayer(player.name);
        RarenaPlayers[player.name] = true;
        RplayerCount = PplayerCount + 1;
else
local player = Player:new(data.player);
          player:sendMessage("&cSomeone is already on the roof, try again once their done", player);
          player:teleport(roofD);
end
end

registerHook("REGION_ENTER", "vtp", "spawn2-h2023_vtp");



function r_start_r1(data)
	if RplayerCount < 1 then
        for playerName, value in pairs(ParenaPlayers) do
         local player = Player:new(data.player);
      if not pRoundRunning then
         pRoundRunning = true;
         pR1:startRepeating()
        player:sendMessage("&7 Lets end this.");
        RspawnMob(rS1, "WITCH");
        RspawnMob(rS7, "WITCH");
        RspawnMob(rS2, "SLIME");
        RspawnMob(rS4, "SLIME");
        RspawnMob(rS5, "ZOMBIE");
        RspawnMob(rS3, "ZOMBIE");
        RspawnMob(rS6, "SLIME");
        RspawnMob(rS8, "SLIME");
	RspawnMob(rS9, "ZOMBIE");
	RspawnMob(rS10, "ZOMBIE");
	RspawnMob(rs11, "BLAZE");
	RspawnMob(rS12, "BLAZE");
	RspawnMob(rS13, "VILLAGER");
else
         local player = Player:new(data.player);
          player:sendMessage("&cSomeone is already on the roof, try again once their done", player);
end
end
end

function r_end_r1()
        if check_alive_statsR() then
           rR1:cancel()
           rRoundRunning = false;
for playerName, value in pairs(RarenaPlayers) do
local player = Player:new(playerName);
           player:teleport(roofE);
         player:sendMessage("&7Dexter and his army has fallen for now...");
           pumpR:cloneChestToPlayer(player.name);
	   player:sendEvent("achievement.masterspook");
        end
        end
end

registerHook("REGION_ENTER", "r_start_r1", "spawn2-h2023_roof");

function roof_exit(data)
        local player = Player:new(data.player);
          RarenaPlayers[player.name] = nil;
          RplayerCount = RplayerCount - 1;
end
registerHook("REGION_LEAVE", "roof_exit", "spawn2-h2023_roof");
