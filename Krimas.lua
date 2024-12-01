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

local graveweep = Location:new(world4, -1706, 81, -1137);

function grave_cry(data)
	    local player = Player:new(data.player);
	     if player:hasPermission("runsafe.event.weep") then
		local message = data.message;
		if hasPrefix(message, "weep") then
			local playerName = splitPlayerName(message, 16);
			   player:sendMessage("&cThe grave reacts to your emotions.");
			   graveweep:playSound('ENTITY_GHAST_AMBIENT', 1, 0.5);
			   player:addPermission("runsafe.event.weepd");
			end
		end
	end

registerHook("CHAT_MESSAGE", "grave_cry", "project33");

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
	  --player:sendMessage('&cKrimas soon');
            --event_start_sound:playSound('ENTITY_VILLAGER_NO', 1, 0.2);	
	  event_start_book:cloneChestToPlayer(player.name);
	  player:closeInventory();
	  player:sendMessage('&aLet the Trials begin.');
	  player:sendEvent("achievement.krimas");
	  event_start_sound:playSound('ENTITY_VEX_CHARGE', 1, 0.2);
end
	
registerHook("INTERACT", "event_start", 143, "survival3", 19536, 70, -20810);
--registerHook("INTERACT", "event_start", 143, "survival3", 19540, 70, -20810);	
registerHook("INTERACT", "event_start", 143, "survival3", 19536, 70, -20810);
--registerHook("INTERACT", "event_start", 143, "survival3", 19540, 70, -20810);

-------------------
--Event Perms ------
-------------------
--runsafe.event.trees
--runsafe.event.emerald
--runsafe.event.flower
--runsafe.event.beacon
--runsafe.event.feather
--runsafe.event.dog
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
		player:teleport(event_tp_p33);
		event_tp_sound:playSound('UI_TOAST_CHALLENGE_COMPLETE', 1, 1);
		xmas4:speak( player.name .. " has crossed to the Wonderland.");
		player:sendMessage('&aYou have received a checkpoint! You can return here with /krimas until you comeplete this part of the event.');
		player:addPermission("runsafe.warp.use.krimas");
--                player:sendEvent("achievement.trialsofkrimas");
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
end


registerHook("REGION_ENTER", "end_event", "survival3-hunt_tp");

---------------
--Task 1 --
---------------
--warp hunt1
--18946,-21854

local framechest = Location:new(world, 18947.0, 112.0, -21580.0);

function find_trees(data)
local player = Player:new(data.player);
        if not player:hasPermission("runsafe.event.1") then
		framechest:cloneChestToPlayer(player.name);
		player:closeInventory();
		 xmas:speak( player.name .. " has completed Trial 1.");
	         player:sendMessage('&7Something seems weird about these trees, almost like the server made them.');
	         player:sendMessage('&7Why would an Admin do this? Maybe I can find something here to build the portal.');
                 player:addPermission("runsafe.event.trees"); 
                 player:addPermission("runsafe.event.1");
				end
			end

function find_trees2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.1") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end
registerHook("REGION_ENTER", "find_trees", "survival3-hunt_1");
registerHook("REGION_ENTER", "find_trees2", "survival3-hunt_1");

---------------
--Task 2 --
---------------
--warp hunt2
--18444,-17258
---------------------

local beanschest = Location:new(world, 18444.0, 62.0, -17258.0);
		
function beans_snow(data)
	local player = Player:new(data.player);
        if not player:hasPermission("runsafe.event.2") then
	if player:hasPermission("runsafe.event.igloo") then
		beanschest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 2.");
                player:sendMessage('&7Someone is into some weird stuff...');
                player:addPermission("runsafe.event.emerald");
                player:addPermission("runsafe.event.2");
						end
					end
end		

function igloo_perm1(data)
		local player = Player:new(data.player);
		player:addPermission("runsafe.event.igloo");
end

registerHook("REGION_ENTER", "igloo_perm1", "survival3-igloo");

function igloo_perm2(data)
		local player = Player:new(data.player);
		player:removePermission("runsafe.event.igloo");
end

registerHook("REGION_LEAVE", "igloo_perm2", "survival3-igloo");

registerHook("PLAYER_ITEM_DROP", "beans_snow", "survival3", 264);

---------------
--Task 3 --
---------------
--warp hunt3
--37044,22486

