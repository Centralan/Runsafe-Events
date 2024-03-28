---------------
--Worlds / sound--
---------------
local world = World:new('survival3');

------------------------
--------- egg ----------
------------------------
-----------------------------------------------------------------------
local egg1 = Location:new(world, 19582.0, 56.0, -20779.0);
local egg1ChestPlayers = {};
local egg1ChestResetTimer = Timer:new("egg1_reset_chest", 20 * 60 * 5);
local egg1ChestResetTimerRunning = false;

function e1(data)
	local player = Player:new(data.player);
	   if not egg1ChestPlayers[player.name] then
		        egg1:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 1/30');
            player:addPermission("runsafe.event.egg1");
		        egg1ChestPlayers[player.name] = true; 
		
		if not egg1ChestResetTimerRunning then
			     egg1ChestResetTimerRunning = true;
			     egg1ChestResetTimer:start();
		    end
	  end
end

function egg1_reset_chest()
	egg1ChestPlayers = {};
	egg1ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg2 = Location:new(world, 19582.0, 56.0, -20781.0);
local egg2ChestPlayers = {};
local egg2ChestResetTimer = Timer:new("egg2_reset_chest", 20 * 60 * 5);
local egg2ChestResetTimerRunning = false;

function e2(data)
	local player = Player:new(data.player);
	   if not egg2ChestPlayers[player.name] then
		        egg2:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 2/30');
            player:addPermission("runsafe.event.egg2");
		        egg2ChestPlayers[player.name] = true; 
		
		if not egg2ChestResetTimerRunning then
			     egg2ChestResetTimerRunning = true;
			     egg2ChestResetTimer:start();
		    end
	  end
end

function egg2_reset_chest()
	egg2ChestPlayers = {};
	egg2ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg3 = Location:new(world, 19582.0, 56.0, -20783.0);
local egg3ChestPlayers = {};
local egg3ChestResetTimer = Timer:new("egg3_reset_chest", 20 * 60 * 5);
local egg3ChestResetTimerRunning = false;

function e3(data)
	local player = Player:new(data.player);
	   if not egg3ChestPlayers[player.name] then
		        egg3:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 3/30');
            player:addPermission("runsafe.event.egg3");
		        egg3ChestPlayers[player.name] = true; 
		
		if not egg3ChestResetTimerRunning then
			     egg3ChestResetTimerRunning = true;
			     egg3ChestResetTimer:start();
		    end
	  end
end

function egg3_reset_chest()
	egg3ChestPlayers = {};
	egg3ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg4 = Location:new(world, 19582.0, 56.0, -20785.0);
local egg4ChestPlayers = {};
local egg4ChestResetTimer = Timer:new("egg4_reset_chest", 20 * 60 * 5);
local egg4ChestResetTimerRunning = false;

function e4(data)
	local player = Player:new(data.player);
	   if not egg4ChestPlayers[player.name] then
		        egg4:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 4/30');
            player:addPermission("runsafe.event.egg4");
		        egg4ChestPlayers[player.name] = true; 
		
		if not egg4ChestResetTimerRunning then
			     egg4ChestResetTimerRunning = true;
			     egg4ChestResetTimer:start();
		    end
	  end
end

function egg4_reset_chest()
	egg4ChestPlayers = {};
	egg4ChestResetTimerRunning = false;
end

-----------------------------------------------------------------------
local egg5 = Location:new(world, 19582.0, 56.0, -20787.0);
local egg5ChestPlayers = {};
local egg5ChestResetTimer = Timer:new("egg5_reset_chest", 20 * 60 * 5);
local egg5ChestResetTimerRunning = false;

function e5(data)
	local player = Player:new(data.player);
	   if not egg5ChestPlayers[player.name] then
		        egg5:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 5/30');
            player:addPermission("runsafe.event.egg5");
		        egg5ChestPlayers[player.name] = true; 
		
		if not egg5ChestResetTimerRunning then
			     egg5ChestResetTimerRunning = true;
			     egg5ChestResetTimer:start();
		    end
	  end
end

function egg5_reset_chest()
	egg5ChestPlayers = {};
	egg5ChestResetTimerRunning = false;
end

