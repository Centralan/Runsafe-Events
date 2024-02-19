local world = World:new('survival3');  --temple world
local ts = AI:new("Temple Sentinel", "AI", "dergamir"); --temple ai
local templechest1 = Location:new(world, -30856.0, 36.0, 34877.0); --loot chest
local templechest2 = Location:new(world, -30854.0, 36.0, 34877.0); --loot chest
local templechest3 = Location:new(world, -30852.0, 36.0, 34877.0); --loot chest
local templechest4 = Location:new(world, -30850.0, 36.0, 34881.0); --loot chest
local templechest5 = Location:new(world, -30852.0, 36.0, 34881.0); --loot chest
local templechest6 = Location:new(world, -30854.0, 36.0, 34881.0); --loot chest
local templechest7 = Location:new(world, -30848.0, 36.0, 34881.0); --loot chest
local emerald = Location:new(world, -30856.0, 36.0, 34881.0); --loot chest
local templesound = Location:new(world, -30869.0, 24.0, 34885.0); --temple sound source
local templesound2 = Location:new(world, -30838.0, 26.0, 34837.0); --temple sound source
local temple_tp_out = Location:new(world, -30936.610, 207.0, 35071.649); --outside temple drop
local templelightning1 = Location:new("survival3", -30871.0, 25.0, 34893.0); --charged creeper trap
local temple_tp_out2 = Location:new(world, -30887.924, 12.0, 34816.526); --lava drop trap
local tlight1 = Location:new("survival3", -30853.0, 84.0, 34909.0); -- enter lightning 1
local tlight2 = Location:new("survival3", -30853.0, 84.0, 34865.0); -- enter lightning 2
local tlight3 = Location:new("survival3", -30897.0, 84.0, 34865.0); -- enter lightning 3
local tlight4 = Location:new("survival3", -30897.0, 84.0, 34909.0); -- enter lightning 4
local tlight5 = Location:new("survival3", -30811.0, 123.0, 34959.0); -- enter lightning 5
local tlight6 = Location:new("survival3", -30828.0, 116.0, 34868.0); -- enter lightning 6
local tlight7 = Location:new("survival3", -30908.0, 103.0, 34814.0); -- enter lightning 7
local tlight8 = Location:new("survival3", -30957.0, 99.0, 34903.0); -- enter lightning 8

-------------------------------------------
---------------Welcome-----------------
-------------------------------------------

function temple_welcome(data)
        local player = Player:new(data.player);
          if not player:hasPermission("runsafe.temple.found") then
              ts:speak( player.name .. " has uncovered the Temple Of The Unknown.");
              player:sendMessage("&4[D] &bTemple Sentinel&f: Dark magic readings have been rising since you're arrival..");
              player:sendEvent("achievement.templeunknown");
              player:addPermission("runsafe.temple.found");
		worldsound:playSound('ENTITY_WITHER_SPAWN', 10000, 1);
	        tlight1:lightningStrike();
		tlight2:lightningStrike();
		tlight3:lightningStrike();
		tlight4:lightningStrike();
		tlight5:lightningStrike();
		tlight6:lightningStrike();
		tlight7:lightningStrike();
		tlight8:lightningStrike();	
  end
end

function temple_door_remove(data)
            local player = Player:new(data.player);
                  EventEngine.player.removePotionEffects(player.name, 'NIGHT_VISION');
          end

registerHook("REGION_ENTER", "temple_welcome", "survival3-temple");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_start");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear1");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear2");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear3");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear4");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear5");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear6");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear7");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear8");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear9");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear10");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear11");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear12");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear13");
registerHook("REGION_ENTER", "temple_door_remove", "survival3-temple_clear14");

-------------------------------------------
---------------Loot Chests-----------------
-------------------------------------------

function templechest_1(data)
        local player = Player:new(data.player);
              templechest1:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end

function templechest_2(data)
        local player = Player:new(data.player);
              templechest2:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end

function templechest_3(data)
        local player = Player:new(data.player);
              templechest3:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end

