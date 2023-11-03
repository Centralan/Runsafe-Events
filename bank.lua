local bankWorld = World:new("survival3");

-- AI

local bankGuardian = AI:new("VaultSec", "AI", "survival3");

-- VAULT ENTRY 1

local bank1_strikeLocation1 = Location:new("survival3", 19472, 61, -20755);
local bank1_strikeLocation2 = Location:new("survival3", 19472, 61, -20755);
function bank1_attempt(data)
        if bank1_checkCombo() then
                bank1_lightButtons();
        else
                if data["player"] ~= nil then
                        bankGuardian:speak("Unauthorized access detected. Vaporizing target entity with fire.");
                        local player = Player:new(data["player"]);
                        bank1_strikeLocation1:lightningStrike();
                        bank1_strikeLocation2:lightningStrike();
                        player:kill();
                end
        end
end
registerHook("INTERACT", "bank1_attempt", 143, "survival3", 19470, 63, -20759);

local pressedButtons = {};

local bank1_buttonSourceLocations = {
        Location:new("survival3", 19471, 64, -20759);
        Location:new("survival3", 19472, 64, -20759);
        Location:new("survival3", 19473, 64, -20759);
        Location:new("survival3", 19471, 63, -20759);
        Location:new("survival3", 19472, 63, -20759);
        Location:new("survival3", 19473, 63, -20759);
        Location:new("survival3", 19471, 62, -20759);
        Location:new("survival3", 19472, 62, -20759);
        Location:new("survival3", 19473, 62, -20759);
};

function bank1_shiftButtons(newDigit)
        if newDigit ~= pressedButtons[1] then
                pressedButtons[4] = pressedButtons[3];
                pressedButtons[3] = pressedButtons[2];
                pressedButtons[2] = pressedButtons[1];
                pressedButtons[1] = newDigit;
        end
bank1_lightButtons();
end

function bank1_lightButtons()
        local pButtons = {};
        if pressedButtons[1] ~= nil then pButtons[pressedButtons[1]] = true; end
        if pressedButtons[2] ~= nil then pButtons[pressedButtons[2]] = true; end
        if pressedButtons[3] ~= nil then pButtons[pressedButtons[3]] = true; end
        if pressedButtons[4] ~= nil then pButtons[pressedButtons[4]] = true; end

        for index, location in ipairs(bank1_buttonSourceLocations) do
                if pButtons[index] == true then
                        location:setBlock(101, 0);
                else
                        location:setBlock(0, 0);
                end
        end
end

function bank1_checkCombo()
        if pressedButtons[1] == 5 and pressedButtons[2] == 8 and pressedButtons[3] == 3 and pressedButtons[4] == 1 then
                pressedButtons = {};
                bank1_openGate();
                bankGuardian:speak("Input code correct. Level 1 clearance granted.");
                return true;
        end
        return false;
end

local bank1_gateTriggerBlock = Location:new("survival3", 19470, 63, -20579);
bank1_gateTriggerBlock:setBlock(0, 0); -- Reset incase we got stuck at some point.

local bank1_gateBlocks = {};
for x = 19469, 19469 do
	for z = -20756, -20758 do
		for y = 64, 62 do
			table.insert(bank1_gateBlocks, Location:new("survival3", x, y, z));
		end
	end
end

function bank1_setGate(blockID)
	for i = 1, #bank1_gateBlocks do
		bank1_gateBlocks[i]:setBlock(blockID, 0);
	end
end

function bank1_openGate()
	bank1_gateTriggerBlock:setBlock(152, 0);
	bank1_setGate(0);
end

function bank1_closeGate()
	bank1_gateTriggerBlock:setBlock(0, 0);
	bank1_setGate(101);
end
--registerHook("BLOCK_GAINS_CURRENT", "bank1_closeGate", "spawn", 402, 67, -908);

function bank1_button1() bank1_shiftButtons(1); end
function bank1_button2() bank1_shiftButtons(2); end
function bank1_button3() bank1_shiftButtons(3); end
function bank1_button4() bank1_shiftButtons(4); end
function bank1_button5() bank1_shiftButtons(5); end
function bank1_button6() bank1_shiftButtons(6); end
function bank1_button7() bank1_shiftButtons(7); end
function bank1_button8() bank1_shiftButtons(8); end
function bank1_button9() bank1_shiftButtons(9); end