-----------------------------------------------------------------------
local egg6 = Location:new(world, 19582.0, 56.0, -20789.0);
local egg6ChestPlayers = {};
local egg6ChestResetTimer = Timer:new("egg6_reset_chest", 20 * 60 * 5);
local egg6ChestResetTimerRunning = false;

function e6(data)
	local player = Player:new(data.player);
	   if not egg6ChestPlayers[player.name] then
		        egg6:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 6/30');
            player:addPermission("runsafe.event.egg6");
		        egg6ChestPlayers[player.name] = true; 
		
		if not egg6ChestResetTimerRunning then
			     egg6ChestResetTimerRunning = true;
			     egg6ChestResetTimer:start();
		    end
	  end
end

function egg6_reset_chest()
	egg6ChestPlayers = {};
	egg6ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg7 = Location:new(world, 19582.0, 56.0, -20791.0);
local egg7ChestPlayers = {};
local egg7ChestResetTimer = Timer:new("egg7_reset_chest", 20 * 60 * 5);
local egg7ChestResetTimerRunning = false;

function e7(data)
	local player = Player:new(data.player);
	   if not egg7ChestPlayers[player.name] then
		        egg7:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 7/30');
            player:addPermission("runsafe.event.egg7");
		        egg7ChestPlayers[player.name] = true; 
		
		if not egg7ChestResetTimerRunning then
			     egg7ChestResetTimerRunning = true;
			     egg7ChestResetTimer:start();
		    end
	  end
end

function egg7_reset_chest()
	egg7ChestPlayers = {};
	egg7ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg8 = Location:new(world, 19582.0, 56.0, -20793.0);
local egg8ChestPlayers = {};
local egg8ChestResetTimer = Timer:new("egg8_reset_chest", 20 * 60 * 5);
local egg8ChestResetTimerRunning = false;

function e8(data)
	local player = Player:new(data.player);
	   if not egg8ChestPlayers[player.name] then
		        egg8:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 8/30');
            player:addPermission("runsafe.event.egg8");
		        egg8ChestPlayers[player.name] = true; 
		
		if not egg8ChestResetTimerRunning then
			     egg8ChestResetTimerRunning = true;
			     egg8ChestResetTimer:start();
		    end
	  end
end

function egg8_reset_chest()
	egg8ChestPlayers = {};
	egg8ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg9 = Location:new(world, 19582.0, 56.0, -20795.0);
local egg9ChestPlayers = {};
local egg9ChestResetTimer = Timer:new("egg9_reset_chest", 20 * 60 * 5);
local egg9ChestResetTimerRunning = false;

function e9(data)
	local player = Player:new(data.player);
	   if not egg9ChestPlayers[player.name] then
		        egg9:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 9/30');
            player:addPermission("runsafe.event.egg9");
		        egg9ChestPlayers[player.name] = true; 
		
		if not egg9ChestResetTimerRunning then
			     egg9ChestResetTimerRunning = true;
			     egg9ChestResetTimer:start();
		    end
	  end
end

function egg9_reset_chest()
	egg9ChestPlayers = {};
	egg9ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg10 = Location:new(world, 19582.0, 56.0, -20797.0);
local egg10ChestPlayers = {};
local egg10ChestResetTimer = Timer:new("egg10_reset_chest", 20 * 60 * 5);
local egg10ChestResetTimerRunning = false;

function e10(data)
	local player = Player:new(data.player);
	   if not egg10ChestPlayers[player.name] then
		        egg10:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 10/30');
            player:addPermission("runsafe.event.egg10");
		        egg10ChestPlayers[player.name] = true; 
		
		if not egg10ChestResetTimerRunning then
			     egg10ChestResetTimerRunning = true;
			     egg10ChestResetTimer:start();
		    end
	  end
end

function egg10_reset_chest()
	egg10ChestPlayers = {};
	egg10ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg11 = Location:new(world, 19582.0, 56.0, -20799.0);
local egg11ChestPlayers = {};
local egg11ChestResetTimer = Timer:new("egg11_reset_chest", 20 * 60 * 5);
local egg11ChestResetTimerRunning = false;

function e11(data)
	local player = Player:new(data.player);
	   if not egg11ChestPlayers[player.name] then
		        egg11:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 11/30');
            player:addPermission("runsafe.event.egg11");
		        egg11ChestPlayers[player.name] = true; 
		
		if not egg11ChestResetTimerRunning then
			     egg11ChestResetTimerRunning = true;
			     egg11ChestResetTimer:start();
		    end
	  end
