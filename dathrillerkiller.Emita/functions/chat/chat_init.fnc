if (dtk_server)exitWith {};

[]spawn {
private ["_i","_display","_chat","_text"];

disableSerialization; 

for "_i" from 0 to 1 step 0 do 
{
	waitUntil {!(isNull (findDisplay 24))};
	if (!isNull (findDisplay 63))then {
	(findDisplay 63 displayCtrl 101) ctrlSetText "Tweet";
	(findDisplay 63 displayCtrl 101) ctrlSetTextColor [0.5,0,0,1];
	};
	
	(findDisplay 24) displayAddEventHandler ["keyUp", "_this call chat_KeyUp"];
	waitUntil {isNull (findDisplay 24)};
};
};
chat_init_done = true;

