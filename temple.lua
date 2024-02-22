local world = World:new('survival3');  --temple world
local ts = AI:new("Temple Sentinel", "AI", "dergamir"); --temple ai
local templechest1 = Location:new(world, -30856.0, 36.0, 34877.0); --loot chest
local templechest2 = Location:new(world, -30854.0, 36.0, 34877.0); --loot chest
local templechest3 = Location:new(world, -30852.0, 36.0, 34877.0); --loot chest
local templechest4 = Location:new(world, -30850.0, 36.0, 34881.0); --loot chest
local templechest5 = Location:new(world, -30852.0, 36.0, 34881.0); --loot chest
local templechest6 = Location:new(world, -30854.0, 36.0, 34881.0); --loot chest
local templechest7 = Location:new(world, -30848.0, 36.0, 34881.0); --loot chest
local templechest8 = Location:new(world, -30846.0, 36.0, 34880.0); --loot chest
local templechest9 = Location:new(world, -30846.0, 36.0, 34878.0); --loot chest
local templechest10 = Location:new(world, -30848.0, 36.0, 34877.0); --loot chest
local emerald = Location:new(world, -30856.0, 36.0, 34881.0); --loot chest
local templesound = Location:new(world, -30869.0, 24.0, 34885.0); --temple sound source
local templesound2 = Location:new(world, -30838.0, 26.0, 34837.0); --temple sound source
local templesound3 = Location:new(world, -30807.0, 20.0, 34847.0); --temple sound source
local worldsound = Location:new(world, -30838.0, 26.0, 34837.0); --temple sound source
local templespawnsound = Location:new(world, 19475.0, 73.0, -20780.0); --temple sound source
local temple_tp_out = Location:new(world, -30936.610, 207.0, 35071.649); --outside temple drop
local templelightning1 = Location:new("survival3", -30871.0, 25.0, 34893.0); --charged creeper trap
local templelightningE = Location:new("survival3", -30809.0, 19.0, 34846.0); --emerald lightning
local temple_tp_out2 = Location:new(world, -30887.924, 12.0, 34816.526); --lava drop trap
local tlight1 = Location:new("survival3", -30853.0, 84.0, 34909.0); -- enter lightning 1
local tlight2 = Location:new("survival3", -30853.0, 84.0, 34865.0); -- enter lightning 2
local tlight3 = Location:new("survival3", -30897.0, 84.0, 34865.0); -- enter lightning 3
local tlight4 = Location:new("survival3", -30897.0, 84.0, 34909.0); -- enter lightning 4
local tlight5 = Location:new("survival3", -30811.0, 123.0, 34959.0); -- enter lightning 5
local tlight6 = Location:new("survival3", -30828.0, 116.0, 34868.0); -- enter lightning 6
local tlight7 = Location:new("survival3", -30908.0, 103.0, 34814.0); -- enter lightning 7
local trapL1 = Location:new("survival3", -30792.0, 10.0, 34833.0); -- trap lightning 1
local trapL2 = Location:new("survival3", -30792.0, 11.0, 34834.0); -- trap lightning 2
local trapL3 = Location:new("survival3", -30791.0, 11.0, 34834.0); -- trap lightning 3
local trapL4 = Location:new("survival3", -30791.0, 10.0, 34833.0); -- trap lightning 4
local trapL5 = Location:new("survival3", -30791.0, 11.0, 34832.0); -- trap lightning 5
local trapL6 = Location:new("survival3", -30792.0, 11.0, 34831.0); -- trap lightning 6
local trapL7 = Location:new("survival3", -30791.0, 12.0, 34830.0); -- trap lightning 7
local trapL8 = Location:new("survival3", -30793.0, 12.0, 34831.0); -- trap lightning 8
local trapL9 = Location:new("survival3", -30789.0, 11.0, 34833.0); -- trap lightning 9
local trapL10 = Location:new("survival3", -30789.0, 11.0, 34832.0); -- trap lightning 10
local trapL11 = Location:new("survival3", -30790.0, 10.0, 34831.0); -- trap lightning 11
local trapL12 = Location:new("survival3", -30787.0, 10.0, 34833.0); -- trap lightning 12
local trapL13 = Location:new("survival3", -30787.0, 11.0, 34831.0); -- trap lightning 13
local chest1sign = Location:new(world, -30860.0, 37.0, 34881.0); -- sign for chest 1
local chest2sign = Location:new(world, -30861.0, 37.0, 34881.0); -- sign for chest 2
local chest3sign = Location:new(world, -30862.0, 37.0, 34881.0); -- sign for chest 3
local chest4sign = Location:new(world, -30863.0, 37.0, 34881.0); -- sign for chest 4
local chest5sign = Location:new(world, -30864.0, 37.0, 34881.0); -- sign for chest 5
local chest6sign = Location:new(world, -30865.0, 37.0, 34881.0); -- sign for chest 6
local chest7sign = Location:new(world, -30866.0, 37.0, 34881.0); -- sign for chest 7
local chest8sign = Location:new(world, -30867.0, 37.0, 34881.0); -- sign for chest 8
local chest9sign = Location:new(world, -30868.0, 37.0, 34881.0); -- sign for chest 9
local chest10sign = Location:new(world, -30869.0, 37.0, 34881.0); -- sign for chest 10
local tentersign = Location:new(world, -30859.0, 37.0, 34879.0); -- sign for temple entrance
local tfentersign = Location:new(world, -30859.0, 37.0, 34881.0); -- sign for final tunnel
local tchest1sign = Location:new(world, -30859.0, 37.0, 34877.0); -- sign for trap chest 1
local tchest2sign = Location:new(world, -30860.0, 37.0, 34877.0); -- sign for trap chest 2
local tchest3sign = Location:new(world, -30861.0, 37.0, 34877.0); -- sign for trap chest 3
local tchest4sign = Location:new(world, -30862.0, 37.0, 34877.0); -- sign for trap chest 4
local tchest5sign = Location:new(world, -30863.0, 37.0, 34877.0); -- sign for trap chest 5
local tchest6sign = Location:new(world, -30864.0, 37.0, 34877.0); -- sign for trap chest 6
local tchest7sign = Location:new(world, -30865.0, 37.0, 34877.0); -- sign for kill chests
local tmob1sign = Location:new(world, -30866.0, 37.0, 34877.0); -- sign for mob trap 1
local tmob2sign = Location:new(world, -30867.0, 37.0, 34877.0); -- sign for mob trap 1
local tfireball1sign = Location:new(world, -30868.0, 37.0, 34877.0); -- sign for fireball trap 1
local tfireball2sign = Location:new(world, -30869.0, 37.0, 34877.0); -- sign for fireball trap 2
local tlightning1sign = Location:new(world, -30870.0, 37.0, 34877.0); -- sign for lightning trap 1
local twithersign = Location:new(world, -30871.0, 37.0, 34877.0); -- sign for wither trap
local tconfussign = Location:new(world, -30872.0, 37.0, 34877.0); -- sign for confusion trap
local tblind1sign = Location:new(world, -30873.0, 37.0, 34877.0); -- sign for blind trap
local tblind2sign = Location:new(world, -30874.0, 37.0, 34877.0); -- sign for blind trap
local tdragonsign = Location:new(world, -30874.0, 37.0, 34878.0); -- sign for dragon scare
local ttntsign = Location:new(world, -30874.0, 37.0, 34879.0); -- sign for tnt scare
local taarowsign = Location:new(world, -30874.0, 37.0, 34880.0); -- sign for tnt scare
local tlava1sign = Location:new(world, -30870.0, 37.0, 34881.0); -- sign for lava 1 trap
local tlava2sign = Location:new(world, -30871.0, 37.0, 34881.0); -- sign for lava 2 trap
local tendsign = Location:new(world, -30872.0, 37.0, 34881.0); -- sign for end trap
local tdebsign = Location:new(world, -30873.0, 37.0, 34881.0); -- sign for deb trap

