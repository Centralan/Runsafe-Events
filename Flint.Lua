local world = World:new('spawn');

function flintgraveyard_ach(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.deadbone");
end
 
function flintboat_ach(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.landho");
end
 
function flintsmaze_ach(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.belovedflower");
end

function barleria_ach(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.barleriapeal");
end

function sfish_ach(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.silverfishmind");
end

function treasure_ach(data)
        local p = Player:new(data["player"]);
        p:sendEvent("achievement.mastertreasurehunter");
end
 
registerHook("REGION_ENTER", "flintboat_ach", "spawn-cfr_boatportal");
registerHook("REGION_ENTER", "flintgraveyard_ach", "spawn-cfr_grportalexit");
registerHook("REGION_ENTER", "flintsmaze_ach", "spawn-cfr_smazee");
registerHook("REGION_ENTER", "barleria_ach", "spawn-cfr_barleriacave_exit");
registerHook("REGION_ENTER", "sfish_ach", "spawn-cfr_silverfish_exit");
registerHook("INTERACT", "treasure_ach", 54, world.name, 28055, 21, 28196);


-- Locked Chest
--

local world = World:new('spawn');

function reef_start_locked_chest(data)
	local player = Player:new(data.player);
	player:sendMessage("&6Captain Flint: &aOnly mates who have gotten all t' items may press t' button. Once they do they will have a short time t' find me booty!");
end

registerHook("INTERACT", "reef_start_locked_chest", 54, world.name, 27952, 69, 28062);

-- BoardingPass
--

local world = World:new('spawn');

local BoardingPassEnterLoc = Location:new(world, 27998, 63, 27989);
BoardingPassEnterLoc:setYaw(-180);
BoardingPassEnterLoc:setPitch(-9);

function boardingpass_error(player)
	player:sendMessage("&cYou need a Boarding Pass to get onto this ship!");
end

function boardingpass_teleport(player, location)
	player:teleport(location);
	location:playSound('PORTAL', 1, 2);
	location:playEffect('PORTAL', 30, 200, 5);
end

function boardingpass_check(data, key, location)
	local player = Player:new(data.player);
	if player:hasItemWithName("&cCaptain Flint's Boarding Pass") then
		boardingpass_teleport(player, location);
	else
		boardingpass_error(player);
	end
end

registerHook("INTERACT", "boardingpass_check", 77, world.name, 27996, 65, 27995);

local world = World:new('spawn');
local boatChest = Location:new(world, 28019, 57, 27955);
local boatChestOpen = Location:new(world, 28017, 57, 27955);
local boatChestPlayers = {};
local boatChestTimerRunning = false;
local boatChestTimer = Timer:new("local world = World:new('spawn');_reset_chest", 1 * 2 * 5);

function boat_open_chest(data)
	local player = Player:new(data.player);
	if boatChestPlayers[player.name] == nil then
		boatChestPlayers[player.name] = true;
		player:sendMessage("&dReaching into the chest you find a key, along with a piece of paper.");
		boatChestOpen:playSound('HORSE_SADDLE', 1, 0);
		player:closeInventory();
		boatChest:cloneChestToPlayer(player.name);
	end
	
	if not boatChestTimerRunning then
		boatChestTimerRunning = true;
		boatChestTimer:start();
	end
end

function boat_reset_chest()
	boatChestPlayers = {};
	boatChestTimerRunning = false;
end

registerHook("INTERACT", "boat_open_chest", 54, world.name, 28017, 57, 27955);



-- Graveyard
--

local world = World:new('spawn');
local graveyardChest = Location:new(world, 28119, 25, 28127);
local graveyardChestOpen = Location:new(world, 28119, 28, 28127);
local graveyardChestPlayers = {};
local graveyardChestTimerRunning = false;
local graveyardChestTimer = Timer:new("local world = World:new('spawn');_reset_chest", 1 * 2 * 5);

function graveyard_open_chest(data)
	local player = Player:new(data.player);
	if graveyardChestPlayers[player.name] == nil then
		graveyardChestPlayers[player.name] = true;
		player:sendMessage("&dReaching into the chest you find a nasty bone, along with a piece of paper.");
		graveyardChestOpen:playSound('HORSE_SADDLE', 1, 0);
		player:closeInventory();
		graveyardChest:cloneChestToPlayer(player.name);
	end
	
	if not graveyardChestTimerRunning then
		graveyardChestTimerRunning = true;
		graveyardChestTimer:start();
	end
end

function graveyard_reset_chest()
	graveyardChestPlayers = {};
	graveyardChestTimerRunning = false;
end

registerHook("INTERACT", "graveyard_open_chest", 54, world.name, 28119, 28, 28127);

-- SandMaze
--

local world = World:new('spawn');
local sandmazeChest = Location:new(world, 27947, 19, 28069);
local sandmazeChestOpen = Location:new(world, 27945, 19, 28069);
local sandmazeChestPlayers = {};
local sandmazeChestTimerRunning = false;
local sandmazeChestTimer = Timer:new("local world = World:new('spawn');_reset_chest", 1 * 2 * 5);

function sandmaze_open_chest(data)
	local player = Player:new(data.player);
	if sandmazeChestPlayers[player.name] == nil then
		sandmazeChestPlayers[player.name] = true;
		player:sendMessage("&dReaching into the chest you find a nice smelling flower, along with a piece of paper.");
		sandmazeChestOpen:playSound('HORSE_SADDLE', 1, 0);
		player:closeInventory();
		sandmazeChest:cloneChestToPlayer(player.name);
	end
	
	if not sandmazeChestTimerRunning then
		sandmazeChestTimerRunning = true;
		sandmazeChestTimer:start();
	end
end

function sandmaze_reset_chest()
	sandmazeChestPlayers = {};
	sandmazeChestTimerRunning = false;
end

registerHook("INTERACT", "sandmaze_open_chest", 54, world.name, 27945, 19, 28069);

-- Cave
--

local world = World:new('spawn');
local caveChest = Location:new(world, 27942, 10, 28044);
local caveChestOpen = Location:new(world, 27942, 13, 28044);
local caveChestPlayers = {};
local caveChestTimerRunning = false;
local caveChestTimer = Timer:new("local world = World:new('spawn');_reset_chest", 1 * 2 * 5);

function cave_open_chest(data)
	local player = Player:new(data.player);
	if caveChestPlayers[player.name] == nil then
		caveChestPlayers[player.name] = true;
		player:sendMessage("&dReaching into the chest you find a pearl, along with a piece of paper.");
		caveChestOpen:playSound('HORSE_SADDLE', 1, 0);
		player:closeInventory();
		caveChest:cloneChestToPlayer(player.name);
	end
	
	if not caveChestTimerRunning then
		caveChestTimerRunning = true;
		caveChestTimer:start();
	end
end

function cave_reset_chest()
	caveChestPlayers = {};
	caveChestTimerRunning = false;
end

registerHook("INTERACT", "cave_open_chest", 54, world.name, 27942, 13, 28044);

-- Silverfish
--

local world = World:new('spawn');
local silverfishChest = Location:new(world, 28028, 40, 28048);
local silverfishChestOpen = Location:new(world, 28028, 40, 28050);
local silverfishChestPlayers = {};
local silverfishChestTimerRunning = false;
local silverfishChestTimer = Timer:new("local world = World:new('spawn');_reset_chest", 1 * 2 * 5);

function silverfish_open_chest(data)
	local player = Player:new(data.player);
	if silverfishChestPlayers[player.name] == nil then
		silverfishChestPlayers[player.name] = true;
		player:sendMessage("&dReaching into the chest you find something small and grey, along with a piece of paper.");
		silverfishChestOpen:playSound('HORSE_SADDLE', 1, 0);
		player:closeInventory();
		silverfishChest:cloneChestToPlayer(player.name);
	end
	
	if not silverfishChestTimerRunning then
		silverfishChestTimerRunning = true;
		silverfishChestTimer:start();
	end
end

function silverfish_reset_chest()
	silverfishChestPlayers = {};
	silverfishChestTimerRunning = false;
end

registerHook("INTERACT", "silverfish_open_chest", 54, world.name, 28028, 40, 28050);

-- Teasure Room
--

local world = World:new('spawn');
local treasureChest = Location:new(world, 28055, 21, 28196);
local treasurePlayers = {};


function treasureBook(data)
	local player = Player:new(data.player);
	if treasurePlayers[player.name] == nil then
		treasurePlayers[player.name] = true;
		treasureChest:cloneChestToPlayer(player.name);
		player:sendMessage("&d You have made it to Flint's Lost Treasure, you have been given a book and ten gold. Please write in the book and sign it. After use /flint to send the book. &cAll major prizes are NO LONGER being rewarded. &dIf you mail a book and have already gotten a prize on any other account you WILL NOT get a new prize.");
	end
end

registerHook("INTERACT", "treasureBook", 54, world.name, 28055, 21, 28196);
