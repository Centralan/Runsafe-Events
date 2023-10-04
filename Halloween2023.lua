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
--17 maze
--18 maze
--19 patch
--20 tower



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
	spawnsound:playSound('SKELETON_HURT', 1, 0.1);
	spawn1:cloneChestToPlayer(player.name);
	player:sendEvent("achievement.halloween2023");
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
	else
	player:sendMessage("&7Nothing seems to have happened, you keep looking around.");
end
end

function grave6_reset_chest()
	grave6ChestPlayers = {};
	grave6ChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "grave6", "spawn2-grave6");

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
local tp3 = Location:new(world, 119.0, 142.0, -384.0);
local tpend = Location:new(world, -22.0, 123.0, -627.0);