end

function egg11_reset_chest()
	egg11ChestPlayers = {};
	egg11ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg12 = Location:new(world, 19582.0, 56.0, -20801.0);
local egg12ChestPlayers = {};
local egg12ChestResetTimer = Timer:new("egg12_reset_chest", 20 * 60 * 5);
local egg12ChestResetTimerRunning = false;

function e12(data)
	local player = Player:new(data.player);
	   if not egg12ChestPlayers[player.name] then
		        egg12:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 12/30');
            player:addPermission("runsafe.event.egg12");
		        egg12ChestPlayers[player.name] = true; 
		
		if not egg12ChestResetTimerRunning then
			     egg12ChestResetTimerRunning = true;
			     egg12ChestResetTimer:start();
		    end
	  end
end

function egg12_reset_chest()
	egg12ChestPlayers = {};
	egg12ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg13 = Location:new(world, 19582.0, 56.0, -20803.0);
local egg13ChestPlayers = {};
local egg13ChestResetTimer = Timer:new("egg13_reset_chest", 20 * 60 * 5);
local egg13ChestResetTimerRunning = false;

function e13(data)
	local player = Player:new(data.player);
	   if not egg13ChestPlayers[player.name] then
		        egg13:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 13/30');
            player:addPermission("runsafe.event.egg13");
		        egg13ChestPlayers[player.name] = true; 
		
		if not egg13ChestResetTimerRunning then
			     egg13ChestResetTimerRunning = true;
			     egg13ChestResetTimer:start();
		    end
	  end
end

function egg13_reset_chest()
	egg13ChestPlayers = {};
	egg13ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg14 = Location:new(world, 19582.0, 56.0, -20805.0);
local egg14ChestPlayers = {};
local egg14ChestResetTimer = Timer:new("egg14_reset_chest", 20 * 60 * 5);
local egg14ChestResetTimerRunning = false;

function e14(data)
	local player = Player:new(data.player);
	   if not egg14ChestPlayers[player.name] then
		        egg14:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 14/30');
            player:addPermission("runsafe.event.egg14");
		        egg14ChestPlayers[player.name] = true; 
		
		if not egg14ChestResetTimerRunning then
			     egg14ChestResetTimerRunning = true;
			     egg14ChestResetTimer:start();
		    end
	  end
end

function egg14_reset_chest()
	egg14ChestPlayers = {};
	egg14ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg15 = Location:new(world, 19582.0, 56.0, -20807.0);
local egg15ChestPlayers = {};
local egg15ChestResetTimer = Timer:new("egg15_reset_chest", 20 * 60 * 5);
local egg15ChestResetTimerRunning = false;

function e15(data)
	local player = Player:new(data.player);
	   if not egg15ChestPlayers[player.name] then
		        egg15:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 15/30');
            player:addPermission("runsafe.event.egg15");
		        egg15ChestPlayers[player.name] = true; 
		
		if not egg15ChestResetTimerRunning then
			     egg15ChestResetTimerRunning = true;
			     egg15ChestResetTimer:start();
		    end
	  end
end

function egg15_reset_chest()
	egg15ChestPlayers = {};
	egg15ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg16 = Location:new(world, 19582.0, 56.0, -20809.0);
local egg16ChestPlayers = {};
local egg16ChestResetTimer = Timer:new("egg16_reset_chest", 20 * 60 * 5);
local egg16ChestResetTimerRunning = false;

function e16(data)
	local player = Player:new(data.player);
	   if not egg16ChestPlayers[player.name] then
		        egg16:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 16/30');
            player:addPermission("runsafe.event.egg16");
		        egg16ChestPlayers[player.name] = true; 
		
		if not egg16ChestResetTimerRunning then
			     egg16ChestResetTimerRunning = true;
			     egg16ChestResetTimer:start();
		    end
	  end
end

function egg16_reset_chest()
	egg16ChestPlayers = {};
	egg16ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg17 = Location:new(world, 19582.0, 56.0, -20811.0);
