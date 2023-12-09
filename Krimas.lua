---------------
--Worlds / sound--
---------------
local world = World:new('survival3');
local world2 = World:new('survival3_nether');
local world3 = World:new('azuren');
local world4 = World:new('project33');

-----------------------------------------
------------Chat Commands--------------
-----------------------------------------

local function hasPrefix(subject, prefix)
	return string.sub(subject, 1, string.len(prefix)) == prefix;
end

local function splitPlayerName(message, len)
	return string.sub(message, len, string.len(message));
end

function krimas_perms(data)
	if data.player == "Centralan" or data.player == "Zozael" or data.player == "RainbowDeborah" then
		local player = Player:new(data.player);
		local message = data.message;
		if hasPrefix(message, "#kperms") then
			local playerName = splitPlayerName(message, 16);
			   player:addPermission("runsafe.event.trees");
			   player:addPermission("runsafe.event.emerald");
			   player:addPermission("runsafe.event.flower");
			   player:addPermission("runsafe.event.beacon");
			   player:addPermission("runsafe.event.feather");
			   player:addPermission("runsafe.event.dog");
			   player:addPermission("runsafe.event.city");
			   player:addPermission("runsafe.event.sky");
			   player:addPermission("runsafe.event.skally");
			   player:addPermission("runsafe.event.az");
			   player:sendMessage("&5Server: &6Event Perms granted x10");
			end
		end
	end

registerHook("CHAT_MESSAGE", "krimas_perms", "survival3");

---------------------------
----------messaging--------
---------------------------

function spawn_whisper(npc, msg, player)
	p:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

local xmas = AI:new("DOG", "AI", "survival3");
local xmas2 = AI:new("DOG", "AI", "survival3_nether");
local xmas3 = AI:new("DOG", "AI", "azuren");
local xmas4 = AI:new("DOG", "AI", "project33");

---------------------------
----------bounds check--------
---------------------------

function s_within_bounds(player, lX, lY, lZ, hX, hY, hZ)
	local world, x, y, z = player:getLocation();
	return x >= lX and y >= lY and z >= lZ and x <= hX and y <= hY and z <= hZ;
end

-------------------
--Intro Book ------
-------------------
local event_start_book = Location:new(world, 19536.0, 69.0, -20813.0);
local event_start_sound = Location:new(world, 19536.0, 69.0, -20813.0);

function event_start(data)
        local player = Player:new(data.player);
	  player:sendMessage('&cKrimasSoon');	
	  event_start_sound:playSound('ENTITY_VILLAGER_NO', 1, 0.2);
	  event_start_book:cloneChestToPlayer(player.name);
	  player:closeInventory();
	  player:sendMessage('&aLet the trials begin.');
	  player:sendEvent("achievement.krimas");
	  event_start_sound:playSound('ENTITY_VEX_CHARGE', 1, 0.2);
end
	
registerHook("INTERACT", "event_start", 143, "survival3", 19536, 70, -20810);
registerHook("INTERACT", "event_start", 143, "survival3", 19540, 70, -20810);

-------------------
--Event Perms ------
-------------------
--runsafe.event.trees
--runsafe.event.emerald
--runsafe.event.flower
--runsafe.event.beacon
--runsafe.event.feather
--runsafe.event.dog
--runsafe.event.city
--runsafe.event.sky
--runsafe.event.skally
--runsafe.event.az
--runsafe.event.gift1
--runsafe.event.gift2
--runsafe.event.gift3
--runsafe.event.gift4
--runsafe.event.gift5
--runsafe.event.gift6
--runsafe.event.gift7
--runsafe.event.gift8
--runsafe.event.gift9
--runsafe.event.gift10
--runsafe.event.gift11
--runsafe.event.gift12
--runsafe.event.gift13
--runsafe.event.gift14
--runsafe.event.gift15
--runsafe.event.gift16
--runsafe.event.gift17
--runsafe.event.gift18

---------------
--Portal --
---------------
local event_tp_p33 = Location:new(world4, -1633.404, 65.0, -1340.674);
event_tp_p33:setYaw(0.0);
event_tp_p33:setPitch(2.9);

