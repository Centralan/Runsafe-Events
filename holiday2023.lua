---------------
--Worlds / sound--
---------------
local world = World:new('survival3');

---------------------------
----------messaging--------
---------------------------

function spawn_whisper(npc, msg, player)
	p:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

local sp = AI:new("SPENCER", "AI", "survival3");


---------------------------
----------Player Processing--------
---------------------------

function fireTick()
	processPlayers({world:getPlayers()});
end

---------------
--Task 1 --
---------------
function collect_snowballs(data)
        local player = Player:new(data.player);
                if player:hasItem("snowball", 64) then
                sp:speak( player.name .. " has completed the [Classifed] objective.");
  end
end

registerHook("BLOCK_GAINS_CURRENT", "fireTick", "survival3", 19515.0, 64.0, -20801.0);