local egg17ChestPlayers = {};
local egg17ChestResetTimer = Timer:new("egg17_reset_chest", 20 * 60 * 5);
local egg17ChestResetTimerRunning = false;

function e17(data)
	local player = Player:new(data.player);
	   if not egg17ChestPlayers[player.name] then
		        egg17:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 17/30');
            player:addPermission("runsafe.event.egg17");
		        egg17ChestPlayers[player.name] = true; 
		
		if not egg17ChestResetTimerRunning then
			     egg17ChestResetTimerRunning = true;
			     egg17ChestResetTimer:start();
		    end
	  end
end

function egg17_reset_chest()
	egg17ChestPlayers = {};
	egg17ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg18 = Location:new(world, 19582.0, 56.0, -20813.0);
local egg18ChestPlayers = {};
local egg18ChestResetTimer = Timer:new("egg18_reset_chest", 20 * 60 * 5);
local egg18ChestResetTimerRunning = false;

function e18(data)
	local player = Player:new(data.player);
	   if not egg18ChestPlayers[player.name] then
		        egg18:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 18/30');
            player:addPermission("runsafe.event.egg18");
		        egg18ChestPlayers[player.name] = true; 
		
		if not egg18ChestResetTimerRunning then
			     egg18ChestResetTimerRunning = true;
			     egg18ChestResetTimer:start();
		    end
	  end
end

function egg18_reset_chest()
	egg18ChestPlayers = {};
	egg18ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg19 = Location:new(world, 19582.0, 56.0, -20815.0);
local egg19ChestPlayers = {};
local egg19ChestResetTimer = Timer:new("egg19_reset_chest", 20 * 60 * 5);
local egg19ChestResetTimerRunning = false;

function e19(data)
	local player = Player:new(data.player);
	   if not egg19ChestPlayers[player.name] then
		        egg19:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 19/30');
            player:addPermission("runsafe.event.egg19");
		        egg19ChestPlayers[player.name] = true; 
		
		if not egg19ChestResetTimerRunning then
			     egg19ChestResetTimerRunning = true;
			     egg19ChestResetTimer:start();
		    end
	  end
end

function egg19_reset_chest()
	egg19ChestPlayers = {};
	egg19ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg20 = Location:new(world, 19582.0, 56.0, -20817.0);
local egg20ChestPlayers = {};
local egg20ChestResetTimer = Timer:new("egg20_reset_chest", 20 * 60 * 5);
local egg20ChestResetTimerRunning = false;

function e20(data)
	local player = Player:new(data.player);
	   if not egg20ChestPlayers[player.name] then
		        egg20:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 20/30');
            player:addPermission("runsafe.event.egg20");
		        egg20ChestPlayers[player.name] = true; 
		
		if not egg20ChestResetTimerRunning then
			     egg20ChestResetTimerRunning = true;
			     egg20ChestResetTimer:start();
		    end
	  end
end

function egg20_reset_chest()
	egg20ChestPlayers = {};
	egg20ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg21 = Location:new(world, 19582.0, 56.0, -20819.0);
local egg21ChestPlayers = {};
local egg21ChestResetTimer = Timer:new("egg21_reset_chest", 20 * 60 * 5);
local egg21ChestResetTimerRunning = false;

function e21(data)
	local player = Player:new(data.player);
	   if not egg21ChestPlayers[player.name] then
		        egg21:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 21/30');
            player:addPermission("runsafe.event.egg21");
		        egg21ChestPlayers[player.name] = true; 
		
		if not egg21ChestResetTimerRunning then
			     egg21ChestResetTimerRunning = true;
			     egg21ChestResetTimer:start();
		    end
	  end
end

function egg21_reset_chest()
	egg21ChestPlayers = {};
	egg21ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg22 = Location:new(world, 19582.0, 56.0, -20821.0);
local egg22ChestPlayers = {};
local egg22ChestResetTimer = Timer:new("egg22_reset_chest", 20 * 60 * 5);
local egg22ChestResetTimerRunning = false;

function e22(data)
	local player = Player:new(data.player);
	   if not egg22ChestPlayers[player.name] then
		        egg22:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 22/30');
            player:addPermission("runsafe.event.egg22");
		        egg22ChestPlayers[player.name] = true; 
		
		if not egg22ChestResetTimerRunning then
			     egg22ChestResetTimerRunning = true;
			     egg22ChestResetTimer:start();
		    end
	  end