local flowerchest = Location:new(world, 37044.0, 34.0, -22486.0);

function space_crash(data)
	local player = Player:new(data.player);
	        if not player:hasPermission("runsafe.event.3") then
		flowerchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 3.");
                player:sendMessage('&7Seems whatever caused this metor to crash left a ... flower?');
		player:sendMessage('&7The flower has a strange glow to it. I wonder where it came from?');
		player:sendMessage('&9[?] &bSP&4E&bNCE&4R&f: &kbto wpt mt&f.');
                player:addPermission("runsafe.event.flower");
		player:addPermission("runsafe.event.3");
				end
			end

function space_crash3(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.3") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("INTERACT", "space_crash", 77, "survival3", 37043, 33, -22481);
registerHook("INTERACT", "space_crash3", 77, "survival3", 37043, 33, -22481);

---------------
--Task 4 --
---------------
--warp hunt4
--20758,-21037

local beaconchest = Location:new(world, 20746.0, 85.0, -21014.0);

function cpu_core(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.4") then
		beaconchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 4.");
                player:sendMessage('&7Who knew Runsafe ran on beacons.');
                player:addPermission("runsafe.event.beacon");
		player:addPermission("runsafe.event.4"); 
				end
			end
		
function cpu_core2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.4") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("INTERACT", "cpu_core", 146, "survival3", 20737, 70, -21070);
registerHook("INTERACT", "cpu_core2", 146, "survival3", 20737, 70, -21070);
---------------
--Task 5 --
---------------
--warp hunt5
--19883, 22488

local featherchest = Location:new(world, 19882.0, 62.0, -22489.0);

function feather_reef(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.5") then
		featherchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 5.");
                player:sendMessage('&7I wonder what this feather was used for...');
                player:addPermission("runsafe.event.feather");
		player:addPermission("runsafe.event.5");
				end
			end
		
function feather_reef2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.5") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("INTERACT", "feather_reef", 143, "survival3", 19881.0, 65.0, -22489);
registerHook("INTERACT", "feather_reef2", 143, "survival3", 19881.0, 65.0, -22489);

---------------
--Task 6 --
---------------
--warp hunt6
--spawn


local dragonchest = Location:new(world, 19473.0, 70.0, -20817.0);

function dragon_spawn(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.6") then
		dragonchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 6.");
                player:sendMessage('&7Did DOG experience memory loss?');
                player:addPermission("runsafe.event.dog");
		player:addPermission("runsafe.event.6");
				end
			end
		
function dragon_spawn2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.6") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("INTERACT", "dragon_spawn", 143, "survival3", 19473.0, 73.0, -20817.0);
registerHook("INTERACT", "dragon_spawn2", 143, "survival3", 19473.0, 73.0, -20817.0);

---------------
--Task 7 --
---------------
--warp hunt7
--pleco_city

local plecochest = Location:new(world, 19478.0, 70.0, -20817.0);

function pleco_city(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.7") then
		plecochest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 7.");
                player:sendMessage('&7Man this city is almost majestic looking, it might even be the best.');
                player:addPermission("runsafe.event.city");
		player:addPermission("runsafe.event.7"); 
				end
			end
		
function pleco_city2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.7") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("INTERACT", "pleco_city", 143, "creative", -1167.0, 249.0, -1406.0);
registerHook("INTERACT", "pleco_city2", 143, "creative", -1167.0, 249.0, -1406.0);

---------------
--Task 8 --
---------------
--skylimit

local skychest = Location:new(world, 19534.0, 69.0, -20762.0);
			
function sky_limit(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.8") then
		skychest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas:speak( player.name .. " has completed Trial 8.");
                player:sendMessage('&7Thats a long way down.');
                player:addPermission("runsafe.event.sky");
		player:addPermission("runsafe.event.8");  
				end
			end
			
function sky_limit2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.8") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end
registerHook("REGION_ENTER", "sky_limit", "survival3-hunt8");
registerHook("REGION_ENTER", "sky_limit2", "survival3-hunt8");

---------------
--Task 9 --
---------------
--warp hunt9
--skally

local skallychest = Location:new(world2, -21.0, 66.0, -209.0);

function skally_nether(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.9") then
		skallychest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas2:speak( player.name .. " has completed Trial 9.");
                player:sendMessage('&7I wonder who Skalamander was?');
                player:addPermission("runsafe.event.skally");
		player:addPermission("runsafe.event.9");  
				end
			end

function skally_nether2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.9") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("INTERACT", "skally_nether", 143, "survival3_nether", -21.0, 66.0, 211.0);
registerHook("INTERACT", "skally_nether2", 143, "survival3_nether", -21.0, 66.0, 211.0);

---------------
--Task 10 --
---------------
--warp hunt10(hunt10_1)

local azchest = Location:new(world3, 10001.0, 63.0, 10003.0);

function az_tower(data)
	local player = Player:new(data.player);
	if not player:hasPermission("runsafe.event.10") then
		azchest:cloneChestToPlayer(player.name);
		player:closeInventory();
		xmas3:speak( player.name .. " has completed Trial 10.");
                player:sendMessage('&7What even is the Azuren?');
                player:addPermission("runsafe.event.az");
		player:addPermission("runsafe.event.10"); 
				end
			end
		
function az_tower2(data)
local player = Player:new(data.player);
         if player:hasPermission("runsafe.event.10") then
	    player:sendMessage('&cYou have already completed this trial.');
					end
				end

registerHook("REGION_ENTER", "az_tower", "azuren-hunt10_1");
registerHook("REGION_ENTER", "az_tower2", "azuren-hunt10_1");

-------------------
--Portal Check ------
-------------------

function trials_check(data)
          local player = Player:new(data.player);
	   if player:hasPermission("runsafe.event.trees") then
           if player:hasPermission("runsafe.event.emerald") then
           if player:hasPermission("runsafe.event.flower") then
           if player:hasPermission("runsafe.event.beacon") then
           if player:hasPermission("runsafe.event.feather") then
           if player:hasPermission("runsafe.event.dog") then
	   if player:hasPermission("runsafe.event.sky") then
	   if player:hasPermission("runsafe.event.skally") then
	   if player:hasPermission("runsafe.event.az") then
		player:sendMessage('&6The Portal to the Wonderland awaits you!');
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
	
		
registerHook("REGION_ENTER", "trials_check", "survival3-hunt_1");
--registerHook("PLAYER_ITEM_DROP", "trials_check", "survival3", 264);
registerHook("INTERACT", "trials_check", 77, "survival3", 37043, 33, -22481);
registerHook("INTERACT", "trials_check", 146, "survival3", 20737, 70, -21070);
registerHook("INTERACT", "trials_check", 143, "survival3", 19881.0, 65.0, -22489);
registerHook("INTERACT", "trials_check", 143, "survival3", 19473.0, 73.0, -20817.0);
registerHook("INTERACT", "trials_check", 143, "creative", -1167.0, 249.0, -1406.0);
registerHook("REGION_ENTER", "trials_check", "survival3-hunt8");
registerHook("INTERACT", "trials_check", 143, "survival3_nether", -21.0, 66.0, 211.0);
registerHook("REGION_ENTER", "trials_check", "azuren-hunt10_1");


---------------------------
----------Castle Door--------
---------------------------
				
local gatesound = Location:new(world4, -1619.0, 68.0, -1172.0);
local gateY = Location:new(world4, -1619.0, 68.0, -1172.0);
gateY:setYaw(93.3);
gateY:setPitch(-25.4);
		
function castle_gate2(data)
          local player = Player:new(data.player);
	   if player:hasPermission("runsafe.event.lighthouse") then
	   if player:hasPermission("runsafe.event.vt") then
	   if player:hasPermission("runsafe.event.enchant") then
	   if player:hasPermission("runsafe.event.boat") then
	      player:teleport(gateY);
	      gatesound:playSound('UI_TOAST_CHALLENGE_COMPLETE', 1, 1);
	end
end
end
end
end
					
function castle_gate(data)
          local player = Player:new(data.player);
         if not player:hasPermission("runsafe.event.lighthouse") then
	 if not player:hasPermission("runsafe.event.vt") then
	 if not player:hasPermission("runsafe.event.enchant") then
	 if not player:hasPermission("runsafe.event.boat") then
	   player:sendMessage("&7You noticed a rusted lock on the gate.");
	   player:sendMessage("&7You must need a key.");
end
end
end
end
end

registerHook("REGION_ENTER", "castle_gate", "project33-door_check");
registerHook("REGION_ENTER", "castle_gate2", "project33-door_check");

---------------------------
----------Lighthouse--------
---------------------------
				
local event_tp_p33 = Location:new(world4, -1633.404, 65.0, -1340.674);
event_tp_p33:setYaw(0.0);
event_tp_p33:setPitch(2.9);

function lighthouse(data)
        local player = Player:new(data.player);
           player:sendMessage("&7You find a piece of a key in the chest.");
	   player:sendMessage("&7You keep looking for more pieces.");
           player:closeInventory();
           player:teleport(event_tp_p33);
	   player:addPermission("runsafe.event.lighthouse");
end

registerHook("INTERACT", "lighthouse", 54, "project33", -1736.0, 62.0, -1323.0);

---------------------------
----------Village Tower--------
---------------------------
				
local event_tp_p33 = Location:new(world4, -1633.404, 65.0, -1340.674);
event_tp_p33:setYaw(0.0);
event_tp_p33:setPitch(2.9);

function village_tower(data)
        local player = Player:new(data.player);
           player:sendMessage("&7You find a piece of a key in the chest.");
	   player:sendMessage("&7You keep looking for more pieces.");
	   player:closeInventory();
           player:teleport(event_tp_p33);
	   player:addPermission("runsafe.event.vt");
end

registerHook("INTERACT", "village_tower", 54, "project33", -1627.0, 82.0, -1251.0);

---------------------------
----------enchant--------
---------------------------
				
local event_tp_p33 = Location:new(world4, -1633.404, 65.0, -1340.674);
event_tp_p33:setYaw(0.0);
event_tp_p33:setPitch(2.9);

function village_e(data)
        local player = Player:new(data.player);
           player:sendMessage("&7A piece of the key come out of a page.");
	   player:sendMessage("&7You keep looking for more pieces.");
	   player:closeInventory();
           player:teleport(event_tp_p33);
	   player:addPermission("runsafe.event.enchant");
end

registerHook("INTERACT", "village_e", 116, "project33", -1600.0, 67.0, -1133.0);

---------------------------
----------boat--------
---------------------------
				
local event_tp_p33 = Location:new(world4, -1633.404, 65.0, -1340.674);
event_tp_p33:setYaw(0.0);
event_tp_p33:setPitch(2.9);

function boat_c(data)
        local player = Player:new(data.player);
           player:sendMessage("&7You find a piece of a key in the chest.");
	   player:sendMessage("&7You keep looking for more pieces.");
	   player:closeInventory();
           player:teleport(event_tp_p33);
	   player:addPermission("runsafe.event.boat");
end

registerHook("INTERACT", "boat_c", 146, "project33", -1625.0, 63.0, -1367.0);

---------------------------
----------grave--------
---------------------------
		
function grave_perm1(data)
		local player = Player:new(data.player);
		player:addPermission("runsafe.event.weep");
end

registerHook("REGION_ENTER", "grave_perm1", "project33-grave");

function grave_perm2(data)
		local player = Player:new(data.player);
		player:removePermission("runsafe.event.weep");
end

registerHook("REGION_LEAVE", "grave_perm2", "project33-grave");

---------------------------
----------inn--------
---------------------------

local world = "project33";
local firecurrent = 4;
local firemaxData = 4;
local fireblocks = {
        Location:new(world4, -1737.0, 81.0, -1136.0),


};
		
function inn_break(data)
	   local player = Player:new(data.player);
	    if player:hasPermission("runsafe.event.hc") then
		player:sendMessage("&6Poor guy should have made a better house.");
		player:addPermission("runsafe.event.break");
		for index, key in ipairs(fireblocks) do
                key:setBlock(1, firecurrent);
        end
end

end

registerHook("BLOCK_BREAK", "inn_break", "project33", -1737.0, 81.0, -1136.0, 1);

function house_perm1(data)
		local player = Player:new(data.player);
		player:addPermission("runsafe.event.hc");
end

registerHook("REGION_ENTER", "house_perm1", "project33-house_check");

function house_perm2(data)
		local player = Player:new(data.player);
		player:removePermission("runsafe.event.hc");
end

registerHook("REGION_LEAVE", "house_perm2", "project33-house_check");

---------------------------
----------pray--------
---------------------------

local prays = Location:new(world4, -1731.0, 79.0, -1241.0);
		
function tree_pray(data)
	   local player = Player:new(data.player);
	    if player:hasPermission("runsafe.event.log") then
		prays:playSound('BLOCK_NOTE_HARP', 1, 0.5);
		player:sendMessage('&7Sir Krimas shines joy on you.');
		player:addPermission("runsafe.event.pray");
	end
end


registerHook("REGION_ENTER", "tree_pray", "project33-tree_pray");

function tree_perm1(data)
		local player = Player:new(data.player);
		player:addPermission("runsafe.event.log");
end

registerHook("REGION_ENTER", "tree_perm1", "project33-log");

function tree_perm2(data)
		local player = Player:new(data.player);
		player:removePermission("runsafe.event.log");
end

registerHook("REGION_LEAVE", "tree_perm2", "project33-log");

---------------------------
----------final door check--------
---------------------------
local castlesound = Location:new(world4, -1740.0, 78.0, -1175.0);
local castleY = Location:new(world4, -1740.0, 78.0, -1175.0);
local castleN = Location:new(world4, -1679.0, 78.0, -1175.0);
castleY:setYaw(89.3);
castleY:setPitch(1.9);
		
function lobby_gate(data)
          local player = Player:new(data.player);
	   if player:hasPermission("runsafe.event.weepd") then
	   if player:hasPermission("runsafe.event.break") then
	   if player:hasPermission("runsafe.event.pray") then
	      player:teleport(castleY);
	      castlesound:playSound('UI_TOAST_CHALLENGE_COMPLETE', 1, 1);
	end
end
end
end
					
function lobby_gate2(data)
          local player = Player:new(data.player);
         if not player:hasPermission("runsafe.event.weepd") then
	 if not player:hasPermission("runsafe.event.break") then
	 if not player:hasPermission("runsafe.event.pray") then
	   player:sendMessage("&7I must be missing something, let me keep looking.");
	   player:teleport(castleN);
end
end
end
end

registerHook("REGION_ENTER", "lobby_gate", "project33-castle1");
registerHook("REGION_ENTER", "lobby_gate2", "project33-castle1");
registerHook("REGION_ENTER", "lobby_gate", "project33-castle2");
registerHook("REGION_ENTER", "lobby_gate2", "project33-castle2");

---------------------------
----------castle 1--------
---------------------------
local flush = Location:new(world4, -1764.0, 90.0, -1175.0);
local flush2 = Location:new(world4, -1733.0, 81.0, -1184.0);
local castleT = Location:new(world4, -1764.0, 90.0, -1175.0);
castleT:setYaw(-90.1);
castleT:setPitch(9.9);
		
function flush_tp(data)
          local player = Player:new(data.player);
	      player:teleport(castleT);
	      flush:playSound('ITEM_BUCKET_EMPTY', 1, 0.5);
end

function flush_s(data)
          local player = Player:new(data.player);
	      flush2:playSound('ITEM_BUCKET_FILL', 1, 0.5);
end

registerHook("REGION_ENTER", "flush_tp", "project33-flush_tp");
registerHook("INTERACT", "flush_s", 77, "project33", -1733.0, 81.0, -1184.0);

local dooropen = Location:new(world4, -1748.0, 93.0, -1167.0);
local doorclose = Location:new(world4, -1732.0, 90.0, -1176.0);
local world = "project33";
local bookcurrent = 0;
local bookmaxData = 0;
local bookblocks = {
        Location:new(world4, -1739.0, 91.0, -1170.0),
        Location:new(world4, -1739.0, 90.0, -1170.0),
        Location:new(world4, -1739.0, 91.0, -1182.0),
	Location:new(world4, -1739.0, 90.0, -1182.0),
};

function book_break(data)
	   local player = Player:new(data.player);
		player:sendMessage("&7You hear something happen nearby.");
		dooropen:playSound('BLOCK_PISTON_CONTRACT', 1, 0.5);
		for index, key in ipairs(bookblocks) do
                key:setBlock(0, bookcurrent);
        end
end

function book_place(data)
	   local player = Player:new(data.player);
		player:sendMessage("&7You hear the door close behind you...");
		doorclose:playSound('BLOCK_PISTON_EXTEND', 1, 0.5);
		for index, key in ipairs(bookblocks) do
                key:setBlock(47, bookcurrent);
        end
end


registerHook("INTERACT", "book_break", 143, "project33", -1748.0, 93.0, -1167.0);
registerHook("REGION_ENTER", "book_place", "project33-bookclose1");
registerHook("REGION_ENTER", "book_place", "project33-bookclose2");
---------------------------
----------fight--------
---------------------------
local fight_tp = Location:new(world4, -2262.0, 100.0, -1163.0);
fight_tp:setYaw(50.2);
fight_tp:setPitch(-0.4);
		
function fighttp(data)
          local player = Player:new(data.player);
	      player:teleport(fight_tp);
	      EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
              player:addPermission("runsafe.event.boss");
              player:sendMessage("&cI shouldn't be here.");
end

registerHook("REGION_ENTER", "fighttp", "project33-final_tp1");


local bot2 = AI:new("DOG", "AI", "Project33");
---------------
--Gift Handling--
---------------
			
local gift1 = Location:new(world4, -1625, 64, -1192);
local gift1s = Location:new(world4, -1633.0, 65.0, -1336.0);
local gift1ChestPlayers = {};
local gift1ChestResetTimer = Timer:new("gift1_reset_chest", 20 * 60 * 5);
local gift1ChestResetTimerRunning = false;
local gift1ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function g1(data)
	local player = Player:new(data.player);
	if not gift1ChestPlayers[player.name] then
		gift1:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift1s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendTitle("&eGift 1/19", "&6Chew toy covered in drool");
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
                player:sendTitle("&eGift 2/19", "&6Some Charcoal...");
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
                player:sendTitle("&eGift 3/19", "&6Is this a foot??");
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
                player:sendTitle("&eGift 4/19", "&6 Cookies!!!!");
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
                player:sendTitle("&eGift 5/19", "&6Is that a hammer?");
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
                player:sendTitle("&eGift 6/19", "&6Weird");
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
                player:sendTitle("&eGift 7/19", "&6IS THIS THING SIGNED?");
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
                player:sendTitle("&eGift 8/19", "&6I love fresh flowers.");
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
		gift9s:playSound('ENTITY_SHEEP_DEATH', 1, 0.5);
                player:sendTitle("&eGift 9/19", "&6Get Inked!");
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
                player:sendTitle("&eGift 10/19", "&6This proto guy must have been pretty cool.");
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
		gift11s:playSound('ENTITY_HORSE_GALLOP', 1, 0.5);
                player:sendTitle("&eGift 11/19", "&6Awww I miss bumble.");
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
                player:sendTitle("&eGift 12/19", "&6Awww I love weddings!");
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
                player:sendTitle("&eGift 13/19", "&6...creepy");
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
                player:sendTitle("&eGift 14/19", "&6What the heck is that smell.");
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
                player:sendTitle("&eGift 15/19", "&6This smells freshly made.");
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
		gift16s:playSound('ENTITY_PARROT_IMITATE_SLIME', 1, 0.5);
                player:sendTitle("&eGift 16/19", "&6This present was sticky...");
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
                player:sendTitle("&eGift 17/19", "&6This thing is covered in blood.");
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
		gift18s:playSound('ENTITY_TNT_PRIMED', 1, 0.5);
                player:sendTitle("&eGift 18/19", "&6Did that gift just hiss at me?");
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

local gift19 = Location:new(world4, -1625, 64, -1156);
local gift19s = Location:new(world4, -1747.0, 170.0, -1176.0);
local gift19ChestPlayers = {};
local gift19ChestResetTimer = Timer:new("gift19_reset_chest", 20 * 60 * 5);
local gift19ChestResetTimerRunning = false;
local gift19ChestOpen = Location:new(world4, -64.0, 65.0, -515.0);

function gift19_chest(data)
	local player = Player:new(data.player);
	if not gift19ChestPlayers[player.name] then
		gift19:cloneChestToPlayer(player.name);
		player:closeInventory();
		gift19s:playSound('ENTITY_SHULKER_TELEPORT', 1, 0.5);
                player:sendTitle("&eGift 19/19", "&6Man this place looks beautiful.");
                player:addPermission("runsafe.event.gift19");
		gift19ChestPlayers[player.name] = true; 
		
		if not gift19ChestResetTimerRunning then
			gift19ChestResetTimerRunning = true;
			gift19ChestResetTimer:start();
		end
	end
end

function gift19_reset_chest()
	gift19ChestPlayers = {};
	gift19ChestResetTimerRunning = false;
end



registerHook("REGION_ENTER", "g1", "project33-gift1");
registerHook("REGION_ENTER", "gift2_chest", "project33-gift2");
registerHook("REGION_ENTER", "gift3_chest", "project33-gift3");
registerHook("REGION_ENTER", "gift4_chest", "project33-gift4");
registerHook("REGION_ENTER", "gift5_chest", "project33-gift5");
registerHook("REGION_ENTER", "gift6_chest", "project33-gift6");
registerHook("REGION_ENTER", "gift7_chest", "project33-gift7");
registerHook("REGION_ENTER", "gift8_chest", "project33-gift8");
registerHook("REGION_ENTER", "gift9_chest", "project33-gift9");
registerHook("REGION_ENTER", "gift10_chest", "project33-gift10");
registerHook("REGION_ENTER", "gift11_chest", "project33-gift11");
registerHook("REGION_ENTER", "gift12_chest", "project33-gift12");
registerHook("REGION_ENTER", "gift13_chest", "project33-gift13");
registerHook("REGION_ENTER", "gift14_chest", "project33-gift14");
registerHook("REGION_ENTER", "gift15_chest", "project33-gift15");
registerHook("REGION_ENTER", "gift16_chest", "project33-gift16");
registerHook("REGION_ENTER", "gift17_chest", "project33-gift17");
registerHook("REGION_ENTER", "gift18_chest", "project33-gift18");
registerHook("REGION_ENTER", "gift19_chest", "project33-gift19");

local gift100 = Location:new(world4, -1627, 64, -1156);

function gift_cheevee(data)
          local player = Player:new(data.player);
	   if player:hasPermission("runsafe.event.gift1") then
           if player:hasPermission("runsafe.event.gift2") then
           if player:hasPermission("runsafe.event.gift3") then
           if player:hasPermission("runsafe.event.gift4") then
           if player:hasPermission("runsafe.event.gift5") then
           if player:hasPermission("runsafe.event.gift6") then
	   if player:hasPermission("runsafe.event.gift7") then
	   if player:hasPermission("runsafe.event.gift8") then
	   if player:hasPermission("runsafe.event.gift9") then
	   if player:hasPermission("runsafe.event.gift10") then
	   if player:hasPermission("runsafe.event.gift11") then
	   if player:hasPermission("runsafe.event.gift12") then
	   if player:hasPermission("runsafe.event.gift13") then
	   if player:hasPermission("runsafe.event.gift14") then
	   if player:hasPermission("runsafe.event.gift15") then
	   if player:hasPermission("runsafe.event.gift16") then
	   if player:hasPermission("runsafe.event.gift17") then
	   if player:hasPermission("runsafe.event.gift18") then
	   if player:hasPermission("runsafe.event.gift19") then
	        gift100:cloneChestToPlayer(player.name);
		player:closeInventory();
		player:sendMessage('&d Congratulations on finding all the gifts!');
	        bot2:speak( player.name .. " has found all the Krimas gifts!");
	        player:sendEvent("achievement.krimaself");
		player:removePermission("runsafe.event.gift1");
		player:removePermission("runsafe.event.gift2");
	        player:removePermission("runsafe.event.gift3");
		player:removePermission("runsafe.event.gift4");
		player:removePermission("runsafe.event.gift5");
		player:removePermission("runsafe.event.gift6");
	        player:removePermission("runsafe.event.gift7");
	        player:removePermission("runsafe.event.gift8");
		player:removePermission("runsafe.event.gift9");
		player:removePermission("runsafe.event.gift10");
		player:removePermission("runsafe.event.gift11");
		player:removePermission("runsafe.event.gift12");
		player:removePermission("runsafe.event.gift13");
		player:removePermission("runsafe.event.gift14");
		player:removePermission("runsafe.event.gift15");
		player:removePermission("runsafe.event.gift16");
		player:removePermission("runsafe.event.gift17");
		player:removePermission("runsafe.event.gift18");
		player:removePermission("runsafe.event.gift19");
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

registerHook("REGION_ENTER", "gift_cheevee", "project33-gift1");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift2");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift3");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift4");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift5");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift6");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift7");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift8");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift9");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift10");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift11");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift12");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift13");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift14");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift15");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift16");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift17");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift18");
registerHook("REGION_ENTER", "gift_cheevee", "project33-gift19");