local event_tp_sound = Location:new(world4, -1633.404, 65.0, -1340.674);
	
function end_event(data)
          local player = Player:new(data.player);
	   if player:hasPermission("runsafe.event.trees") then
           if player:hasPermission("runsafe.event.emerald") then
           if player:hasPermission("runsafe.event.flower") then
           if player:hasPermission("runsafe.event.beacon") then
           if player:hasPermission("runsafe.event.feather") then
           if player:hasPermission("runsafe.event.dog") then
	   if player:hasPermission("runsafe.event.city") then
	   if player:hasPermission("runsafe.event.sky") then
	   if player:hasPermission("runsafe.event.skally") then
	   if player:hasPermission("runsafe.event.az") then
		player:teleport(event_tp_p33);
		event_tp_sound:playSound('UI_TOAST_CHALLENGE_COMPLETE', 1, 1);
		xmas4:speak( player.name .. " has crossed to the wonderland.");
		player:sendMessage('&aYou have received a checkpoint! You can return here with /krimas until you comeplete this part of the event.');
		player:addPermission("runsafe.warp.use.krimas");
		player:sendEvent("achievement.trialsofkrimas");
                player:removePermission("runsafe.event.trees");
		player:removePermission("runsafe.event.emerald");
		player:removePermission("runsafe.event.flower");
		player:removePermission("runsafe.event.beacon");
		player:removePermission("runsafe.event.feather");
		player:removePermission("runsafe.event.dog");
		player:removePermission("runsafe.event.city");
		player:removePermission("runsafe.event.sky");
		player:removePermission("runsafe.event.skally");
		player:removePermission("runsafe.event.az");
											
		else
								
		player:sendMessage('&cYou are not yet worthy.');						
								end
							end
						end
					end
				end
			end
		end
	end

registerHook("REGION_ENTER", "end_event", "survival3-hunt_tp");

---------------
--Task 1 --
---------------
--warp hunt1
--18946,-21854

local framechest = Location:new(world, 18947.0, 112.0, -21580.0);
local framechestChestPlayers = {};
local framechestChestResetTimer = Timer:new("frame_reset_chest", 200 * 600 * 50);
local framechestChestResetTimerRunning = false;
local framechestChestOpen = Location:new(world, -64.0, 65.0, -515.0);


function find_trees(data)
          local player = Player:new(data.player);
	    if not framechestChestPlayers[player.name] then
		framechest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
	         player:sendMessage('&7Something seems weird about these trees, almost like the server made them.');
	         player:sendMessage('&7Why would an Admin do this? Maybe I can find something here to build the portal.');
                 player:addPermission("runsafe.event.trees");
		framechestChestPlayers[player.name] = true; 
		
		if not framechestChestResetTimerRunning then
			framechestChestResetTimerRunning = true;
			framechestChestResetTimer:start();
		end
	end
end

function frame_reset_chest()
	framechestChestPlayers = {};
	framechestChestResetTimerRunning = false;
end


registerHook("REGION_ENTER", "find_trees", "survival3-hunt_1");


---------------
--Task 2 --
---------------
--warp hunt2
--18444,-17258

local beanschest = Location:new(world, 18444.0, 62.0, -17258.0);
local beanschestChestPlayers = {};
local beanschestChestResetTimer = Timer:new("beans_reset_chest", 200 * 600 * 50);
local beanschestChestResetTimerRunning = false;
local beanschestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function beans_snow(data)
	local player = Player:new(data.player);
	if s_within_bounds(player, 19537, 70, -20759, 19535, 73, -20761) then
	if not beanschestChestPlayers[player.name] then
		beanschest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7Someone is into some weird stuff...');
                player:addPermission("runsafe.event.emerald");
		beanschestChestPlayers[player.name] = true; 
		
		if not beanschestChestResetTimerRunning then
			beanschestChestResetTimerRunning = true;
			beanschestChestResetTimer:start();
		end
	end
end

function beans_reset_chest()
	beanschestChestPlayers = {};
	beanschestChestResetTimerRunning = false;
end

registerHook("PLAYER_ITEM_DROP", "beans_snow", "survival3", 264);