local spawn_catch = Location:new(world, 19549.456, 72.0, -20790.600);
spawn_catch:setYaw(-144.2);
spawn_catch:setPitch(0.4);

local etp = Location:new(world, -30806.207, 16.0, -34850.754);
etp:setYaw(90.2);
etp:setPitch(15.6);

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
		worldsound:playSound('ENTITY_WITHER_SPAWN', 10000, 0.5);
	        tlight1:lightningStrike();
		tlight2:lightningStrike();
		tlight3:lightningStrike();
		tlight4:lightningStrike();
		tlight5:lightningStrike();
		tlight6:lightningStrike();
		tlight7:lightningStrike();
		tlight8:lightningStrike();	
		tentersign:setSign('Latest', 'Explorer:', '', player.name);
  end
end

function temple_door_remove(data)
            local player = Player:new(data.player);
                  EventEngine.player.removePotionEffects(player.name, 'NIGHT_VISION');
          end

function panic_room(data)
	local player = Player:new(data.player);
           if player:hasPermission("runsafe.toybox.mode") then
		EventEngine.player.addPotionEffect(player.name, 'NIGHT_VISION', 1000, 1000);
         else
                player:teleport(spawn_catch);
                player:sendTitle("", "&4&k0&cNobody likes a nosy player :] &4&k0&c");
	        player:playSound('ENTITY_SHULKER_AMBIENT', 1, 0.1);
	end
