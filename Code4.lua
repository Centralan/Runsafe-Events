local greenFlagIsTaken = false;
local blueFlagIsTaken = false;

-- Create a new array.
local blueTeamPlayers = {};

function addPlayerToBlueTeam(playerName)
	--table.insert(blueTeamPlayers, playerName);
	blueTeamPlayers[playerName] = true;
end

function removePlayerFromBlueTeam(playerName)
	--table.remove(blueTeamPlayers, playerName);
	blueTeamPlayers[playerName] = nil;
end

function isPlayerOnBlueTeam(playerName)
	return blueTeamPlayers[playerName] == true;
end

local greenTeamPlayers = {};

function addPlayerToGreenTeam(playerName)
	--table.insert(greenTeamPlayers, Player:new(playerName));
	greenTeamPlayers[playerName] = true;
end

function removePlayerFromGreenTeam(playerName)
	greenTeamPlayers[playerName] = nil;	
end

function isPlayerOnGreenTeam(playerName)
	return greenTeamPlayers[playerName] == true;	
end



-- Team Chat Detection
--

local function hasPrefix(subject, prefix)
	return string.sub(subject, 1, string.len(prefix)) == prefix;
end

local function splitPlayerName(message, len)
	return string.sub(message, len, string.len(message));
end

function chatMonitor(data)
	-- Make sure it's you giving the command.
	if data.player == "Centralan" or data.player == "iliketoeatpenuts" or data.player == "Kruithne" then
		local player = Player:new(data.player);
		local message = data.message;
		
		if hasPrefix(message, "#AddBluePlayer") then
			local playerName = splitPlayerName(message, 16);
			
			addPlayerToBlueTeam(playerName);
			player:sendMessage("Adding " .. playerName .. " to the &9Blue team!");
		elseif hasPrefix(message, "#AddGreenPlayer") then
			local playerName = splitPlayerName(message, 17);
			
			addPlayerToGreenTeam(playerName);
			player:sendMessage("Adding " .. playerName .. " to the &aGreen team!");
		elseif hasPrefix(message, "#RemoveBluePlayer") then
			local playerName = splitPlayerName(message, 19);
			
			removePlayerFromBlueTeam(playerName);
			player:sendMessage("Removing " .. playerName .. " from the &9Blue team!");
		elseif hasPrefix(message, "#RemoveGreenPlayer") then
			local playerName = splitPlayerName(message, 20);
			
			removePlayerFromGreenTeam(playerName);
			player:sendMessage("Removing " .. playerName .. " from the &aGreen team!");
		elseif hasPrefix(message, "#CheckTeam") then
			local playerName = splitPlayerName(message, 11);
			
			if isPlayerOnGreenTeam(playerName) then
				player:sendMessage(playerName .. " is currently on the green team.");
			elseif isPlayerOnBlueTeam(playerName) then
				player:sendMessage(playerName .. " is currently on the blue team.");
			else
				player:sendMessage(playerName .. " is not on a team.");
			end
		elseif hasPrefix(message, "#ListBlue") then
			local tempPlayerList = {};
			
			for playerName, v in pairs(blueTeamPlayers) do
				table.insert(tempPlayerList, playerName);
			end
			
			player:sendMessage("Blue team: " .. table.concat(tempPlayerList, ","));
		elseif hasPrefix(message, "#ListGreen") then
			local tempPlayerList = {};
			
			for playerName, v in pairs(greenTeamPlayers) do
				table.insert(tempPlayerList, playerName);
			end
			
			player:sendMessage("green team: " .. table.concat(tempPlayerList, ","));
		elseif hasPrefix(message, "#ResetGreen") then
			greenFlagIsTaken = false;
			player:sendMessage("&aGreen Flag Reset");
		elseif hasPrefix(message, "#ResetBlue") then
			blueFlagIsTaken = false;
			player:sendMessage("&bBlue Flag Reset");
		end
	end
end

registerHook("CHAT_MESSAGE", "chatMonitor", "Code4");



-- AI
--

local world = World:new('Code4');
local soundblock = Location:new(world, 0, 93, -30);
local Overlord = 'Symvan'
local Rules = ''

function a_broadcast(msg)
	world:broadcast(msg);
end

function a_broadcast_npc(npc, msg)
	a_broadcast('&f &b' .. npc .. '&f: ' .. msg);
end

function a_broadcast_npc_r(npc, msg)
	a_broadcast('&f &b' .. npc .. '&f' .. msg);
end


function a_whisper_npc(npc, msg, player)
	player:sendMessage('&f[C4] &b' .. npc .. ' &3-> &f' .. msg);
end