---------------
--Task 3 --
---------------
--warp hunt3
--37044,22486

local flowerchest = Location:new(world, 37044.0, 34.0, -22486.0);
local flowerchestChestPlayers = {};
local flowerchestChestResetTimer = Timer:new("flower_reset_chest", 200 * 600 * 50);
local flowerchestChestResetTimerRunning = false;
local flowerchestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function space_crash(data)
	local player = Player:new(data.player);
	if not flowerchestChestPlayers[player.name] then
		flowerchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7Seems whatever caused this metor to crash left a ... flower?');
		player:sendMessage('&7The flower has a strange glow to it. I wonder where it came from?');
		player:sendMessage('&9[?] &bSP&4E&bNCE&4R&f: &kbto wpt mt&f.');
                player:addPermission("runsafe.event.flower");
		flowerchestChestPlayers[player.name] = true; 
		
		if not flowerchestChestResetTimerRunning then
			flowerchestChestResetTimerRunning = true;
			flowerchestChestResetTimer:start();
		end
	end
end

function flower_reset_chest()
	flowerchestChestPlayers = {};
	flowerchestChestResetTimerRunning = false;
end

registerHook("INTERACT", "space_crash", 77, "survival3", 37043, 33, -22481);

---------------
--Task 4 --
---------------
--warp hunt4
--20758,-21037

local beaconchest = Location:new(world, 20746.0, 85.0, -21014.0);
local beaconchestChestPlayers = {};
local beaconchestChestResetTimer = Timer:new("beacon_reset_chest", 200 * 600 * 50);
local beaconchestChestResetTimerRunning = false;
local beaconchestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function cpu_core(data)
	local player = Player:new(data.player);
	if not beaconchestChestPlayers[player.name] then
		beaconchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7Who knew Runsafe ran on beacons.');
		player:sendMessage('&9[?] &bS&4P&bENC&4ER&f: Hey &kthat &fbel&kon&fgs &kto m&fe.');
                player:addPermission("runsafe.event.beacon");
		beaconchestChestPlayers[player.name] = true; 
		
		if not beaconchestChestResetTimerRunning then
			beaconchestChestResetTimerRunning = true;
			beaconchestChestResetTimer:start();
		end
	end
end

function beacon_reset_chest()
	beaconchestChestPlayers = {};
	beaconchestChestResetTimerRunning = false;
end

registerHook("INTERACT", "cpu_core", 146, "survival3", 20737, 70, -21070);

---------------
--Task 5 --
---------------
--warp hunt5
--19883, 22488

local featherchest = Location:new(world, 19882.0, 62.0, -22489.0);
local featherchestChestPlayers = {};
local featherchestChestResetTimer = Timer:new("feather_reset_chest", 200 * 600 * 50);
local featherchestChestResetTimerRunning = false;
local featherchestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function feather_reef(data)
	local player = Player:new(data.player);
	if not featherchestChestPlayers[player.name] then
		featherchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7I wonder what this feather was used for...');
                player:addPermission("runsafe.event.feather");
		featherchestChestPlayers[player.name] = true; 
		
		if not featherchestChestResetTimerRunning then
			featherchestChestResetTimerRunning = true;
			featherchestChestResetTimer:start();
		end
	end
end

function feather_reset_chest()
	featherchestChestPlayers = {};
	featherchestChestResetTimerRunning = false;
end

registerHook("INTERACT", "feather_reef", 143, "survival3", 19881.0, 65.0, -22489);

---------------
--Task 6 --
---------------
--warp hunt6
--spawn

local dragonchest = Location:new(world, 19473.0, 70.0, -20817.0);
local dragonchestChestPlayers = {};
local dragonchestChestResetTimer = Timer:new("dragon_reset_chest", 200 * 600 * 50);
local dragonchestChestResetTimerRunning = false;
local dragonchestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function dragon_spawn(data)
	local player = Player:new(data.player);
	if not dragonchestChestPlayers[player.name] then
		dragonchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7Did DOG experience memory loss?');
                player:addPermission("runsafe.event.dog");
		dragonchestChestPlayers[player.name] = true; 
		
		if not dragonchestChestResetTimerRunning then
			dragonchestChestResetTimerRunning = true;
			dragonchestChestResetTimer:start();
		end
	end