end

function temple_wither_troll(data)
            local player = Player:new(data.player);
                  worldsound:playSound('ENTITY_WITHER_SPAWN', 10000, 3);
                  templespawnsound:playSound('ENTITY_WITHER_SPAWN', 10000, 3);
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
registerHook("REGION_ENTER", "panic_room", "survival3-temple_panicroom");
registerHook("INTERACT", "temple_wither_troll", 143, "survival3", -30859.0, 36.0, 34879.0);

-------------------------------------------
---------------Loot Chests-----------------
-------------------------------------------

function templechest_1(data)
        local player = Player:new(data.player);
              templechest1:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest1sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_2(data)
        local player = Player:new(data.player);
              templechest2:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest2sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_3(data)
        local player = Player:new(data.player);
              templechest3:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest3sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_4(data)
        local player = Player:new(data.player);
              templechest4:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest4sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_5(data)
        local player = Player:new(data.player);
              templechest5:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest5sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_6(data)
        local player = Player:new(data.player);
              templechest6:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest6sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_7(data)
        local player = Player:new(data.player);
              templechest7:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest7sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_8(data)
        local player = Player:new(data.player);
              templechest8:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest8sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_9(data)
        local player = Player:new(data.player);
              templechest9:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest9sign:setSign('Last Player', 'Looted:', '', player.name);
end

function templechest_10(data)
        local player = Player:new(data.player);
              templechest10:cloneChestToPlayer(player.name);
              player:closeInventory();
              chest10sign:setSign('Last Player', 'Looted:', '', player.name);
end


registerHook("INTERACT", "templechest_1", 146, "survival3", -30849.0, 22.0, 34882.0);
registerHook("INTERACT", "templechest_2", 146, "survival3", -30855.0, 13.0, 34877.0);
registerHook("INTERACT", "templechest_3", 146, "survival3", -30851.0, 5.0, 34890.0);
registerHook("INTERACT", "templechest_4", 146, "survival3", -30879.0, 20.0, 34908.0);
registerHook("INTERACT", "templechest_5", 146, "survival3", -30891.0, 12.0, 34817.0);
registerHook("INTERACT", "templechest_6", 146, "survival3", -30854.0, 5.0, 34879.0);
registerHook("INTERACT", "templechest_7", 54, "survival3", -30875.0, 20.0, 34864.0);
registerHook("INTERACT", "templechest_8", 54, "survival3", -30859.0, 7.0, 34871.0);
registerHook("INTERACT", "templechest_9", 54, "survival3", -30839.0, 6.0, 34865.0);
registerHook("INTERACT", "templechest_10", 54, "survival3", -30816.0, 31.0, 34911.0);


-------------------------------------------
---------------Bait Chests-----------------
-------------------------------------------

function templechest_bite(data)
        local player = Player:new(data.player);
              player:closeInventory();
              tchest1sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(5);
end

