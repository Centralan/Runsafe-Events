local bankWorld = World:new("survival3");

-- AI

local bankGuardian = AI:new("VaultSec", "AI", "survival3");

-- VAULT ENTRY 1

local bank1_strikeLocation1 = Location:new("survival3", 19473, 65, -20765);
local bank1_strikeLocation2 = Location:new("survival3", 19473, 65, -20765);
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
registerHook("INTERACT", "bank1_attempt", 143, "survival3", 19472, 63, -20765);

local pressedButtons = {};

local bank1_buttonSourceLocations = {
	Location:new("bankWorld", 19470, 63, -20763),
	Location:new("bankWorld", 19470, 63, -20764),
	Location:new("bankWorld", 19470, 63, -20765),
	Location:new("bankWorld", 19470, 63, -20766),
	Location:new("bankWorld", 19470, 63, -20767),
	Location:new("bankWorld", 19470, 63, -20768),
	Location:new("bankWorld", 19470, 63, -20769),
	Location:new("bankWorld", 19470, 63, -20770),
	Location:new("bankWorld", 19470, 63, -20771),
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
			location:setBlock(152, 0);
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

local bank1_gateTriggerBlock = Location:new("spawn", 396, 67, -908);
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

registerHook("REGION_ENTER", "bank1_closeGate", "survival3-bank_close1");

function bank1_button1() bank1_shiftButtons(1); end
function bank1_button2() bank1_shiftButtons(2); end
function bank1_button3() bank1_shiftButtons(3); end
function bank1_button4() bank1_shiftButtons(4); end
function bank1_button5() bank1_shiftButtons(5); end
function bank1_button6() bank1_shiftButtons(6); end
function bank1_button7() bank1_shiftButtons(7); end
function bank1_button8() bank1_shiftButtons(8); end
function bank1_button9() bank1_shiftButtons(9); end

local alphabet = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Space'};
local bank2_input = {};
local bank2_answer = {'X', 'U', 'O', 'R', 'Space', 'A', 'L'};
local bank2_strikeLocation = Location:new("survival3", 19479, 54, -20759);
local bank2_complete_location = Location:new("survival3", 19482, 54, -20759);

function bank2_shiftButtons(data, current)
	if #bank2_input == 10 then
		bank2_reset();
		local player = Player:new(data["player"]);
		bankGuardian:speak("Input exceeded limit. Exterminating intruder. Input reset.");
		player:kill();
		bank2_strikeLocation:lightningStrike();
	else
		local newInput = {};
		newInput[1] = current;
		for index, key in ipairs(bank2_input) do
			newInput[index + 1] = key;
		end
		bank2_input = newInput;
		bank2_checkInput(data);
	end
end

function bank2_reset()
	local input = '';
	for index, key in ipairs(bank2_input) do
		if key == 'Space' then
			key = ' ';
		end
		input = key .. input;
	end
	print('Bank input attempt: ' .. input);
	bank2_input = {};
end

function bank2_checkInput(data)
	local player = Player:new(data["player"]);
	if bank2_checkInput_2() then
		player:teleport(bank2_complete_location);
		bankGuardian:speak("Correct input code entered. Access to level 2 granted.");
		bank2_reset();
	end
end

function bank2_checkInput_2()	
	if #bank2_input ~= #bank2_answer then
		return false;
	end
	
	for index, key in ipairs(bank2_input) do
		if bank2_answer[index] ~= key then
			return false;
		end
	end
	return true;
end

function bank2_buttonA(data) bank2_shiftButtons(data, 'A'); end
function bank2_buttonB(data) bank2_shiftButtons(data, 'B'); end
function bank2_buttonC(data) bank2_shiftButtons(data, 'C'); end
function bank2_buttonD(data) bank2_shiftButtons(data, 'D'); end
function bank2_buttonE(data) bank2_shiftButtons(data, 'E'); end
function bank2_buttonF(data) bank2_shiftButtons(data, 'F'); end
function bank2_buttonG(data) bank2_shiftButtons(data, 'G'); end
function bank2_buttonH(data) bank2_shiftButtons(data, 'H'); end
function bank2_buttonI(data) bank2_shiftButtons(data, 'I'); end
function bank2_buttonJ(data) bank2_shiftButtons(data, 'J'); end
function bank2_buttonK(data) bank2_shiftButtons(data, 'K'); end
function bank2_buttonL(data) bank2_shiftButtons(data, 'L'); end
function bank2_buttonM(data) bank2_shiftButtons(data, 'M'); end
function bank2_buttonN(data) bank2_shiftButtons(data, 'N'); end
function bank2_buttonO(data) bank2_shiftButtons(data, 'O'); end
function bank2_buttonP(data) bank2_shiftButtons(data, 'P'); end
function bank2_buttonQ(data) bank2_shiftButtons(data, 'Q'); end
function bank2_buttonR(data) bank2_shiftButtons(data, 'R'); end
function bank2_buttonS(data) bank2_shiftButtons(data, 'S'); end
function bank2_buttonT(data) bank2_shiftButtons(data, 'T'); end
function bank2_buttonU(data) bank2_shiftButtons(data, 'U'); end
function bank2_buttonV(data) bank2_shiftButtons(data, 'V'); end
function bank2_buttonW(data) bank2_shiftButtons(data, 'W'); end
function bank2_buttonX(data) bank2_shiftButtons(data, 'X'); end
function bank2_buttonY(data) bank2_shiftButtons(data, 'Y'); end
function bank2_buttonZ(data) bank2_shiftButtons(data, 'Z'); end
function bank2_buttonSpace(data) bank2_shiftButtons(data, 'Space'); end

for i = 1, #alphabet do
	registerHook("INTERACT", "bank2_button" .. alphabet[i], 143, "survival3", 19481 - i, 56, -20759);
end

registerHook("INTERACT", "bank2_reset", 143, "survival3", 19481, 55, -20759);

for index, location in ipairs(bank1_buttonSourceLocations) do
	registerHook("INTERACT", "bank1_button" .. index, 143, "survival3", 19470, 63, location.z);
end