end

function dragon_reset_chest()
	dragonchestChestPlayers = {};
	dragonchestChestResetTimerRunning = false;
end

registerHook("INTERACT", "dragon_spawn", 143, "survival3", 19473.0, 73.0, -20817.0);

---------------
--Task 7 --
---------------
--warp hunt7
--pleco_city

local plecochest = Location:new(world, 19478.0, 70.0, -20817.0);
local plecochestChestPlayers = {};
local plecochestChestResetTimer = Timer:new("pleco_reset_chest", 200 * 600 * 50);
local plecochestChestResetTimerRunning = false;
local plecochestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function pleco_city(data)
	local player = Player:new(data.player);
	if not plecochestChestPlayers[player.name] then
		plecochest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7Man this city is almost majestic looking, it might even be the best.');
                player:addPermission("runsafe.event.city");
		plecochestChestPlayers[player.name] = true; 
		
		if not plecochestChestResetTimerRunning then
			plecochestChestResetTimerRunning = true;
			plecochestChestResetTimer:start();
		end
	end
end

function pleco_reset_chest()
	plecochestChestPlayers = {};
	plecochestChestResetTimerRunning = false;
end

registerHook("INTERACT", "pleco_city", 143, "creative", -1167.0, 249.0, -1406.0);

---------------
--Task 8 --
---------------
--skylimit

local skychest = Location:new(world, 19534.0, 69.0, -20762.0);
local skychestChestPlayers = {};
local skychestChestResetTimer = Timer:new("sky_reset_chest", 200 * 600 * 50);
local skychestChestResetTimerRunning = false;
local skychestChestOpen = Location:new(world, -64.0, 65.0, -515.0);

function sky_limit(data)
	local player = Player:new(data.player);
	if not skychestChestPlayers[player.name] then
		skychest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7Thats a long way down.');
                player:addPermission("runsafe.event.sky");
		skychestChestPlayers[player.name] = true; 
		
		if not skychestChestResetTimerRunning then
			skychestChestResetTimerRunning = true;
			skychestChestResetTimer:start();
		end
	end
end

function sky_reset_chest()
	skychestChestPlayers = {};
	skychestChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "sky_limit", "survival3-hunt8");

---------------
--Task 9 --
---------------
--warp hunt9(hunt9_1)
--skally

local skallychest = Location:new(world2, -21.0, 66.0, -209.0);
local skallychestChestPlayers = {};
local skallychestChestResetTimer = Timer:new("skally_reset_chest", 200 * 600 * 50);
local skallychestChestResetTimerRunning = false;
local skallychestChestOpen = Location:new(world2, -64.0, 65.0, -515.0);

function skally_nether(data)
	local player = Player:new(data.player);
	if not skallychestChestPlayers[player.name] then
		skallychest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas2:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7I wonder who Skalamander was?');
                player:addPermission("runsafe.event.skally");
		skallychestChestPlayers[player.name] = true; 
		
		if not skallyychestChestResetTimerRunning then
			skallychestChestResetTimerRunning = true;
			skallychestChestResetTimer:start();
		end
	end
end

function skally_reset_chest()
	skallychestChestPlayers = {};
	skallychestChestResetTimerRunning = false;
end

registerHook("INTERACT", "skally_nether", 143, "survival3_nether", -21.0, 66.0, 211.0);

---------------
--Task 10 --
---------------
--warp hunt10(hunt10_1)

local azchest = Location:new(world3, 10001.0, 63.0, 10003.0);
local azchestChestPlayers = {};
local azchestChestResetTimer = Timer:new("az_reset_chest", 200 * 600 * 50);
local azchestChestResetTimerRunning = false;
local azchestChestOpen = Location:new(world3, -64.0, 65.0, -515.0);

function az_tower(data)
	local player = Player:new(data.player);
	if not azchestChestPlayers[player.name] then
		azchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas3:speak( player.name .. " has completed the (classifed) objective.");
                player:sendMessage('&7What even is the Azuren?');
                player:addPermission("runsafe.event.az");
		azchestChestPlayers[player.name] = true; 
		
		if not azchestChestResetTimerRunning then
			azchestChestResetTimerRunning = true;
			azchestChestResetTimer:start();
		end
	end