function templechest_bite2(data)
        local player = Player:new(data.player);
              player:closeInventory();
              tchest2sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(3);
end

function templechest_bite3(data)
        local player = Player:new(data.player);
              player:closeInventory();
              tchest3sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(1);
end

function templechest_bite4(data)
        local player = Player:new(data.player);
              player:closeInventory();
              tchest4sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(0);
              templelightning1:lightningStrike();
	      worldsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
              templespawnsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
end

function templechest_bite5(data)
        local player = Player:new(data.player);
              player:closeInventory();
              tchest5sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(5);
              EventEngine.player.addPotionEffect(player.name, 'POISON', 10, 10);
end

function templechest_bite6(data)
        local player = Player:new(data.player);
              player:closeInventory();
              tchest6sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(18);
              EventEngine.player.addPotionEffect(player.name, 'WITHER', 10, 10);
	      EventEngine.player.addPotionEffect(player.name, 'POISON', 10, 10);
	      EventEngine.player.addPotionEffect(player.name, 'CONFUSION', 10, 10);
end

function kill_chest(data)
	local player = Player:new(data["player"]);
	      player:setHealth(0);
              tchest7sign:setSign('', 'Lastest Victim:', '', player.name);
	      templelightning1:lightningStrike();
	      worldsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
              templespawnsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
end

registerHook("INTERACT", "kill_chest", 146, "survival3", -30882.0, 37.0, 34896.0);
registerHook("INTERACT", "kill_chest", 146, "survival3", -30820.0, 13.0, 34859.0);
registerHook("INTERACT", "kill_chest", 146, "survival3", -30844.0, 26.0, 34832.0);
registerHook("INTERACT", "templechest_bite", 54, "survival3", -30880.0, 31.0, 34921.0);
registerHook("INTERACT", "templechest_bite2", 54, "survival3", -30881.0, 40.0, 34883.0);
registerHook("INTERACT", "templechest_bite3", 54, "survival3", -30872.0, 47.0, 34895.0);
registerHook("INTERACT", "templechest_bite4", 54, "survival3", -30830.0, 7.0, 34887.0);
registerHook("INTERACT", "templechest_bite4", 146, "survival3", -30826.0, 18.0, 34887.0);
registerHook("INTERACT", "templechest_bite5", 54, "survival3", -30900.0, 14.0, 34850.0);
registerHook("INTERACT", "templechest_bite5", 146, "survival3", -30791.0, 14.0, 34849.0);
registerHook("INTERACT", "templechest_bite6", 54, "survival3", -30839.0, 6.0, 34864.0);

---------------------------------------------
---------------Redstone Traps----------------
---------------------------------------------

function templemob_3(data)
        local player = Player:new(data.player);
              tmob1sign:setSign('', 'Lastest Victim:', '', player.name);
              templelightning1:lightningStrike();
              player:setHealth(6);
	      worldsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
              templespawnsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
end

function templemob_4(data)
        local player = Player:new(data.player);
              tmob2sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(6);
end

function temple_fireball(data)
        local player = Player:new(data.player);
              tfireball1sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(12);
end

function temple_fireball2(data)
        local player = Player:new(data.player);
              tfireball2sign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(6);
end

function temple_strike_trap(data)
            local player = Player:new(data.player);
                   trapL1:lightningStrike();
	           trapL2:lightningStrike();
	           trapL3:lightningStrike();
	           trapL4:lightningStrike();
	           trapL5:lightningStrike();
	           trapL6:lightningStrike();
	           trapL7:lightningStrike();
	           trapL8:lightningStrike();
	           trapL9:lightningStrike();
	           trapL10:lightningStrike();
	           trapL11:lightningStrike();
	           trapL12:lightningStrike();
	           trapL13:lightningStrike();
	           worldsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
                   templespawnsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
	           player:setHealth(8);
	           tlightning1sign:setSign('', 'Lastest Victim:', '', player.name);
end

function temple_arrow1(data)
        local player = Player:new(data.player);
              taarowsign:setSign('', 'Lastest Victim:', '', player.name);
              player:setHealth(10);
end

