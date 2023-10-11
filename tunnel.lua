------------------
--Locals--
------------------

--World
local world = World:new('tunnel');
local world2 = World:new('spawn2');

--tps

--sounds

--chests
local endloot = Location:new(world2, -1581.0, 44.0, -365.0);

--misc

----------------
--ai------------
----------------

------------------
--Entrance----------
------------------

function tunnel_start(data)
	local p = Player:new(data["player"]);
	p:removePotionEffects();
end

------------------
--Part1----------
------------------

------------------
--Part2----------
------------------

------------------
--Part3----------
------------------

------------------
--Part4----------
------------------

------------------
--Maze----------
------------------

------------------
--End----------
------------------

function tunnel3_endloot(data)
        local player = Player:new(data.player);
              endloot:cloneChestToPlayer(player.name);
              player:closeInventory();
  
registerHook("REGION_LEAVE", "tunnel3_endloot", "tunnel-tunnel3_test");
  
