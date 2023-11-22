local world = World:new('survival3');

---------------------------
----------messaging--------
---------------------------

function spawn_whisper(npc, msg, player)
	p:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

local kj = AI:new("Kjorn", "AI", "survival3");

---------------------------
----------Centralan Head---
---------------------------
local world = "survival3";
local current = 3;
local maxData = 3;
local blocks = {
        Location:new(world, -30873, 58, -34887),
}

function temple_centralan(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        set_centralan();
end

function set_centralan()
      if player:hasItemWithName("§4Centralan Head") then
        for index, key in ipairs(blocks) do
                key:setBlock(397, current);
                kj:speak( player.name .. " has placed the centralan head in the temple.");
        end
end
end

registerHook("REGION_ENTER", "set_centralan", "survival3-temple_place");
registerHook("INTERACT", "set_centralan", 143, "survival3", 30686, 58, 34887);