function temple_deb_trap(data)
        local player = Player:new(data.player);
              tdebsign:setSign('', 'Lastest Victim:', '', player.name);
end

registerHook("REGION_ENTER", "templemob_3", "survival3-temple_ai_6");
registerHook("REGION_ENTER", "templemob_4", "survival3-temple_ai_7");
registerHook("REGION_ENTER", "temple_fireball", "survival3-temple_fireballs");
registerHook("REGION_ENTER", "temple_fireball2", "survival3-temple_fireballs2");
registerHook("REGION_ENTER", "temple_strike_trap", "survival3-temple_lightning_trap");
registerHook("REGION_ENTER", "temple_arrow1", "survival3-temple_arrow");
registerHook("REGION_ENTER", "temple_deb_trap", "survival3-temple_deb");

-------------------------------------------------
---------------Effect Traps------------------
-------------------------------------------------

function wither_effect(data)
	local player = Player:new(data["player"]);
	         EventEngine.player.addPotionEffect(player.name, 'WITHER', 30, 30);
	           twithersign:setSign('', 'Lastest Victim:', '', player.name);
end

function confus_effect(data)
	local player = Player:new(data["player"]);
	         EventEngine.player.addPotionEffect(player.name, 'CONFUSION', 100, 10);
	           tconfussign:setSign('', 'Lastest Victim:', '', player.name);
end

function temple_out(data)
	local player = Player:new(data.player);
	        player:teleport(temple_tp_out);
          EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
          tblind1sign:setSign('', 'Lastest Victim:', '', player.name);
end

function temple_out2(data)
	local player = Player:new(data.player);
	        player:teleport(temple_tp_out2);
          EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 10, 5);
          tblind2sign:setSign('', 'Lastest Victim:', '', player.name);
          player:setHealth(10);
end

function temple_spook(data)
            local player = Player:new(data.player);
                   templespawnsound:playSound('ENTITY_ENDERDRAGON_AMBIENT', 10000, 1);
                   EventEngine.player.addPotionEffect(player.name, 'CONFUSION', 90, 90);
	           EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 90, 90);
	           player:setHealth(20);
	           tdragonsign:setSign('', 'Lastest Victim:', '', player.name);
end

function temple_spook2(data)
            local player = Player:new(data.player);
	           worldsound:playSound('ENTITY_TNT_PRIMED', 10000, 1);
	           EventEngine.player.addPotionEffect(player.name, 'BLINDNESS', 90, 90);
	           player:setHealth(20);
	           ttntsign:setSign('', 'Lastest Victim:', '', player.name);
end

registerHook("REGION_ENTER", "wither_effect", "survival3-temple_effect");
registerHook("REGION_ENTER", "confus_effect", "survival3-temple_effect2");
registerHook("INTERACT", "wither_effect", 146, "survival3", -30842.0, 33.0, 34882.0);
registerHook("REGION_ENTER", "temple_out", "survival3-temple_out");
registerHook("REGION_ENTER", "temple_out2", "survival3-temple_punch");
registerHook("REGION_ENTER", "temple_out", "survival3-temple_out2");
registerHook("REGION_ENTER", "temple_spook", "survival3-temple_scare");
registerHook("REGION_ENTER", "temple_spook2", "survival3-temple_scare2");

-------------------------------------------------
---------------Block Edit Traps------------------
-------------------------------------------------

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

function fall_1_sound(data)
	local player = Player:new(data.player);
            templesound:playSound('BLOCK_PISTON_CONTRACT', 1, 1);
	    tlava1sign:setSign('', 'Lastest Victim:', '', player.name);
end

registerHook("REGION_ENTER", "fall_1_setair", "survival3-temple_fall1");
registerHook("REGION_ENTER", "fall_1_sound", "survival3-temple_fall1");
registerHook("REGION_ENTER", "fall_1_setstone", "survival3-temple_fall2");
registerHook("REGION_ENTER", "fall_1_setstone", "survival3-temple_fall6");
registerHook("REGION_ENTER", "fall_1_setstone", "survival3-temple_fall7");

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