function EventOverlord_Teams(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&6Players are now being split into 2 teams at random. If you leave your box you will not play!", player);
         soundblock:playSound('ZOMBIE_UNFECT', 1000, 10);
end

function EventOverlord_how_score(data)
        local player = Player:new(data.player);
        a_broadcast_npc_r(Rules, "&c--------------------", player);
        a_broadcast_npc_r(Rules, "&6&lHow To Score:", player);
        a_broadcast_npc_r(Rules, "&eGo to the enemy base.", player);
        a_broadcast_npc_r(Rules, "&6Walk over the pad (If nothing happens flag is already taken.)", player);
        a_broadcast_npc_r(Rules, "&eWalk over your team's pad with the flag to score!", player);
        a_broadcast_npc_r(Rules, "&c--------------------", player);
         soundblock:playSound('ZOMBIE_UNFECT', 1000, 10);
end

function EventOverlord_how_return(data)
        local player = Player:new(data.player);
        a_broadcast_npc_r(Rules, "&c--------------------", player);
        a_broadcast_npc_r(Rules, "&2&lHow To Return The Flags:", player);
        a_broadcast_npc_r(Rules, "&a[1] Kill the enemy player holding your flag.", player);
        a_broadcast_npc_r(Rules, "&2[2] Pick your flag up off the ground.", player);
        a_broadcast_npc_r(Rules, "&a[3] Score the flag, scoring a flag will reset it.", player);
        a_broadcast_npc_r(Rules, "&2[*] &oIf needed the Admins can reset flags.", player);
        a_broadcast_npc_r(Rules, "&c--------------------", player);
         soundblock:playSound('ZOMBIE_UNFECT', 1000, 10);
end

function EventOverlord_how_respawn(data)
        local player = Player:new(data.player);
        a_broadcast_npc_r(Rules, "&c--------------------", player);
        a_broadcast_npc_r(Rules, "&6&lHow Respawning Works:", player);
        a_broadcast_npc_r(Rules, "&e[1] When you die, you will be teleported to a waiting area.", player);
        a_broadcast_npc_r(Rules, "&6[2] Your current gear will be wiped, and you will get fresh gear.", player);
        a_broadcast_npc_r(Rules, "&e[3] The waiting area will serve as a delayed respawn.", player);
        a_broadcast_npc_r(Rules, "&6[4] Once time is up you will respawn on your side of the arena randomly.", player);
        a_broadcast_npc_r(Rules, "&e[*] &oBug, there is a rare chance players will respawn much faster as intended.", player);
        a_broadcast_npc_r(Rules, "&c--------------------", player);
         soundblock:playSound('ZOMBIE_UNFECT', 1000, 10);
end

function EventOverlord_Start30(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&6Code 4 initializing in &d30 Seconds&6!", player);
         soundblock:playSound('NOTE_PLING', 1000, 10);
         soundblock:playSound('ORB_PICKUP', 1000, 10);
end

function EventOverlord_Start15(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&6Code 4 initializing in &d15 Seconds&6!", player);
         soundblock:playSound('NOTE_PLING', 1000, 10);
         soundblock:playSound('ORB_PICKUP', 1000, 10);
end

function EventOverlord_Start10(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&6Code 4 initializing in &d10 Seconds&6!", player);
         soundblock:playSound('NOTE_PLING', 1000, 10);
         soundblock:playSound('ORB_PICKUP', 1000, 10);
end

function EventOverlord_Start5(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&6Code 4 initializing in &d5 Seconds&6!", player);
         soundblock:playSound('NOTE_PLING', 1000, 10);
         soundblock:playSound('ORB_PICKUP', 1000, 10);
end

registerHook("INTERACT", "EventOverlord_Teams", 77, "Code4", -4, 86, -35);
registerHook("INTERACT", "EventOverlord_how_score", 77, "Code4", -4, 86, -38);
registerHook("INTERACT", "EventOverlord_how_return", 77, "Code4", -4, 86, -39);
registerHook("INTERACT", "EventOverlord_how_respawn", 77, "Code4", -4, 86, -40);
registerHook("INTERACT", "EventOverlord_Start30", 77, "Code4", -4, 88, -36);
registerHook("INTERACT", "EventOverlord_Start15", 77, "Code4", -4, 86, -36);
registerHook("INTERACT", "EventOverlord_Start10", 77, "Code4", -4, 88, -37);
registerHook("INTERACT", "EventOverlord_Start5", 77, "Code4", -4, 86, -37);



-- Lobby
--

local myWorld = World:new('Code4');
local location = Location:new(myWorld, 0, 90, -51);

function lobby_catch(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "lobby_catch", "Code4-lobby_catch");



-- Team Gear Up
--

local BlueGearChest = Location:new(world, 1, 86, -43);
local BlueTeamGearUp = Location:new(world, 40, 66, 0);
local BluePlayers = {};

function Blue_Team_Gear(data)
	local player = Player:new(data.player);
	if BluePlayers[player.name] == nil then
		BluePlayers[player.name] = true;
		BlueGearChest:cloneChestToPlayer(player.name);
                BlueTeamGearUp:playSound('HORSE_SADDLE', 1, 0);
                a_broadcast_npc(Overlord, "&6Both Teams have been teleported to their bases!", player);
                a_broadcast_npc(Overlord, "&eGear up and get ready!", player);
                soundblock:playSound('ZOMBIE_UNFECT', 1000, 10);
	end
end

registerHook("REGION_ENTER", "Blue_Team_Gear", "Code4-blta");

local world = World:new('Code4');
local GreenGearChest = Location:new(world, 4, 85, -43);
local GreenTeamGearUp = Location:new(world, -40, 66, 0);
local GreenPlayers = {};

function Green_Team_Gear(data)
	local player = Player:new(data.player);
	if GreenPlayers[player.name] == nil then
		GreenPlayers[player.name] = true;
		GreenGearChest:cloneChestToPlayer(player.name);
                GreenTeamGearUp:playSound('HORSE_SADDLE', 1, 0);
	end
end

registerHook("REGION_ENTER", "Green_Team_Gear", "Code4-glta");



-- Effects for Flags
--

local effects = {
        {"Green Flag", "CLOUD", 0.05, 20, 5},
        {"Green Flag", "HAPPY_VILLAGER", 20, 20, 5},
        {"Blue Flag", "CLOUD", 0.05, 20, 5},
        {"Blue Flag", "DRIP_WATER", 20, 20, 5}
};

function fireTick()
	processPlayers({world:getPlayers()});
end

function processPlayers(players)
	for index, playerName in pairs(players) do
		for key, effect in pairs(effects) do
			if playerName ~= nil then
				local player = Player:new(playerName);
				if player ~= nil and player:isOnline() then
					if player:hasItemWithName("" .. effect[1]) then
						local world, x, y, z = player:getLocation();
						local playerLoc = Location:new(world, x, y + effect[5], z);
						playerLoc:playEffect(effect[2], effect[3], effect[4], 20);
					end
				end
			end
		end
	end
end

registerHook("BLOCK_GAINS_CURRENT", "fireTick", "code4", -1, 82, -36);



-- I.spawning (Green Team)
--

local randomSpots = {
	Location:new(world, -44, 64, 5),
	Location:new(world, -44, 64, 0),
	Location:new(world, -44, 64, -5)
};

function green_i_spawn(data)
	local player = Player:new(data.player);
	player:teleport(randomSpots[math.random(1, #randomSpots)]);
        
end

registerHook("REGION_ENTER", "green_i_spawn", "Code4-glta");



-- I.spawning (Blue Team)
--
local randomSpots = {
	Location:new(world, 44, 64, -5),
	Location:new(world, 44, 64, 0),
	Location:new(world, 44, 64, 5)
};

function blue_i_spawn(data)
	local player = Player:new(data.player);
	player:teleport(randomSpots[math.random(1, #randomSpots)]);
        
end

registerHook("REGION_ENTER", "blue_i_spawn", "Code4-blta");



-- Respawning
--

local blueSpawnPoint = Location:new(world, -52, 64, 0);
local greenSpawnPoint = Location:new(world, 52, 64, 0);
local blueRespawnPoint = Location:new(world, 44, 64, 0);
local greenRepawnPoint = Location:new(world, -44, 64, 0);

local graveyardPlayers = {};
local graveyardTimer = Timer:new("handleGraveyard", 450);

local greenRespawns = {
	Location:new(world, -38, 64, -9),
	Location:new(world, -36, 64, 9),
	Location:new(world, -36, 64, 1),
	Location:new(world, -37, 69, 22),
	Location:new(world, -22, 69, 0),
	Location:new(world, -27, 64, -15),
	Location:new(world, -17, 64, -26),
	Location:new(world, -39, 64, -26),
	Location:new(world, -45, 74, 7),
	Location:new(world, -17, 64, 18),
	Location:new(world, -19, 64, -4),
	Location:new(world, -45, 64, -11),
	Location:new(world, -47, 64, 11),
	Location:new(world, -23, 69, 25)
};

local blueRespawns = {
	Location:new(world, 45, 74, -6),
	Location:new(world, 37, 69, 22),
	Location:new(world, 22, 69, 20),
	Location:new(world, 17, 69, -21),
	Location:new(world, 41, 69, -22),
	Location:new(world, 32, 64, -18),
	Location:new(world, 13, 64, -15),
	Location:new(world, 27, 64, 0),
	Location:new(world, 35, 64, 9),
	Location:new(world, 38, 64, 1),
	Location:new(world, 34, 64, -10),
	Location:new(world, 46, 64, 11),
	Location:new(world, 45, 64, -10),
	Location:new(world, 8, 64, 16)
};

function handleGraveyard()
	-- Check all players in the graveyard and send them to the match.
	for playerName, v in pairs(graveyardPlayers) do
		local player = Player:new(playerName);
		
		-- Make sure the player is still online and in the right world.
                -- Bug: Editing this will cause the player to keep tping, DO NOT EDIT.
		if player:isOnline() and player:getLocation() == world.name then
			if isPlayerOnGreenTeam(player.name) then
				player:teleport(greenRespawns[math.random(1, #greenRespawns)]);
			elseif isPlayerOnBlueTeam(player.name) then
				player:teleport(blueRespawns[math.random(1, #blueRespawns)]);
			end
		end
		
		-- Unmark the player from the graveyard list.
		graveyardPlayers[playerName] = nil;
	end
end

graveyardTimer:startRepeating();

function player_respawn(data)
    local targetPlayer = Player:new(data.player);
	local moveTo = nil;

	-- Check which team the player is on and set moveTo to their spawn.
    if isPlayerOnBlueTeam(targetPlayer.name) then
		moveTo = blueSpawnPoint;		
      elseif isPlayerOnGreenTeam(targetPlayer.name) then
		moveTo = greenSpawnPoint;
    end
	
	if moveTo ~= nil then
		targetPlayer:clearInventory(); -- Wipe the players inventory.
        targetPlayer:setHealth(20); -- Set their health back to full.
        targetPlayer:teleport(moveTo); -- Teleport to the graveyard.
        --a_broadcast_npc(Overlord, data.player .. " has died."); -- Annouce the death in chat.
		graveyardPlayers[targetPlayer.name] = true; -- Mark the player as dead so they will respawn.
		
		if isPlayerOnGreenTeam(targetPlayer.name) then
			GreenGearChest:cloneChestToPlayer(targetPlayer.name);
		elseif isPlayerOnBlueTeam(targetPlayer.name) then
			BlueGearChest:cloneChestToPlayer(targetPlayer.name);
      end
   end
end

registerHook("PLAYER_DEATH", "player_respawn", "Code4");

function player_damage(data)
	if data.damage >= data.playerHealth then
		-- The player just took fatal damage.
		local player = Player:new(data.player);
		if isPlayerOnGreenTeam(player.name) and player:hasItemWithName('Blue Flag') then
			player:removeItemByName('Blue Flag');
			blueFlagIsTaken = false;
			a_broadcast_npc(Overlord, player.name .. " has died with the &9Blue Flag&f!");
			soundblock:playSound('LAVA_POP', 1000, 50);
		elseif isPlayerOnBlueTeam(player.name) and player:hasItemWithName('Green Flag') then
			player:removeItemByName('Green Flag');
			greenFlagIsTaken = false;	
			a_broadcast_npc(Overlord, player.name .. " has died with the &aGreen Flag&f!");
			soundblock:playSound('LAVA_POP', 1000, 50);
		else
			--a_broadcast_npc(Overlord, player.name .. " has died.");
		end
	end
end

registerHook("PLAYER_DAMAGE", "player_damage", "Code4");

-- Flag Get
--

local bluefChest = Location:new(world, 2, 85, -43);
local greenfChest = Location:new(world, 3, 86, -43);

function get_blue_flag(data)
	local player = Player:new(data.player);
	
	if blueFlagIsTaken then
		-- The flag isn't available, stop here.
		return;
	end
	
	if isPlayerOnGreenTeam(player.name) then
		bluefChest:cloneChestToPlayer(player.name);
		a_broadcast_npc(Overlord, data.player .. " has stolen the &9Blue Flag&f!")
		player:sendMessage("&cReturn the Blue flag to your base to score a point!");
		soundblock:playSound('AMBIENCE_THUNDER', 1000, 3);
		
		-- Set the blue flag as taken.
		blueFlagIsTaken = true;
    end
end

function get_green_flag(data)
	local player = Player:new(data.player);
	
	if greenFlagIsTaken then
		-- The flag isn't available, stop here.
		return;
	end
	
	if isPlayerOnBlueTeam(player.name) then
		greenfChest:cloneChestToPlayer(player.name);
		a_broadcast_npc(Overlord, data.player .. " has stolen the &aGreen Flag&f!")
		player:sendMessage("&cReturn the Green flag to your base to score a point!");
		soundblock:playSound('AMBIENCE_THUNDER', 1000, 3);
		
		-- Set the green flag as taken.
		greenFlagIsTaken = true;
    end
end

registerHook("REGION_ENTER", "get_blue_flag", "Code4-blue_flag");
registerHook("REGION_ENTER", "get_green_flag", "Code4-green_flag");



-- Flag Pickup
--

local flagRemovalTimer = Timer:new("removeInventoryFlags", 1);
local flagRemovalPipe = {};

function removeInventoryFlags()
	for k, v in pairs(flagRemovalPipe) do
		v:removeItemByName("Blue Flag");
		v:removeItemByName("Green Flag");
		
		flagRemovalPipe[k] = nil;
	end
end

-- This is called when a player picks up an item.
function item_pickup(data)
         local player = Player:new(data.player);
		 
		 -- Check which flag was picked up, either green or blue.
         if data.itemName == "Blue Flag" then
			-- Blue flag was picked up.
			if isPlayerOnBlueTeam(player.name) then
				-- The player has picked up their own flag, return it to the base.
				blueFlagIsTaken = false;
				table.insert(flagRemovalPipe, player);
				flagRemovalTimer:start();
				a_broadcast_npc(Overlord, player.name .. " has returned the &9Blue Flag&f!");
				soundblock:playSound('LAVA_POP', 1000, 50);
			else
				-- The player has picked up the enemy flag, what a bastard!
				a_broadcast_npc(Overlord, player.name .. " has picked up the &9Blue Flag&f!");
				soundblock:playSound('LAVA_POP', 1000, 50);
			end
		elseif data.itemName == "Green Flag" then
			-- Green flag was picked up.
			if isPlayerOnGreenTeam(player.name) then
				-- The player has picked up their own flag, return it to the base.
				greenFlagIsTaken = false;	
				table.insert(flagRemovalPipe, player);
				flagRemovalTimer:start();
				a_broadcast_npc(Overlord, player.name .. " has returned the &aGreen Flag&f!");
				soundblock:playSound('LAVA_POP', 1000, 50);
			else
				-- The player has picked up the enemy flag, what a bastard!
				a_broadcast_npc(Overlord, player.name .. " has picked up the &aGreen Flag&f!");
				soundblock:playSound('LAVA_POP', 1000, 50);
			end
		end
end

registerHook("PLAYER_ITEM_PICKUP", "item_pickup", "Code4");



-- Flag Drops
--

function green_down(data, key, location)
         local player = Player:new(data.player);
         if data.itemName == ("Green Flag") then
         a_broadcast_npc(Overlord, data.player .. " has dropped the &aGreen Flag&f!");
         soundblock:playSound('LAVA_POP', 1000, 50);
    end
end

function blue_down(data, key, location)
         local player = Player:new(data.player);
         if data.itemName == ("Blue Flag") then
         a_broadcast_npc(Overlord, data.player .. " has dropped the &9Blue Flag&f!");
         soundblock:playSound('LAVA_POP', 1000, 50);
    end
end

registerHook("PLAYER_ITEM_DROP", "green_down", "Code4");
registerHook("PLAYER_ITEM_DROP", "blue_down", "Code4");



-- Flag Score
--

local blueScore = 0;
local greenScore = 0;
local maxScore = 5;
local players = {world:getPlayers()};

function checkScores()
	if blueScore >= maxScore then
		-- Blue team wins!
		matchComplete();
		
		a_broadcast_npc(Overlord, "&bThe &9Blue Team &bhas won CTF!");
		
		for index, playerName in pairs(players) do
			if isPlayerOnBlueTeam(playerName) then
				local player = Player:new(playerName);
                                player:clearInventory();
				player:sendEvent("achievement.ctfeventmarchvictor");
			end
		end
		
		return;
	end
	
	if greenScore >= maxScore then
		-- Green team wins!
		matchComplete();
		
		a_broadcast_npc(Overlord, "&aThe &2Green Team &ahas won CTF!");
		for index, playerName in pairs(players) do
			if isPlayerOnGreenTeam(playerName) then
				local player = Player:new(playerName);
                                player:clearInventory();
				player:sendEvent("achievement.ctfeventmarchvictor");
			end
		end
		
		return;
	end
end

function green_flag_score(data, key, location)
	local player = Player:new(data.player);
	
	if player:hasItemWithName('Green Flag') then
		if not blueFlagIsTaken then
			a_broadcast_npc(Overlord, data.player .. " &6has captured the Green Flag!");
			a_broadcast_npc(Overlord, "&bThe &9Blue Team &bhas Scored a Point!");
			soundblock:playSound('PORTAL_TRAVEL', 1000, 50);
			greenFlagIsTaken = false;
			
			table.insert(flagRemovalPipe, player);
			flagRemovalTimer:start();
			
			blueScore = blueScore + 1; -- Add a point to the blue team.
			checkScores(); -- Check the scores.
		else
			player:sendMessage("&4Your own flag must be at your base to capture the enemy flag!");
		end
    end
end

function blue_flag_score(data, key, location)
	local player = Player:new(data.player);
		
	if player:hasItemWithName('Blue Flag') then
		if not greenFlagIsTaken then
			a_broadcast_npc(Overlord, data.player .. " &6has captured the &9Blue Flag&6!");
			a_broadcast_npc(Overlord, "&aThe &2Green Team &ahas Scored a Point!");
			soundblock:playSound('PORTAL_TRAVEL', 1000, 50);
			blueFlagIsTaken = false;
			
			table.insert(flagRemovalPipe, player);
			flagRemovalTimer:start();
			
			greenScore = greenScore + 1; -- Add a point to the green team.
			checkScores(); -- Check the scores.
		else
			player:sendMessage("&4Your own flag must be at your base to capture the enemy flag!");
		end
    end
end

registerHook("REGION_ENTER", "green_flag_score", "Code4-blue_flag");
registerHook("REGION_ENTER", "blue_flag_score", "Code4-green_flag");



-- Game Over
--

local startLocation = Location:new(myWorld, 0, 90, -52);

function matchComplete()
    local players = {myWorld:getPlayers()};

    for index, playerName in pairs(players) do
        local player = Player:new(playerName);
        player:teleport(startLocation);
        player:clearInventory();
    end
end



-- Achievements
--

function ctf_event_prize(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.ctfeventmarch");
end

registerHook("REGION_ENTER", "ctf_event_prize", "spawn2-event_ctfportal");



-- Tramps
--

function tramp(data)
	local player = Player:new(data.player);
	player:setVelocity(0, 1, 0);
end

registerHook("REGION_ENTER", "tramp", "Code4-tramp1");
registerHook("REGION_ENTER", "tramp", "Code4-tramp2");
registerHook("REGION_ENTER", "tramp", "Code4-tramp3");
registerHook("REGION_ENTER", "tramp", "Code4-tramp4");
registerHook("REGION_ENTER", "tramp", "Code4-tramp5");
registerHook("REGION_ENTER", "tramp", "Code4-tramp6");






-- Green Scoreboard
--

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -1.0, 92.0, 30.0),
	Location:new(world, -2.0, 92.0, 30.0),
	Location:new(world, -3.0, 92.0, 30.0),
	Location:new(world, -4.0, 92.0, 30.0),
	Location:new(world, -5.0, 92.0, 30.0),
	Location:new(world, -6.0, 92.0, 30.0),
	Location:new(world, -7.0, 92.0, 30.0),
	Location:new(world, -8.0, 92.0, 30.0),
	Location:new(world, -9.0, 92.0, 30.0),
	Location:new(world, -10.0, 92.0, 30.0),
	Location:new(world, -1.0, 91.0, 30.0),
	Location:new(world, -2.0, 91.0, 30.0),
	Location:new(world, -3.0, 91.0, 30.0),
	Location:new(world, -4.0, 91.0, 30.0),
	Location:new(world, -5.0, 91.0, 30.0),
	Location:new(world, -6.0, 91.0, 30.0),
	Location:new(world, -7.0, 91.0, 30.0),
	Location:new(world, -8.0, 91.0, 30.0),
	Location:new(world, -9.0, 91.0, 30.0),
	Location:new(world, -10.0, 91.0, 30.0),
	Location:new(world, -1.0, 90.0, 30.0),
	Location:new(world, -2.0, 90.0, 30.0),
	Location:new(world, -3.0, 90.0, 30.0),
	Location:new(world, -4.0, 90.0, 30.0),
	Location:new(world, -5.0, 90.0, 30.0),
	Location:new(world, -6.0, 90.0, 30.0),
	Location:new(world, -7.0, 90.0, 30.0),
	Location:new(world, -8.0, 90.0, 30.0),
	Location:new(world, -9.0, 90.0, 30.0),
	Location:new(world, -10.0, 90.0, 30.0),
	Location:new(world, -1.0, 89.0, 30.0),
	Location:new(world, -2.0, 89.0, 30.0),
	Location:new(world, -3.0, 89.0, 30.0),
	Location:new(world, -4.0, 89.0, 30.0),
	Location:new(world, -5.0, 89.0, 30.0),
	Location:new(world, -6.0, 89.0, 30.0),
	Location:new(world, -7.0, 89.0, 30.0),
	Location:new(world, -8.0, 89.0, 30.0),
	Location:new(world, -9.0, 89.0, 30.0),
	Location:new(world, -10.0, 89.0, 30.0),
	Location:new(world, -1.0, 88.0, 30.0),
	Location:new(world, -2.0, 88.0, 30.0),
	Location:new(world, -3.0, 88.0, 30.0),
	Location:new(world, -4.0, 88.0, 30.0),
	Location:new(world, -5.0, 88.0, 30.0),
	Location:new(world, -6.0, 88.0, 30.0),
	Location:new(world, -7.0, 88.0, 30.0),
	Location:new(world, -8.0, 88.0, 30.0),
	Location:new(world, -9.0, 88.0, 30.0),
	Location:new(world, -10.0, 88.0, 30.0),
	Location:new(world, -1.0, 87.0, 30.0),
	Location:new(world, -2.0, 87.0, 30.0),
	Location:new(world, -3.0, 87.0, 30.0),
	Location:new(world, -4.0, 87.0, 30.0),
	Location:new(world, -5.0, 87.0, 30.0),
	Location:new(world, -6.0, 87.0, 30.0),
	Location:new(world, -7.0, 87.0, 30.0),
	Location:new(world, -8.0, 87.0, 30.0),
	Location:new(world, -9.0, 87.0, 30.0),
	Location:new(world, -10.0, 87.0, 30.0),
	Location:new(world, -1.0, 86.0, 30.0),
	Location:new(world, -2.0, 86.0, 30.0),
	Location:new(world, -3.0, 86.0, 30.0),
	Location:new(world, -4.0, 86.0, 30.0),
	Location:new(world, -5.0, 86.0, 30.0),
	Location:new(world, -6.0, 86.0, 30.0),
	Location:new(world, -7.0, 86.0, 30.0),
	Location:new(world, -8.0, 86.0, 30.0),
	Location:new(world, -9.0, 86.0, 30.0),
	Location:new(world, -10.0, 86.0, 30.0),
	Location:new(world, -1.0, 85.0, 30.0),
	Location:new(world, -2.0, 85.0, 30.0),
	Location:new(world, -3.0, 85.0, 30.0),
	Location:new(world, -4.0, 85.0, 30.0),
	Location:new(world, -5.0, 85.0, 30.0),
	Location:new(world, -6.0, 85.0, 30.0),
	Location:new(world, -7.0, 85.0, 30.0),
	Location:new(world, -8.0, 85.0, 30.0),
	Location:new(world, -9.0, 85.0, 30.0),
	Location:new(world, -10.0, 85.0, 30.0),
	Location:new(world, -1.0, 84.0, 30.0),
	Location:new(world, -2.0, 84.0, 30.0),
	Location:new(world, -3.0, 84.0, 30.0),
	Location:new(world, -4.0, 84.0, 30.0),
	Location:new(world, -5.0, 84.0, 30.0),
	Location:new(world, -6.0, 84.0, 30.0),
	Location:new(world, -7.0, 84.0, 30.0),
	Location:new(world, -8.0, 84.0, 30.0),
	Location:new(world, -9.0, 84.0, 30.0),
	Location:new(world, -10.0, 84.0, 30.0),
	Location:new(world, -1.0, 83.0, 30.0),
	Location:new(world, -2.0, 83.0, 30.0),
	Location:new(world, -3.0, 83.0, 30.0),
	Location:new(world, -4.0, 83.0, 30.0),
	Location:new(world, -5.0, 83.0, 30.0),
	Location:new(world, -6.0, 83.0, 30.0),
	Location:new(world, -7.0, 83.0, 30.0),
	Location:new(world, -8.0, 83.0, 30.0),
	Location:new(world, -9.0, 83.0, 30.0),
	Location:new(world, -10.0, 83.0, 30.0),

};

function green_blank(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_blank();
end

function green_score_blank()
	for index, key in ipairs(blocks) do
		key:setBlock(173, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -3.0, 91.0, 30.0),
	Location:new(world, -4.0, 91.0, 30.0),
	Location:new(world, -5.0, 91.0, 30.0),
	Location:new(world, -6.0, 91.0, 30.0),
	Location:new(world, -7.0, 91.0, 30.0),
	Location:new(world, -8.0, 91.0, 30.0),
	Location:new(world, -8.0, 90.0, 30.0),
	Location:new(world, -8.0, 89.0, 30.0),
	Location:new(world, -8.0, 88.0, 30.0),
	Location:new(world, -8.0, 87.0, 30.0),
	Location:new(world, -8.0, 86.0, 30.0),
	Location:new(world, -8.0, 85.0, 30.0),
	Location:new(world, -8.0, 84.0, 30.0),
	Location:new(world, -7.0, 84.0, 30.0),
	Location:new(world, -6.0, 84.0, 30.0),
	Location:new(world, -5.0, 84.0, 30.0),
	Location:new(world, -4.0, 84.0, 30.0),
	Location:new(world, -3.0, 84.0, 30.0),
	Location:new(world, -3.0, 85.0, 30.0),
	Location:new(world, -3.0, 86.0, 30.0),
	Location:new(world, -3.0, 87.0, 30.0),
	Location:new(world, -3.0, 88.0, 30.0),
	Location:new(world, -3.0, 89.0, 30.0),
	Location:new(world, -3.0, 90.0, 30.0),

};

function green_0(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_0();
end

function green_score_0()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -3.0, 84.0, 30.0),
	Location:new(world, -4.0, 84.0, 30.0),
	Location:new(world, -5.0, 84.0, 30.0),
	Location:new(world, -6.0, 84.0, 30.0),
	Location:new(world, -7.0, 84.0, 30.0),
	Location:new(world, -8.0, 84.0, 30.0),
	Location:new(world, -5.0, 85.0, 30.0),
	Location:new(world, -6.0, 85.0, 30.0),
	Location:new(world, -5.0, 86.0, 30.0),
	Location:new(world, -6.0, 86.0, 30.0),
	Location:new(world, -5.0, 87.0, 30.0),
	Location:new(world, -6.0, 87.0, 30.0),
	Location:new(world, -5.0, 88.0, 30.0),
	Location:new(world, -6.0, 88.0, 30.0),
	Location:new(world, -5.0, 89.0, 30.0),
	Location:new(world, -6.0, 89.0, 30.0),
	Location:new(world, -5.0, 90.0, 30.0),
	Location:new(world, -6.0, 90.0, 30.0),
	Location:new(world, -5.0, 91.0, 30.0),
	Location:new(world, -6.0, 91.0, 30.0),
	Location:new(world, -4.0, 90.0, 30.0),
	Location:new(world, -3.0, 89.0, 30.0),
};

function green_1(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_1();
end

function green_score_1()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -3.0, 91.0, 30.0),
	Location:new(world, -4.0, 91.0, 30.0),
	Location:new(world, -5.0, 91.0, 30.0),
	Location:new(world, -6.0, 91.0, 30.0),
	Location:new(world, -7.0, 91.0, 30.0),
	Location:new(world, -8.0, 91.0, 30.0),
	Location:new(world, -8.0, 90.0, 30.0),
	Location:new(world, -8.0, 89.0, 30.0),
	Location:new(world, -8.0, 88.0, 30.0),
	Location:new(world, -7.0, 88.0, 30.0),
	Location:new(world, -6.0, 88.0, 30.0),
	Location:new(world, -5.0, 88.0, 30.0),
	Location:new(world, -4.0, 88.0, 30.0),
	Location:new(world, -3.0, 88.0, 30.0),
	Location:new(world, -3.0, 87.0, 30.0),
	Location:new(world, -3.0, 86.0, 30.0),
	Location:new(world, -3.0, 85.0, 30.0),
	Location:new(world, -3.0, 84.0, 30.0),
	Location:new(world, -4.0, 84.0, 30.0),
	Location:new(world, -5.0, 84.0, 30.0),
	Location:new(world, -6.0, 84.0, 30.0),
	Location:new(world, -7.0, 84.0, 30.0),
	Location:new(world, -8.0, 84.0, 30.0),

};

function green_2(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_2();
end

function green_score_2()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -3.0, 91.0, 30.0),
	Location:new(world, -4.0, 91.0, 30.0),
	Location:new(world, -5.0, 91.0, 30.0),
	Location:new(world, -6.0, 91.0, 30.0),
	Location:new(world, -7.0, 91.0, 30.0),
	Location:new(world, -8.0, 91.0, 30.0),
	Location:new(world, -8.0, 90.0, 30.0),
	Location:new(world, -8.0, 89.0, 30.0),
	Location:new(world, -8.0, 88.0, 30.0),
	Location:new(world, -8.0, 87.0, 30.0),
	Location:new(world, -8.0, 86.0, 30.0),
	Location:new(world, -8.0, 85.0, 30.0),
	Location:new(world, -8.0, 84.0, 30.0),
	Location:new(world, -4.0, 88.0, 30.0),
	Location:new(world, -5.0, 88.0, 30.0),
	Location:new(world, -6.0, 88.0, 30.0),
	Location:new(world, -7.0, 88.0, 30.0),
        Location:new(world, -3.0, 84.0, 30.0),
	Location:new(world, -4.0, 84.0, 30.0),
	Location:new(world, -5.0, 84.0, 30.0),
	Location:new(world, -6.0, 84.0, 30.0),
	Location:new(world, -7.0, 84.0, 30.0),
};

function green_3(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_3();
end

function green_score_3()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -8.0, 91.0, 30.0),
	Location:new(world, -8.0, 90.0, 30.0),
	Location:new(world, -8.0, 89.0, 30.0),
	Location:new(world, -8.0, 88.0, 30.0),
	Location:new(world, -8.0, 87.0, 30.0),
	Location:new(world, -8.0, 86.0, 30.0),
	Location:new(world, -8.0, 85.0, 30.0),
	Location:new(world, -3.0, 91.0, 30.0),
	Location:new(world, -3.0, 90.0, 30.0),
	Location:new(world, -3.0, 89.0, 30.0),
	Location:new(world, -3.0, 88.0, 30.0),
	Location:new(world, -4.0, 88.0, 30.0),
	Location:new(world, -5.0, 88.0, 30.0),
	Location:new(world, -6.0, 88.0, 30.0),
	Location:new(world, -7.0, 88.0, 30.0),
};

function green_4(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_4();
end

function green_score_4()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, -3.0, 91.0, 30.0),
	Location:new(world, -4.0, 91.0, 30.0),
	Location:new(world, -5.0, 91.0, 30.0),
	Location:new(world, -6.0, 91.0, 30.0),
	Location:new(world, -7.0, 91.0, 30.0),
	Location:new(world, -8.0, 91.0, 30.0),
	Location:new(world, -3.0, 90.0, 30.0),
	Location:new(world, -3.0, 89.0, 30.0),
	Location:new(world, -8.0, 88.0, 30.0),
	Location:new(world, -7.0, 88.0, 30.0),
	Location:new(world, -6.0, 88.0, 30.0),
	Location:new(world, -5.0, 88.0, 30.0),
	Location:new(world, -4.0, 88.0, 30.0),
	Location:new(world, -3.0, 88.0, 30.0),
	Location:new(world, -8.0, 87.0, 30.0),
	Location:new(world, -8.0, 86.0, 30.0),
	Location:new(world, -8.0, 85.0, 30.0),
	Location:new(world, -3.0, 84.0, 30.0),
	Location:new(world, -4.0, 84.0, 30.0),
	Location:new(world, -5.0, 84.0, 30.0),
	Location:new(world, -6.0, 84.0, 30.0),
	Location:new(world, -7.0, 84.0, 30.0),
	Location:new(world, -8.0, 84.0, 30.0),

};

function green_5(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	green_score_5();
end

function green_score_5()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

registerHook("INTERACT", "green_blank", 77, "Code4", 4, 88, -35);
registerHook("INTERACT", "green_0", 77, "Code4", 4, 88, -36);
registerHook("INTERACT", "green_1", 77, "Code4", 4, 88, -37);
registerHook("INTERACT", "green_2", 77, "Code4", 4, 88, -38);
registerHook("INTERACT", "green_3", 77, "Code4", 4, 88, -39);
registerHook("INTERACT", "green_4", 77, "Code4", 4, 88, -40);
registerHook("INTERACT", "green_5", 77, "Code4", 4, 88, -41);

-- Blue Scoreboard
--

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 1.0, 92.0, 30.0),
	Location:new(world, 2.0, 92.0, 30.0),
	Location:new(world, 3.0, 92.0, 30.0),
	Location:new(world, 4.0, 92.0, 30.0),
	Location:new(world, 5.0, 92.0, 30.0),
	Location:new(world, 6.0, 92.0, 30.0),
	Location:new(world, 7.0, 92.0, 30.0),
	Location:new(world, 8.0, 92.0, 30.0),
	Location:new(world, 9.0, 92.0, 30.0),
	Location:new(world, 10.0, 92.0, 30.0),
	Location:new(world, 1.0, 91.0, 30.0),
	Location:new(world, 2.0, 91.0, 30.0),
	Location:new(world, 3.0, 91.0, 30.0),
	Location:new(world, 4.0, 91.0, 30.0),
	Location:new(world, 5.0, 91.0, 30.0),
	Location:new(world, 6.0, 91.0, 30.0),
	Location:new(world, 7.0, 91.0, 30.0),
	Location:new(world, 8.0, 91.0, 30.0),
	Location:new(world, 9.0, 91.0, 30.0),
	Location:new(world, 10.0, 91.0, 30.0),
	Location:new(world, 1.0, 90.0, 30.0),
	Location:new(world, 2.0, 90.0, 30.0),
	Location:new(world, 3.0, 90.0, 30.0),
	Location:new(world, 4.0, 90.0, 30.0),
	Location:new(world, 5.0, 90.0, 30.0),
	Location:new(world, 6.0, 90.0, 30.0),
	Location:new(world, 7.0, 90.0, 30.0),
	Location:new(world, 8.0, 90.0, 30.0),
	Location:new(world, 9.0, 90.0, 30.0),
	Location:new(world, 10.0, 90.0, 30.0),
	Location:new(world, 1.0, 89.0, 30.0),
	Location:new(world, 2.0, 89.0, 30.0),
	Location:new(world, 3.0, 89.0, 30.0),
	Location:new(world, 4.0, 89.0, 30.0),
	Location:new(world, 5.0, 89.0, 30.0),
	Location:new(world, 6.0, 89.0, 30.0),
	Location:new(world, 7.0, 89.0, 30.0),
	Location:new(world, 8.0, 89.0, 30.0),
	Location:new(world, 9.0, 89.0, 30.0),
	Location:new(world, 10.0, 89.0, 30.0),
	Location:new(world, 1.0, 88.0, 30.0),
	Location:new(world, 2.0, 88.0, 30.0),
	Location:new(world, 3.0, 88.0, 30.0),
	Location:new(world, 4.0, 88.0, 30.0),
	Location:new(world, 5.0, 88.0, 30.0),
	Location:new(world, 6.0, 88.0, 30.0),
	Location:new(world, 7.0, 88.0, 30.0),
	Location:new(world, 8.0, 88.0, 30.0),
	Location:new(world, 9.0, 88.0, 30.0),
	Location:new(world, 10.0, 88.0, 30.0),
	Location:new(world, 1.0, 87.0, 30.0),
	Location:new(world, 2.0, 87.0, 30.0),
	Location:new(world, 3.0, 87.0, 30.0),
	Location:new(world, 4.0, 87.0, 30.0),
	Location:new(world, 5.0, 87.0, 30.0),
	Location:new(world, 6.0, 87.0, 30.0),
	Location:new(world, 7.0, 87.0, 30.0),
	Location:new(world, 8.0, 87.0, 30.0),
	Location:new(world, 9.0, 87.0, 30.0),
	Location:new(world, 10.0, 87.0, 30.0),
	Location:new(world, 1.0, 86.0, 30.0),
	Location:new(world, 2.0, 86.0, 30.0),
	Location:new(world, 3.0, 86.0, 30.0),
	Location:new(world, 4.0, 86.0, 30.0),
	Location:new(world, 5.0, 86.0, 30.0),
	Location:new(world, 6.0, 86.0, 30.0),
	Location:new(world, 7.0, 86.0, 30.0),
	Location:new(world, 8.0, 86.0, 30.0),
	Location:new(world, 9.0, 86.0, 30.0),
	Location:new(world, 10.0, 86.0, 30.0),
	Location:new(world, 1.0, 85.0, 30.0),
	Location:new(world, 2.0, 85.0, 30.0),
	Location:new(world, 3.0, 85.0, 30.0),
	Location:new(world, 4.0, 85.0, 30.0),
	Location:new(world, 5.0, 85.0, 30.0),
	Location:new(world, 6.0, 85.0, 30.0),
	Location:new(world, 7.0, 85.0, 30.0),
	Location:new(world, 8.0, 85.0, 30.0),
	Location:new(world, 9.0, 85.0, 30.0),
	Location:new(world, 10.0, 85.0, 30.0),
	Location:new(world, 1.0, 84.0, 30.0),
	Location:new(world, 2.0, 84.0, 30.0),
	Location:new(world, 3.0, 84.0, 30.0),
	Location:new(world, 4.0, 84.0, 30.0),
	Location:new(world, 5.0, 84.0, 30.0),
	Location:new(world, 6.0, 84.0, 30.0),
	Location:new(world, 7.0, 84.0, 30.0),
	Location:new(world, 8.0, 84.0, 30.0),
	Location:new(world, 9.0, 84.0, 30.0),
	Location:new(world, 10.0, 84.0, 30.0),
	Location:new(world, 1.0, 83.0, 30.0),
	Location:new(world, 2.0, 83.0, 30.0),
	Location:new(world, 3.0, 83.0, 30.0),
	Location:new(world, 4.0, 83.0, 30.0),
	Location:new(world, 5.0, 83.0, 30.0),
	Location:new(world, 6.0, 83.0, 30.0),
	Location:new(world, 7.0, 83.0, 30.0),
	Location:new(world, 8.0, 83.0, 30.0),
	Location:new(world, 9.0, 83.0, 30.0),
	Location:new(world, 10.0, 83.0, 30.0),
};

function blue_blank(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_blank();
end

function blue_score_blank()
	for index, key in ipairs(blocks) do
		key:setBlock(173, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 3.0, 91.0, 30.0),
	Location:new(world, 4.0, 91.0, 30.0),
	Location:new(world, 5.0, 91.0, 30.0),
	Location:new(world, 6.0, 91.0, 30.0),
	Location:new(world, 7.0, 91.0, 30.0),
	Location:new(world, 8.0, 91.0, 30.0),
	Location:new(world, 8.0, 90.0, 30.0),
	Location:new(world, 8.0, 89.0, 30.0),
	Location:new(world, 8.0, 88.0, 30.0),
	Location:new(world, 8.0, 87.0, 30.0),
	Location:new(world, 8.0, 86.0, 30.0),
	Location:new(world, 8.0, 85.0, 30.0),
	Location:new(world, 8.0, 84.0, 30.0),
	Location:new(world, 7.0, 84.0, 30.0),
	Location:new(world, 6.0, 84.0, 30.0),
	Location:new(world, 5.0, 84.0, 30.0),
	Location:new(world, 4.0, 84.0, 30.0),
	Location:new(world, 3.0, 84.0, 30.0),
	Location:new(world, 3.0, 85.0, 30.0),
	Location:new(world, 3.0, 86.0, 30.0),
	Location:new(world, 3.0, 87.0, 30.0),
	Location:new(world, 3.0, 88.0, 30.0),
	Location:new(world, 3.0, 89.0, 30.0),
	Location:new(world, 3.0, 90.0, 30.0),

};

function blue_0(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_0();
end

function blue_score_0()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 3.0, 84.0, 30.0),
	Location:new(world, 4.0, 84.0, 30.0),
	Location:new(world, 5.0, 84.0, 30.0),
	Location:new(world, 6.0, 84.0, 30.0),
	Location:new(world, 7.0, 84.0, 30.0),
	Location:new(world, 8.0, 84.0, 30.0),
	Location:new(world, 5.0, 85.0, 30.0),
	Location:new(world, 6.0, 85.0, 30.0),
	Location:new(world, 5.0, 86.0, 30.0),
	Location:new(world, 6.0, 86.0, 30.0),
	Location:new(world, 5.0, 87.0, 30.0),
	Location:new(world, 6.0, 87.0, 30.0),
	Location:new(world, 5.0, 88.0, 30.0),
	Location:new(world, 6.0, 88.0, 30.0),
	Location:new(world, 5.0, 89.0, 30.0),
	Location:new(world, 6.0, 89.0, 30.0),
	Location:new(world, 5.0, 90.0, 30.0),
	Location:new(world, 6.0, 90.0, 30.0),
	Location:new(world, 5.0, 91.0, 30.0),
	Location:new(world, 6.0, 91.0, 30.0),
	Location:new(world, 7.0, 90.0, 30.0),
	Location:new(world, 8.0, 89.0, 30.0),
};

function blue_1(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_1();
end

function blue_score_1()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 3.0, 91.0, 30.0),
	Location:new(world, 4.0, 91.0, 30.0),
	Location:new(world, 5.0, 91.0, 30.0),
	Location:new(world, 6.0, 91.0, 30.0),
	Location:new(world, 7.0, 91.0, 30.0),
	Location:new(world, 8.0, 91.0, 30.0),
	Location:new(world, 3.0, 90.0, 30.0),
	Location:new(world, 3.0, 89.0, 30.0),
	Location:new(world, 8.0, 88.0, 30.0),
	Location:new(world, 7.0, 88.0, 30.0),
	Location:new(world, 6.0, 88.0, 30.0),
	Location:new(world, 5.0, 88.0, 30.0),
	Location:new(world, 4.0, 88.0, 30.0),
	Location:new(world, 3.0, 88.0, 30.0),
	Location:new(world, 8.0, 87.0, 30.0),
	Location:new(world, 8.0, 86.0, 30.0),
	Location:new(world, 8.0, 85.0, 30.0),
	Location:new(world, 3.0, 84.0, 30.0),
	Location:new(world, 4.0, 84.0, 30.0),
	Location:new(world, 5.0, 84.0, 30.0),
	Location:new(world, 6.0, 84.0, 30.0),
	Location:new(world, 7.0, 84.0, 30.0),
	Location:new(world, 8.0, 84.0, 30.0),

};

function blue_2(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_2();
end

function blue_score_2()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 3.0, 91.0, 30.0),
	Location:new(world, 4.0, 91.0, 30.0),
	Location:new(world, 5.0, 91.0, 30.0),
	Location:new(world, 6.0, 91.0, 30.0),
	Location:new(world, 7.0, 91.0, 30.0),
	Location:new(world, 8.0, 91.0, 30.0),
	Location:new(world, 3.0, 90.0, 30.0),
	Location:new(world, 3.0, 89.0, 30.0),
	Location:new(world, 3.0, 88.0, 30.0),
	Location:new(world, 3.0, 87.0, 30.0),
	Location:new(world, 3.0, 86.0, 30.0),
	Location:new(world, 3.0, 85.0, 30.0),
	Location:new(world, 8.0, 84.0, 30.0),
	Location:new(world, 4.0, 88.0, 30.0),
	Location:new(world, 5.0, 88.0, 30.0),
	Location:new(world, 6.0, 88.0, 30.0),
	Location:new(world, 7.0, 88.0, 30.0),
	Location:new(world, 3.0, 84.0, 30.0),
	Location:new(world, 4.0, 84.0, 30.0),
	Location:new(world, 5.0, 84.0, 30.0),
	Location:new(world, 6.0, 84.0, 30.0),
	Location:new(world, 7.0, 84.0, 30.0),
};

function blue_3(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_3();
end

function blue_score_3()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 8.0, 91.0, 30.0),
	Location:new(world, 8.0, 90.0, 30.0),
	Location:new(world, 8.0, 89.0, 30.0),
	Location:new(world, 8.0, 88.0, 30.0),
	Location:new(world, 3.0, 87.0, 30.0),
	Location:new(world, 3.0, 86.0, 30.0),
	Location:new(world, 3.0, 85.0, 30.0),
	Location:new(world, 3.0, 91.0, 30.0),
	Location:new(world, 3.0, 90.0, 30.0),
	Location:new(world, 3.0, 89.0, 30.0),
	Location:new(world, 3.0, 88.0, 30.0),
	Location:new(world, 4.0, 88.0, 30.0),
	Location:new(world, 5.0, 88.0, 30.0),
	Location:new(world, 6.0, 88.0, 30.0),
	Location:new(world, 7.0, 88.0, 30.0),
};

function blue_4(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_4();
end

function blue_score_4()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

local current = 1;
local maxData = 14;
local blocks = {
	Location:new(world, 3.0, 91.0, 30.0),
	Location:new(world, 4.0, 91.0, 30.0),
	Location:new(world, 5.0, 91.0, 30.0),
	Location:new(world, 6.0, 91.0, 30.0),
	Location:new(world, 7.0, 91.0, 30.0),
	Location:new(world, 8.0, 91.0, 30.0),
	Location:new(world, 8.0, 90.0, 30.0),
	Location:new(world, 8.0, 89.0, 30.0),
	Location:new(world, 8.0, 88.0, 30.0),
	Location:new(world, 7.0, 88.0, 30.0),
	Location:new(world, 6.0, 88.0, 30.0),
	Location:new(world, 5.0, 88.0, 30.0),
	Location:new(world, 4.0, 88.0, 30.0),
	Location:new(world, 3.0, 88.0, 30.0),
	Location:new(world, 3.0, 87.0, 30.0),
	Location:new(world, 3.0, 86.0, 30.0),
	Location:new(world, 3.0, 85.0, 30.0),
	Location:new(world, 3.0, 84.0, 30.0),
	Location:new(world, 4.0, 84.0, 30.0),
	Location:new(world, 5.0, 84.0, 30.0),
	Location:new(world, 6.0, 84.0, 30.0),
	Location:new(world, 7.0, 84.0, 30.0),
	Location:new(world, 8.0, 84.0, 30.0),

};

function blue_5(data)
	if current == maxData then
		current = 1;
	else
		current = current + 1;
	end
	blue_score_5();
end

function blue_score_5()
	for index, key in ipairs(blocks) do
		key:setBlock(89, current);
	end
end

registerHook("INTERACT", "blue_blank", 77, "Code4", 4, 86, -35);
registerHook("INTERACT", "blue_0", 77, "Code4", 4, 86, -36);
registerHook("INTERACT", "blue_1", 77, "Code4", 4, 86, -37);
registerHook("INTERACT", "blue_2", 77, "Code4", 4, 86, -38);
registerHook("INTERACT", "blue_3", 77, "Code4", 4, 86, -39);
registerHook("INTERACT", "blue_4", 77, "Code4", 4, 86, -40);
registerHook("INTERACT", "blue_5", 77, "Code4", 4, 86, -41);