function templechest_4(data)
        local player = Player:new(data.player);
              templechest4:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end

function templechest_5(data)
        local player = Player:new(data.player);
              templechest5:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end

function templechest_6(data)
        local player = Player:new(data.player);
              templechest6:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end

function templechest_7(data)
        local player = Player:new(data.player);
              templechest7:cloneChestToPlayer(player.name);
              player:closeInventory();
--              player:sendMessage("&cThat was risky...");
end


registerHook("INTERACT", "templechest_1", 146, "survival3", -30849.0, 22.0, 34882.0);
registerHook("INTERACT", "templechest_2", 146, "survival3", -30855.0, 13.0, 34877.0);
registerHook("INTERACT", "templechest_3", 146, "survival3", -30851.0, 5.0, 34890.0);
registerHook("INTERACT", "templechest_4", 146, "survival3", -30879.0, 20.0, 34908.0);
registerHook("INTERACT", "templechest_5", 146, "survival3", -30891.0, 12.0, 34817.0);
registerHook("INTERACT", "templechest_6", 146, "survival3", -30854.0, 5.0, 34879.0);
registerHook("INTERACT", "templechest_7", 54, "survival3", -30875.0, 20.0, 34864.0);


-------------------------------------------
---------------empty Chests-----------------
-------------------------------------------

function templechest_bite(data)
        local player = Player:new(data.player);
              player:closeInventory();
--              player:sendMessage("&4[D] &bTemple Sentinel&f: Things are never as they seem here..");
              player:setHealth(5);
end

function templechest_bite2(data)
        local player = Player:new(data.player);
              player:closeInventory();
--              player:sendMessage("&4[D] &bTemple Sentinel&f: Mimic's are some nasty things arn't they?");
              player:setHealth(3);
end

function templechest_bite3(data)
        local player = Player:new(data.player);
              player:closeInventory();
--              player:sendMessage("&4[D] &bTemple Sentinel&f: That was a nasty one, no two Mimics are the same..");
              player:setHealth(1);
end

function templechest_bite4(data)
        local player = Player:new(data.player);
              player:closeInventory();
--              player:sendMessage("&4[D] &bTemple Sentinel&f: We study you for a living, you're nothing but predictable..");
              player:setHealth(0);
              templelightning1:lightningStrike();
end

function templechest_bite5(data)
        local player = Player:new(data.player);
              player:closeInventory();
--              player:sendMessage("&4[D] &bTemple Sentinel&f: You really are showing my creators your temptations..");
              player:setHealth(5);
              EventEngine.player.addPotionEffect(player.name, 'POISON', 10, 10);
end


registerHook("INTERACT", "templechest_bite", 54, "survival3", -30880.0, 31.0, 34921.0);
registerHook("INTERACT", "templechest_bite2", 54, "survival3", -30881.0, 40.0, 34883.0);
registerHook("INTERACT", "templechest_bite3", 54, "survival3", -30872.0, 47.0, 34895.0);
registerHook("INTERACT", "templechest_bite4", 54, "survival3", -30830.0, 7.0, 34887.0);
registerHook("INTERACT", "templechest_bite4", 146, "survival3", -30826.0, 18.0, 34887.0);
registerHook("INTERACT", "templechest_bite5", 54, "survival3", -30900.0, 14.0, 34850.0);
registerHook("INTERACT", "templechest_bite5", 146, "survival3", -30791.0, 14.0, 34849.0);

---------------------------------------------
---------------no code traps-----------------
---------------------------------------------

function templemob_2(data)
        local player = Player:new(data.player);
             player:sendMessage("&4[D] &bTemple Sentinel&f: Everything here is working to stop you..");
end

function templefall_trap(data)
        local player = Player:new(data.player);
              player:sendMessage("&4[D] &bTemple Sentinel&f: May your items be sacrificed for the greater good..");
end


function templemob_3(data)
        local player = Player:new(data.player);