function fall_2_sound(data)
	local player = Player:new(data.player);
            templesound:playSound('BLOCK_PISTON_CONTRACT', 1, 1);
	    tlava2sign:setSign('', 'Lastest Victim:', '', player.name);
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

function fall_3_sound(data)
	local player = Player:new(data.player);
            templesound:playSound('BLOCK_PISTON_CONTRACT', 1, 1);
	    tendsign:setSign('', 'Lastest Victim:', '', player.name);
end

registerHook("REGION_ENTER", "fall_3_setair", "survival3-temple_fall10");
registerHook("REGION_ENTER", "fall_3_setstone", "survival3-temple_fall11");
registerHook("REGION_ENTER", "fall_3_sound", "survival3-temple_fall11");
registerHook("REGION_ENTER", "fall_3_setstone", "survival3-temple_fall12");
registerHook("REGION_ENTER", "fall_3_setstone", "survival3-temple_fall13");

-------------------------------------------------
------------------Emerald Check---------------
-------------------------------------------------
		
function temple_emerarld(data)
        local player = Player:new(data.player);
          if player:hasPermission("runsafe.toybox.mode") then
	else
          if not player:hasPermission("runsafe.toybox.mode") then
	         player:setHealth(0);
		 tfentersign:setSign('Latest', 'Explorer:', '', player.name);
                 player:sendMessage("&4[D] &bTemple Sentinel&f: You have not yet proven your worth..");
		 templelightningE:lightningStrike();
	         worldsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
                 templespawnsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);

		end
	end
end

registerHook("REGION_ENTER", "temple_emerarld", "survival3-temple_emerald2");

local world = "survival3";
local ewallcurrent = 1;
local ewallmaxData = 1;
local ewallblocks = {
        Location:new(world, -30806.0 , 21.0, 34846.0),
	Location:new(world, -30806.0 , 21.0, 34845.0),
	Location:new(world, -30806.0 , 22.0, 34847.0),
	Location:new(world, -30806.0 , 22.0, 34846.0),
	Location:new(world, -30806.0 , 22.0, 34845.0),
	Location:new(world, -30806.0 , 23.0, 34847.0),
	Location:new(world, -30806.0 , 23.0, 34846.0),
	Location:new(world, -30806.0 , 23.0, 34845.0),
	
};

function emerald1(data)
        if ewallcurrent == ewallmaxData then
                ewallcurrent = 1;
        else
                ewallcurrent = ewallcurrent + 1;
        end
        emerald1_air();
end

function emerald1_air()
        for index, key in ipairs(ewallblocks) do
                key:setBlock(0, ewallcurrent);
                templesound3:playSound('ENTITY_EVOCATION_ILLAGER_CAST_SPELL', 1, 0.1);
end
end

function emerald1_stone()
        for index, key in ipairs(ewallblocks) do
                key:setBlock(1, ewallcurrent);
end
end

function emerald_global(data)
	local player = Player:new(data.player);
	  if not player:hasPermission("runsafe.temple.ewall") then
                 ts:speak( player.name .. " is worthy.");
                 templespawnsound:playSound('ENTITY_WITHER_SPAWN', 10000, 1);
		 player:addPermission("runsafe.temple.ewall");
end
end
	
registerHook("BLOCK_GAINS_CURRENT", "emerald1_air", "survival3", -30800.0, 10.0, 34844.0);
registerHook("REGION_ENTER", "emerald1_stone", "survival3-temple_ewall");
registerHook("REGION_ENTER", "emerald_global", "survival3-temple_ewall");

function e_leave(data)
	local player = Player:new(data.player);
              player:teleport(etp);
              templesound3:playSound('ENTITY_EVOCATION_ILLAGER_CAST_SPELL', 1, 0.1);
end

registerHook("REGION_ENTER", "e_leave", "survival3-temple_eleave");

-------------------------------------------------
------------------Portal Room Door---------------
-------------------------------------------------

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
		worldsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
                templespawnsound:playSound('ENTITY_LIGHTNING_THUNDER', 10000, 1);
  end
end

registerHook("REGION_ENTER", "temple_p_door", "survival3-temple_portal_door");



-------------------------------------------------
-------------------Portal------------------------
-------------------------------------------------