end

function az_reset_chest()
	azchestChestPlayers = {};
	azchestChestResetTimerRunning = false;
end

registerHook("REGION_ENTER", "saz_tower", "azuren-hunt10_1");


---------------
--Gift Handling--
---------------
			
local gift1 = Location:new(world4, -1625, 64, -1192);
local gift1s = Location:new(world4, -1633.0, 65.0, -1336.0);
local gift1ChestPlayers = {};
local gift1ChestResetTimer = Timer:new("gift1_reset_chest", 20 * 60 * 5);
local gift1ChestResetTimerRunning = false;
local gift1ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift1_chest(data)
	local player = Player:new(data.player);
	if not gift1ChestPlayers[player.name] then
		gift1:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift1s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift1");
		gift1ChestPlayers[player.name] = true; 
		
		if not gift1ChestResetTimerRunning then
			gift1ChestResetTimerRunning = true;
			gift1ChestResetTimer:start();
		end
	end
end

function gift1_reset_chest()
	gift1ChestPlayers = {};
	gift1ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift1_chest", "project33", -1633.0, 65.0, -1336.0, 397);
			
local gift2 = Location:new(world4, -1625, 64, -1190);
local gift2s = Location:new(world4, -1594.0, 66.0, -1288.0);
local gift2ChestPlayers = {};
local gift2ChestResetTimer = Timer:new("gift2_reset_chest", 20 * 60 * 5);
local gift2ChestResetTimerRunning = false;
local gift2ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift2_chest(data)
	local player = Player:new(data.player);
	if not gift2ChestPlayers[player.name] then
		gift2:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift2s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift2");
		gift2ChestPlayers[player.name] = true; 
		
		if not gift2ChestResetTimerRunning then
			gift2ChestResetTimerRunning = true;
			gift2ChestResetTimer:start();
		end
	end
end

function gift2_reset_chest()
	gift2ChestPlayers = {};
	gift2ChestResetTimerRunning = false;
end

registerHook("LEFT_CLICK_BLOCK", "gift2_chest", "project33", -1594.0, 66.0, -1288.0, 397);		

local gift3 = Location:new(world4, -1625, 64, -1188);
local gift3s = Location:new(world4, -1708.0, 68.0, -1283.0);
local gift3ChestPlayers = {};
local gift3ChestResetTimer = Timer:new("gift3_reset_chest", 20 * 60 * 5);
local gift3ChestResetTimerRunning = false;
local gift3ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift3_chest(data)
	local player = Player:new(data.player);
	if not gift3ChestPlayers[player.name] then
		gift3:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift3s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift3");
		gift3ChestPlayers[player.name] = true; 
		
		if not gift3ChestResetTimerRunning then
			gift3ChestResetTimerRunning = true;
			gift3ChestResetTimer:start();
		end
	end
end

function gift3_reset_chest()
	gift3ChestPlayers = {};
	gift3ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift3_chest", "project33", -1708.0, 68.0, -1283.0, 397);

local gift4 = Location:new(world4, -1625, 64, -1186);
local gift4s = Location:new(world4, -1617.0, 70.0, -1267.0);
local gift4ChestPlayers = {};
local gift4ChestResetTimer = Timer:new("gift4_reset_chest", 20 * 60 * 5);
local gift4ChestResetTimerRunning = false;
local gift4ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift4_chest(data)
	local player = Player:new(data.player);
	if not gift4ChestPlayers[player.name] then
		gift4:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift4s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift4");
		gift4ChestPlayers[player.name] = true; 
		
		if not gift4ChestResetTimerRunning then
			gift4ChestResetTimerRunning = true;
			gift4ChestResetTimer:start();
		end
	end
end

function gift4_reset_chest()
	gift4ChestPlayers = {};
	gift4ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift4_chest", "project33", -1617.0, 70.0, -1267.0, 397);