--              player:sendMessage("&4[D] &bTemple Sentinel&f: We too have learned to harness the power of lightning..");
              templelightning1:lightningStrike();
              player:setHealth(6);
end

function templemob_4(data)
        local player = Player:new(data.player);
--              player:sendMessage("&4[D] &bTemple Sentinel&f: You are considered a mere peasant in comparison to us..");
              player:setHealth(6);
end

function temple_fireball(data)
        local player = Player:new(data.player);
--              player:sendMessage("&4[D] &bTemple Sentinel&f: These came special from our most prized creation..");
              player:setHealth(12);
end

function temple_fireball2(data)
        local player = Player:new(data.player);
--              player:sendMessage("&4[D] &bTemple Sentinel&f: These came special from our most prized creation..");
              player:setHealth(6);
end


--registerHook("REGION_ENTER", "templemob_2", "survival3-temple_ai_2");
--registerHook("REGION_ENTER", "templemob_2", "survival3-temple_ai_3");
--registerHook("REGION_ENTER", "templefall_trap", "survival3-temple_ai_4");
--registerHook("REGION_ENTER", "templefall_trap", "survival3-temple_ai_5");
registerHook("REGION_ENTER", "templemob_3", "survival3-temple_ai_6");
registerHook("REGION_ENTER", "templemob_4", "survival3-temple_ai_7");
registerHook("REGION_ENTER", "temple_fireball", "survival3-temple_fireballs");
registerHook("REGION_ENTER", "temple_fireball2", "survival3-temple_fireballs2");

-------------------------------------------
---------------Code Traps------------------
-------------------------------------------

function kill_chest(data)
	local player = Player:new(data["player"]);
	      player:setHealth(0);
--        player:sendMessage("&4[D] &bTemple Sentinel&f: You need to prove your worth to be here..");
end

registerHook("INTERACT", "kill_chest", 146, "survival3", -30882.0, 37.0, 34896.0);
registerHook("INTERACT", "kill_chest", 146, "survival3", -30820.0, 13.0, 34859.0);
registerHook("INTERACT", "kill_chest", 146, "survival3", -30844.0, 26.0, 34832.0);

local world = "survival3";
local fall1current = 1;
local fall1maxData = 1;
local fall1blocks = {
          Location:new(world, -30871.0 , 24.0, 34886.0),
          Location:new(world, -30871.0 , 24.0, 34885.0),
          Location:new(world, -30871.0 , 24.0, 34884.0),
          Location:new(world, -30870.0 , 24.0, 34886.0),
          Location:new(world, -30870.0 , 24.0, 34885.0),
          Location:new(world, -30870.0 , 24.0, 34884.0),
          Location:new(world, -30867.0 , 23.0, 34886.0),
          Location:new(world, -30867.0 , 23.0, 34885.0),
          Location:new(world, -30867.0 , 23.0, 34884.0),
          Location:new(world, -30866.0 , 23.0, 34886.0),
          Location:new(world, -30866.0 , 23.0, 34885.0),
          Location:new(world, -30866.0 , 23.0, 34884.0),
          Location:new(world, -30865.0 , 23.0, 34886.0),
          Location:new(world, -30865.0 , 23.0, 34885.0),
          Location:new(world, -30865.0 , 23.0, 34884.0),
          Location:new(world, -30864.0 , 23.0, 34886.0),
          Location:new(world, -30864.0 , 23.0, 34885.0),
          Location:new(world, -30864.0 , 23.0, 34884.0),


};

function fall_1_pit(data)
        if fall1current == fall1maxData then
                fall1current = 1;
        else
                fall1current = fall1current + 1;
        end
        fall_1_setair();
end

function fall_1_setair()
        for index, key in ipairs(fall1blocks) do
                key:setBlock(0, fall1current);
end
end

function fall_1_setstone()
        for index, key in ipairs(fall1blocks) do
                key:setBlock(1, fall1current);
end
end

function fall_1_sound()
            templesound:playSound('BLOCK_PISTON_CONTRACT', 1, 1);
end