end

function egg22_reset_chest()
	egg22ChestPlayers = {};
	egg22ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg23 = Location:new(world, 19582.0, 56.0, -20823.0);
local egg23ChestPlayers = {};
local egg23ChestResetTimer = Timer:new("egg23_reset_chest", 20 * 60 * 5);
local egg23ChestResetTimerRunning = false;

function e23(data)
	local player = Player:new(data.player);
	   if not egg23ChestPlayers[player.name] then
		        egg23:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 23/30');
            player:addPermission("runsafe.event.egg23");
		        egg23ChestPlayers[player.name] = true; 
		
		if not egg23ChestResetTimerRunning then
			     egg23ChestResetTimerRunning = true;
			     egg23ChestResetTimer:start();
		    end
	  end
end

function egg23_reset_chest()
	egg23ChestPlayers = {};
	egg23ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg24 = Location:new(world, 19581.0, 56.0, -20825.0);
local egg24ChestPlayers = {};
local egg24ChestResetTimer = Timer:new("egg24_reset_chest", 20 * 60 * 5);
local egg24ChestResetTimerRunning = false;

function e24(data)
	local player = Player:new(data.player);
	   if not egg24ChestPlayers[player.name] then
		        egg24:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 24/30');
            player:addPermission("runsafe.event.egg24");
		        egg24ChestPlayers[player.name] = true; 
		
		if not egg24ChestResetTimerRunning then
			     egg24ChestResetTimerRunning = true;
			     egg24ChestResetTimer:start();
		    end
	  end
end

function egg24_reset_chest()
	egg24ChestPlayers = {};
	egg24ChestResetTimerRunning = false;
end

-----------------------------------------------------------------------
local egg25 = Location:new(world, 19579.0, 56.0, -20825.0);
local egg25ChestPlayers = {};
local egg25ChestResetTimer = Timer:new("egg25_reset_chest", 20 * 60 * 5);
local egg25ChestResetTimerRunning = false;

function e25(data)
	local player = Player:new(data.player);
	   if not egg25ChestPlayers[player.name] then
		        egg25:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 25/30');
            player:addPermission("runsafe.event.egg25");
		        egg25ChestPlayers[player.name] = true; 
		
		if not egg25ChestResetTimerRunning then
			     egg25ChestResetTimerRunning = true;
			     egg25ChestResetTimer:start();
		    end
	  end
end

function egg25_reset_chest()
	egg25ChestPlayers = {};
	egg25ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg26 = Location:new(world, 19577.0, 56.0, -20825.0);
local egg26ChestPlayers = {};
local egg26ChestResetTimer = Timer:new("egg26_reset_chest", 20 * 60 * 5);
local egg26ChestResetTimerRunning = false;

function e26(data)
	local player = Player:new(data.player);
	   if not egg26ChestPlayers[player.name] then
		        egg26:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 26/30');
            player:addPermission("runsafe.event.egg26");
		        egg26ChestPlayers[player.name] = true; 
		
		if not egg26ChestResetTimerRunning then
			     egg26ChestResetTimerRunning = true;
			     egg26ChestResetTimer:start();
		    end
	  end
end

function egg26_reset_chest()
	egg26ChestPlayers = {};
	egg26ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg27 = Location:new(world, 19575.0, 56.0, -20825.0);
local egg27ChestPlayers = {};
local egg27ChestResetTimer = Timer:new("egg27_reset_chest", 20 * 60 * 5);
local egg27ChestResetTimerRunning = false;

function e27(data)
	local player = Player:new(data.player);
	   if not egg27ChestPlayers[player.name] then
		        egg27:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 27/30');
            player:addPermission("runsafe.event.egg27");
		        egg27ChestPlayers[player.name] = true; 
		
		if not egg27ChestResetTimerRunning then
			     egg27ChestResetTimerRunning = true;
			     egg27ChestResetTimer:start();
		    end
	  end
end

function egg27_reset_chest()
	egg27ChestPlayers = {};
	egg27ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg28 = Location:new(world, 19573.0, 56.0, -20825.0);
local egg28ChestPlayers = {};
local egg28ChestResetTimer = Timer:new("egg28_reset_chest", 20 * 60 * 5);
local egg28ChestResetTimerRunning = false;

