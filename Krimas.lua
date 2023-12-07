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
	  player:sendMessage('&aLet the hunt begin.');
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

registerHook("INTERACT", "beans_snow", 61, "survival3", 18446, 66, -17257);

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