registerHook("REGION_ENTER", "fall_1_setair", "survival3-temple_fall1");
registerHook("REGION_ENTER", "fall_1_sound", "survival3-temple_fall1");
registerHook("REGION_ENTER", "fall_1_setstone", "survival3-temple_fall2");
registerHook("REGION_ENTER", "fall_1_setstone", "survival3-temple_fall6");
registerHook("REGION_ENTER", "fall_1_setstone", "survival3-temple_fall7");


function wither_effect(data)
	local player = Player:new(data["player"]);
	         EventEngine.player.addPotionEffect(player.name, 'WITHER', 30, 30);
--           player:sendMessage("&4[D] &bTemple Sentinel&f: My creators see the conflict that tears your world apart..");
end

function confus_effect(data)
	local player = Player:new(data["player"]);
	         EventEngine.player.addPotionEffect(player.name, 'CONFUSION', 100, 10);
--           player:sendMessage("&4[D] &bTemple Sentinel&f: We sent them here in hopes to scare you off..");
end

registerHook("REGION_ENTER", "wither_effect", "survival3-temple_effect");
registerHook("REGION_ENTER", "confus_effect", "survival3-temple_effect2");
registerHook("INTERACT", "wither_effect", 146, "survival3", -30842.0, 33.0, 34882.0);


function temple_out(data)
	local player = Player:new(data.player);
	        player:teleport(temple_tp_out);
          EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
--          player:sendMessage("&4[D] &bTemple Sentinel&f: Dimensions overlap here due to the overflow of magic from the portal..");
end

function temple_out2(data)
	local player = Player:new(data.player);
	        player:teleport(temple_tp_out2);
          EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
--          player:sendMessage("&4[D] &bTemple Sentinel&f: Just like you will also get joy from punching our pray.");
          player:setHealth(10);
end

registerHook("REGION_ENTER", "temple_out", "survival3-temple_out");
registerHook("REGION_ENTER", "temple_out2", "survival3-temple_punch");
registerHook("REGION_ENTER", "temple_out", "survival3-temple_out2");

local world = "survival3";
local fall2current = 1;
local fall2maxData = 1;
local fall2blocks = {
        Location:new(world, -30835.0 , 25.0, 34837.0),
	Location:new(world, -30836.0 , 25.0, 34837.0),
	Location:new(world, -30836.0 , 26.0, 34837.0),
	Location:new(world, -30836.0 , 25.0, 34836.0),
	Location:new(world, -30835.0 , 24.0, 34835.0),
	Location:new(world, -30836.0 , 24.0, 34835.0),
	Location:new(world, -30837.0 , 24.0, 34835.0),
	Location:new(world, -30835.0 , 24.0, 34836.0),
	Location:new(world, -30836.0 , 24.0, 34836.0),
	Location:new(world, -30837.0 , 24.0, 34836.0),
	Location:new(world, -30835.0 , 24.0, 34837.0),
	Location:new(world, -30836.0 , 24.0, 34837.0),
	Location:new(world, -30837.0 , 24.0, 34837.0),



};

function fall_2_pit(data)
        if fall2current == fall2maxData then
                fall2current = 1;
        else
                fall2current = fall2current + 1;
        end
        fall_2_setair();
end

function fall_2_setair()
        for index, key in ipairs(fall2blocks) do
                key:setBlock(0, fall2current);
end
end

function fall_2_setstone()
        for index, key in ipairs(fall2blocks) do
                key:setBlock(1, fall2current);
end
end

function fall_2_sound()
            templesound2:playSound('BLOCK_PISTON_CONTRACT', 1, 1);
end

registerHook("REGION_ENTER", "fall_2_setair", "survival3-temple_fall3");
registerHook("REGION_ENTER", "fall_2_setstone", "survival3-temple_fall4");
registerHook("REGION_ENTER", "fall_2_setstone", "survival3-temple_fall5");
registerHook("REGION_ENTER", "fall_2_setstone", "survival3-temple_fall8");