function e28(data)
	local player = Player:new(data.player);
	   if not egg28ChestPlayers[player.name] then
		        egg28:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 28/30');
            player:addPermission("runsafe.event.egg28");
		        egg28ChestPlayers[player.name] = true; 
		
		if not egg28ChestResetTimerRunning then
			     egg28ChestResetTimerRunning = true;
			     egg28ChestResetTimer:start();
		    end
	  end
end

function egg28_reset_chest()
	egg28ChestPlayers = {};
	egg28ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg29 = Location:new(world, 19571.0, 56.0, -20825.0);
local egg29ChestPlayers = {};
local egg29ChestResetTimer = Timer:new("egg29_reset_chest", 20 * 60 * 5);
local egg29ChestResetTimerRunning = false;

function e29(data)
	local player = Player:new(data.player);
	   if not egg29ChestPlayers[player.name] then
		        egg29:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 29/30');
            player:addPermission("runsafe.event.egg29");
		        egg29ChestPlayers[player.name] = true; 
		
		if not egg29ChestResetTimerRunning then
			     egg29ChestResetTimerRunning = true;
			     egg29ChestResetTimer:start();
		    end
	  end
end

function egg29_reset_chest()
	egg29ChestPlayers = {};
	egg29ChestResetTimerRunning = false;
end
-----------------------------------------------------------------------
local egg30 = Location:new(world, 19569.0, 56.0, -20825.0);
local egg30ChestPlayers = {};
local egg30ChestResetTimer = Timer:new("egg30_reset_chest", 20 * 60 * 5);
local egg30ChestResetTimerRunning = false;

function e30(data)
	local player = Player:new(data.player);
	   if not egg30ChestPlayers[player.name] then
		        egg30:cloneChestToPlayer(player.name);
		        player:closeInventory();
--		        player:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
            player:sendMessage('&aEgg 30/30');
            player:addPermission("runsafe.event.egg30");
		        egg30ChestPlayers[player.name] = true; 
		
		if not egg30ChestResetTimerRunning then
			     egg30ChestResetTimerRunning = true;
			     egg30ChestResetTimer:start();
		    end
	  end
end

function egg30_reset_chest()
	egg30ChestPlayers = {};
	egg30ChestResetTimerRunning = false;
end


registerHook("REGION_ENTER", "e1", "survival3-eg1");
registerHook("REGION_ENTER", "e2", "survival3-e2");
registerHook("REGION_ENTER", "e3", "survival3-e3");
registerHook("REGION_ENTER", "e4", "survival3-e4");
registerHook("REGION_ENTER", "e5", "survival3-e5");
registerHook("REGION_ENTER", "e6", "survival3-e6");
registerHook("REGION_ENTER", "e7", "survival3-e7");
registerHook("REGION_ENTER", "e8", "survival3-e8");
registerHook("REGION_ENTER", "e9", "survival3-e9");
registerHook("REGION_ENTER", "e10", "survival3-e10");
registerHook("REGION_ENTER", "e11", "survival3-e11");
registerHook("REGION_ENTER", "e12", "survival3-e12");
registerHook("REGION_ENTER", "e13", "survival3-e13");
registerHook("REGION_ENTER", "e14", "survival3-e14");
registerHook("REGION_ENTER", "e15", "survival3-e15");
registerHook("REGION_ENTER", "e16", "survival3-e16");
registerHook("REGION_ENTER", "e17", "survival3-e17");
registerHook("REGION_ENTER", "e18", "survival3-e18");
registerHook("REGION_ENTER", "e19", "survival3-e19");
registerHook("REGION_ENTER", "e20", "survival3-e20");
registerHook("REGION_ENTER", "e21", "survival3-e21");
registerHook("REGION_ENTER", "e22", "survival3-e22");
registerHook("REGION_ENTER", "e23", "survival3-e23");
registerHook("REGION_ENTER", "e24", "survival3-e24");
registerHook("REGION_ENTER", "e25", "survival3-e25");
registerHook("REGION_ENTER", "e26", "survival3-e26");
registerHook("REGION_ENTER", "e27", "survival3-e27");
registerHook("REGION_ENTER", "e28", "survival3-e28");
registerHook("REGION_ENTER", "e29", "survival3-e29");
registerHook("REGION_ENTER", "e30", "survival3-e30");