local gift5 = Location:new(world4, -1625, 64, -1184);
local gift5s = Location:new(world4, -1602.0, 62.0, -1236.0);
local gift5ChestPlayers = {};
local gift5ChestResetTimer = Timer:new("gift5_reset_chest", 20 * 60 * 5);
local gift5ChestResetTimerRunning = false;
local gift5ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift5_chest(data)
	local player = Player:new(data.player);
	if not gift5ChestPlayers[player.name] then
		gift5:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift5s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift5");
		gift5ChestPlayers[player.name] = true; 
		
		if not gift5ChestResetTimerRunning then
			gift5ChestResetTimerRunning = true;
			gift5ChestResetTimer:start();
		end
	end
end

function gift5_reset_chest()
	gift5ChestPlayers = {};
	gift5ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift5_chest", "project33", -1602.0, 62.0, -1236.0, 397);

local gift6 = Location:new(world4, -1625, 64, -1182);
local gift6s = Location:new(world4, -1642.0, 72.0, -1214.0);
local gift6ChestPlayers = {};
local gift6ChestResetTimer = Timer:new("gift6_reset_chest", 20 * 60 * 5);
local gift6ChestResetTimerRunning = false;
local gift6ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift6_chest(data)
	local player = Player:new(data.player);
	if not gift6ChestPlayers[player.name] then
		gift6:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift6s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift6");
		gift6ChestPlayers[player.name] = true; 
		
		if not gift6ChestResetTimerRunning then
			gift6ChestResetTimerRunning = true;
			gift6ChestResetTimer:start();
		end
	end
end

function gift6_reset_chest()
	gift6ChestPlayers = {};
	gift6ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift6_chest", "project33", -1642.0, 72.0, -1214.0, 397);

local gift7 = Location:new(world4, -1625, 64, -1180);
local gift7s = Location:new(world4, -1596.0, 66.0, -1147.0);
local gift7ChestPlayers = {};
local gift7ChestResetTimer = Timer:new("gift7_reset_chest", 20 * 60 * 5);
local gift7ChestResetTimerRunning = false;
local gift7ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift7_chest(data)
	local player = Player:new(data.player);
	if not gift7ChestPlayers[player.name] then
		gift7:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift7s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift7");
		gift7ChestPlayers[player.name] = true; 
		
		if not gift7ChestResetTimerRunning then
			gift7ChestResetTimerRunning = true;
			gift7ChestResetTimer:start();
		end
	end
end

function gift7_reset_chest()
	gift7ChestPlayers = {};
	gift7ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift7_chest", "project33", -1596.0, 66.0, -1147.0, 397);

local gift8 = Location:new(world4, -1625, 64, -1178);
local gift8s = Location:new(world4, -1609.0, 65.0, -1134.0);
local gift8ChestPlayers = {};
local gift8ChestResetTimer = Timer:new("gift8_reset_chest", 20 * 60 * 5);
local gift8ChestResetTimerRunning = false;
local gift8ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift8_chest(data)
	local player = Player:new(data.player);
	if not gift8ChestPlayers[player.name] then
		gift8:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift8s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift8");
		gift8ChestPlayers[player.name] = true; 
		
		if not gift8ChestResetTimerRunning then
			gift8ChestResetTimerRunning = true;
			gift8ChestResetTimer:start();
		end
	end
end

function gift8_reset_chest()
	gift8ChestPlayers = {};
	gift8ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift8_chest", "project33", -1609.0, 65.0, -1134.0, 397);

local gift9 = Location:new(world4, -1625, 64, -1176);
local gift9s = Location:new(world4, -1621.0, 66.0, -1144.0);
local gift9ChestPlayers = {};
local gift9ChestResetTimer = Timer:new("gift9_reset_chest", 20 * 60 * 5);
local gift9ChestResetTimerRunning = false;
local gift9ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift9_chest(data)
	local player = Player:new(data.player);
	if not gift9ChestPlayers[player.name] then
		gift9:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift9s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift9");
		gift9ChestPlayers[player.name] = true; 
		
		if not gift9ChestResetTimerRunning then
			gift9ChestResetTimerRunning = true;
			gift9ChestResetTimer:start();
		end
	end
end