local world = "survival3";
local fall3current = 1;
local fall3maxData = 1;
local fall3blocks = {
        Location:new(world, -30862.0 , 26.0, 34854.0),
        Location:new(world, -30862.0 , 26.0, 34853.0),
        Location:new(world, -30862.0 , 26.0, 34852.0),
        Location:new(world, -30863.0 , 26.0, 34854.0),
        Location:new(world, -30863.0 , 26.0, 34853.0),
        Location:new(world, -30863.0 , 26.0, 34852.0),
        Location:new(world, -30864.0 , 26.0, 34854.0),
        Location:new(world, -30864.0 , 26.0, 34853.0),
        Location:new(world, -30864.0 , 26.0, 34852.0),
};

function fall_3_pit(data)
        if fall3current == fall3maxData then
                fall3current = 1;
        else
                fall3current = fall3current + 1;
        end
        fall_3_setair();
end

function fall_3_setair()
        for index, key in ipairs(fall3blocks) do
                key:setBlock(0, fall3current);
end
end

function fall_3_setstone()
        for index, key in ipairs(fall3blocks) do
                key:setBlock(1, fall3current);
end
end

registerHook("REGION_ENTER", "fall_3_setair", "survival3-temple_fall10");
registerHook("REGION_ENTER", "fall_3_setstone", "survival3-temple_fall11");
registerHook("REGION_ENTER", "fall_3_setstone", "survival3-temple_fall12");
registerHook("REGION_ENTER", "fall_3_setstone", "survival3-temple_fall13");

-------------------------------------------------
------------------Portal Room Door---------------
-------------------------------------------------

local emeraldChestPlayers = {};
local emeraldChestResetTimer = Timer:new("emerald_reset_chest", 200 * 600 * 50);
local emeraldChestResetTimerRunning = false;
local emeraldChestOpen = Location:new(world, -61.0, 65.0, -513.0);;

function emerald_reset_chest()
	emeraldChestPlayers = {};
	emeraldChestResetTimerRunning = false;
end

function emerald_chest(data)
        local player = Player:new(data.player);
        if not emeraldChestPlayers[player.name] then
                emerald:cloneChestToPlayer(player.name);
                player:closeInventory();
		emeraldChestPlayers[player.name] = true;
		player:playSound('ENTITY_GHAST_AMBIENT', 1, 0.5);
		player:addPermission("runsafe.temple.emerald");
	if emeraldChestPlayers[player.name] then
	          player:sendMessage('&7Something shiny pops out.');
                  player:closeInventory();
                if not emeraldChestResetTimerRunning then
                        emeraldChestResetTimerRunning = true;
                        emeraldChestResetTimer:start();
                     end
                end
        end
end
		
function temple_emerarld_check2(data)
        local player = Player:new(data.player);
          if player:hasPermission("runsafe.temple.emerald") then
	else
          if not player:hasPermission("runsafe.temple.emerald") then
	         player:setHealth(0);

		end
	end
end

function temple_p_door(data)
        local player = Player:new(data.player);
          if not player:hasPermission("runsafe.temple.portal.found") then
              ts:speak( player.name .. " has uncovered the Portal To The Unknown.");
              player:sendMessage("&4[D] &bTemple Sentinel&f: Dark magic readings are off the charts here..");
              player:addPermission("runsafe.temple.portal.found");
	        player:playSound('UI_TOAST_CHALLENGE_COMPLETE', 1, 1);
	        tlight1:lightningStrike();
		tlight2:lightningStrike();
		tlight3:lightningStrike();
		tlight4:lightningStrike();
		tlight5:lightningStrike();
		tlight6:lightningStrike();
		tlight7:lightningStrike();
		tlight8:lightningStrike();	
  end
end

--registerHook("INTERACT", "emerald_chest", 54, "survival3", -30880.0, 10.0, 34879.0);
registerHook("REGION_ENTER", "temple_emerarld_check2", "survival3-temple_emerald2");
registerHook("REGION_ENTER", "temple_p_door", "survival3-temple_portal_door");



-------------------------------------------------
-------------------Portal------------------------
-------------------------------------------------