function egg_cheevee(data)
          local player = Player:new(data.player);
	   if player:hasPermission("runsafe.event.egg1") then
           if player:hasPermission("runsafe.event.egg2") then
           if player:hasPermission("runsafe.event.egg3") then
           if player:hasPermission("runsafe.event.egg4") then
           if player:hasPermission("runsafe.event.egg5") then
           if player:hasPermission("runsafe.event.egg6") then
	   if player:hasPermission("runsafe.event.egg7") then
	   if player:hasPermission("runsafe.event.egg8") then
	   if player:hasPermission("runsafe.event.egg9") then
	   if player:hasPermission("runsafe.event.egg10") then
	   if player:hasPermission("runsafe.event.egg11") then
	   if player:hasPermission("runsafe.event.egg12") then
	   if player:hasPermission("runsafe.event.egg13") then
	   if player:hasPermission("runsafe.event.egg14") then
	   if player:hasPermission("runsafe.event.egg15") then
	   if player:hasPermission("runsafe.event.egg16") then
	   if player:hasPermission("runsafe.event.egg17") then
	   if player:hasPermission("runsafe.event.egg18") then
	   if player:hasPermission("runsafe.event.egg19") then
	   if player:hasPermission("runsafe.event.egg20") then	
	   if player:hasPermission("runsafe.event.egg21") then
	   if player:hasPermission("runsafe.event.egg22") then
	   if player:hasPermission("runsafe.event.egg23") then
	   if player:hasPermission("runsafe.event.egg24") then
	   if player:hasPermission("runsafe.event.egg25") then
	   if player:hasPermission("runsafe.event.egg26") then
	   if player:hasPermission("runsafe.event.egg27") then
	   if player:hasPermission("runsafe.event.egg28") then
	   if player:hasPermission("runsafe.event.egg29") then
           if player:hasPermission("runsafe.event.egg30") then
		player:sendMessage('&6 Congratulations on finding all the eggs!');
	        player:sendEvent("achievement.egghunt");
		player:removePermission("runsafe.event.egg1");
		player:removePermission("runsafe.event.egg2");
	        player:removePermission("runsafe.event.egg3");
		player:removePermission("runsafe.event.egg4");
		player:removePermission("runsafe.event.egg5");
		player:removePermission("runsafe.event.egg6");
	        player:removePermission("runsafe.event.egg7");
	        player:removePermission("runsafe.event.egg8");
		player:removePermission("runsafe.event.egg9");
		player:removePermission("runsafe.event.egg10");
		player:removePermission("runsafe.event.egg11");
		player:removePermission("runsafe.event.egg12");
		player:removePermission("runsafe.event.egg13");
		player:removePermission("runsafe.event.egg14");
		player:removePermission("runsafe.event.egg15");
		player:removePermission("runsafe.event.egg16");
		player:removePermission("runsafe.event.egg17");
		player:removePermission("runsafe.event.egg18");
		player:removePermission("runsafe.event.egg19");
		player:removePermission("runsafe.event.egg30");
		player:removePermission("runsafe.event.egg20");
		player:removePermission("runsafe.event.egg21");
		player:removePermission("runsafe.event.egg22");
		player:removePermission("runsafe.event.egg23");
		player:removePermission("runsafe.event.egg24");
		player:removePermission("runsafe.event.egg25");
		player:removePermission("runsafe.event.egg26");
                player:removePermission("runsafe.event.egg27");
		player:removePermission("runsafe.event.egg28");
		player:removePermission("runsafe.event.egg29");
																														end
																													end
																												end
																											end
																										end
																									end
																								end
																							end
																						end
																					end
																				end
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

registerHook("REGION_ENTER", "egg_cheevee", "survival3-eg1");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e2");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e3");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e4");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e5");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e6");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e7");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e8");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e9");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e10");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e11");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e12");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e13");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e14");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e15");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e16");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e17");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e18");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e19");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e20");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e21");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e22");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e23");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e24");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e25");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e26");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e27");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e28");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e29");
registerHook("REGION_ENTER", "egg_cheevee", "survival3-e30");