function gift9_reset_chest()
	gift9ChestPlayers = {};
	gift9ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift9_chest", "project33", -1621.0, 66.0, -1144.0, 397);

local gift10 = Location:new(world4, -1625, 64, -1174);
local gift10s = Location:new(world4, -1648.0, 68.0, -1179.0);
local gift10ChestPlayers = {};
local gift10ChestResetTimer = Timer:new("gift10_reset_chest", 20 * 60 * 5);
local gift10ChestResetTimerRunning = false;
local gift10ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift10_chest(data)
	local player = Player:new(data.player);
	if not gift10ChestPlayers[player.name] then
		gift10:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift10s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift10");
		gift10ChestPlayers[player.name] = true; 
		
		if not gift10ChestResetTimerRunning then
			gift10ChestResetTimerRunning = true;
			gift10ChestResetTimer:start();
		end
	end
end

function gift10_reset_chest()
	gift10ChestPlayers = {};
	gift10ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift10_chest", "project33", -1648.0, 68.0, -1179.0, 397);

local gift11 = Location:new(world4, -1625, 64, -1172);
local gift11s = Location:new(world4, -1742.0, 75.0, -1276.0);
local gift11ChestPlayers = {};
local gift11ChestResetTimer = Timer:new("gift11_reset_chest", 20 * 60 * 5);
local gift11ChestResetTimerRunning = false;
local gift11ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift11_chest(data)
	local player = Player:new(data.player);
	if not gift11ChestPlayers[player.name] then
		gift11:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift11s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift11");
		gift11ChestPlayers[player.name] = true; 
		
		if not gift11ChestResetTimerRunning then
			gift11ChestResetTimerRunning = true;
			gift11ChestResetTimer:start();
		end
	end
end

function gift11_reset_chest()
	gift11ChestPlayers = {};
	gift11ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift11_chest", "project33", -1742.0, 75.0, -1276.0, 397);

local gift12 = Location:new(world4, -1625, 64, -1170);
local gift12s = Location:new(world4, -1732.0, 92.0, -1239.0);
local gift12ChestPlayers = {};
local gift12ChestResetTimer = Timer:new("gift12_reset_chest", 20 * 60 * 5);
local gift12ChestResetTimerRunning = false;
local gift12ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift12_chest(data)
	local player = Player:new(data.player);
	if not gift12ChestPlayers[player.name] then
		gift12:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift12s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift12");
		gift12ChestPlayers[player.name] = true; 
		
		if not gift12ChestResetTimerRunning then
			gift12ChestResetTimerRunning = true;
			gift12ChestResetTimer:start();
		end
	end
end

function gift12_reset_chest()
	gift12ChestPlayers = {};
	gift12ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift12_chest", "project33", -1732.0, 92.0, -1239.0, 397);

local gift13 = Location:new(world4, -1625, 64, -1168);
local gift13s = Location:new(world4, -1767.0, 84.0, -1176.0);
local gift13ChestPlayers = {};
local gift13ChestResetTimer = Timer:new("gift13_reset_chest", 20 * 60 * 5);
local gift13ChestResetTimerRunning = false;
local gift13ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift13_chest(data)
	local player = Player:new(data.player);
	if not gift13ChestPlayers[player.name] then
		gift13:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift13s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift13");
		gift13ChestPlayers[player.name] = true; 
		
		if not gift13ChestResetTimerRunning then
			gift13ChestResetTimerRunning = true;
			gift13ChestResetTimer:start();
		end
	end
end

function gift13_reset_chest()
	gift13ChestPlayers = {};
	gift13ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift13_chest", "project33", -1767.0, 84.0, -1176.0, 397);

local gift14 = Location:new(world4, -1625, 64, -1166);
local gift14s = Location:new(world4, -1734.0, 77.0, -1159.0);
local gift14ChestPlayers = {};
local gift14ChestResetTimer = Timer:new("gift14_reset_chest", 20 * 60 * 5);
local gift14ChestResetTimerRunning = false;
local gift14ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift14_chest(data)
	local player = Player:new(data.player);
	if not gift14ChestPlayers[player.name] then
		gift14:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift14s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift14");
		gift14ChestPlayers[player.name] = true; 
		
		if not gift14ChestResetTimerRunning then
			gift14ChestResetTimerRunning = true;
			gift14ChestResetTimer:start();
		end
	end
end

function gift14_reset_chest()
	gift14ChestPlayers = {};
	gift14ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift14_chest", "project33", -1734.0, 77.0, -1159.0, 397);

local gift15 = Location:new(world4, -1625, 64, -1164);
local gift15s = Location:new(world4, -1707.0, 78.0, -1133.0);
local gift15ChestPlayers = {};
local gift15ChestResetTimer = Timer:new("gift15_reset_chest", 20 * 60 * 5);
local gift15ChestResetTimerRunning = false;
local gift15ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift15_chest(data)
	local player = Player:new(data.player);
	if not gift15ChestPlayers[player.name] then
		gift15:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift15s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift15");
		gift15ChestPlayers[player.name] = true; 
		
		if not gift15ChestResetTimerRunning then
			gift15ChestResetTimerRunning = true;
			gift15ChestResetTimer:start();
		end
	end
end

function gift15_reset_chest()
	gift15ChestPlayers = {};
	gift15ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift15_chest", "project33", -1707.0, 78.0, -1133.0, 397);

local gift16 = Location:new(world4, -1625, 64, -1162);
local gift16s = Location:new(world4, -1688.0, 78.0, -1167.0);
local gift16ChestPlayers = {};
local gift16ChestResetTimer = Timer:new("gift16_reset_chest", 20 * 60 * 5);
local gift16ChestResetTimerRunning = false;
local gift16ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift16_chest(data)
	local player = Player:new(data.player);
	if not gift16ChestPlayers[player.name] then
		gift16:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift16s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift16");
		gift16ChestPlayers[player.name] = true; 
		
		if not gift16ChestResetTimerRunning then
			gift16ChestResetTimerRunning = true;
			gift16ChestResetTimer:start();
		end
	end
end

function gift16_reset_chest()
	gift16ChestPlayers = {};
	gift16ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift16_chest", "project33", -1688.0, 78.0, -1167.0, 397);

local gift17 = Location:new(world4, -1625, 64, -1160);
local gift17s = Location:new(world4, -1708.0, 79.0, -1208.0);
local gift17ChestPlayers = {};
local gift17ChestResetTimer = Timer:new("gift17_reset_chest", 20 * 60 * 5);
local gift17ChestResetTimerRunning = false;
local gift17ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift17_chest(data)
	local player = Player:new(data.player);
	if not gift17ChestPlayers[player.name] then
		gift17:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift17s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift17");
		gift17ChestPlayers[player.name] = true; 
		
		if not gift17ChestResetTimerRunning then
			gift17ChestResetTimerRunning = true;
			gift17ChestResetTimer:start();
		end
	end
end

function gift17_reset_chest()
	gift17ChestPlayers = {};
	gift17ChestResetTimerRunning = false;
end
 
registerHook("LEFT_CLICK_BLOCK", "gift17_chest", "project33", -1708.0, 79.0, -1208.0, 397);

local gift18 = Location:new(world4, -1625, 64, -1158);
local gift18s = Location:new(world4, -1752.0, 78.0, -1222.0);
local gift18ChestPlayers = {};
local gift18ChestResetTimer = Timer:new("gift18_reset_chest", 20 * 60 * 5);
local gift18ChestResetTimerRunning = false;
local gift18ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift18_chest(data)
	local player = Player:new(data.player);
	if not gift18ChestPlayers[player.name] then
		gift18:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift18s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendMessage('&7Test Debug');
                player:addPermission("runsafe.event.gift18");
		gift18ChestPlayers[player.name] = true; 
		
		if not gift18ChestResetTimerRunning then
			gift18ChestResetTimerRunning = true;
			gift18ChestResetTimer:start();
		end
	end
end

function gift18_reset_chest()
	gift18ChestPlayers = {};
	gift18ChestResetTimerRunning = false;
end

registerHook("LEFT_CLICK_BLOCK", "gift18_chest", "project33", -1752.0, 78.0, -1222.0, 397);

