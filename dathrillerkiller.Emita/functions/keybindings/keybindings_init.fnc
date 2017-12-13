/*
File: fn_init.sqf
Desc: Inizlizes the players keys and allows them to set custom ones
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/

if (dtk_server)exitWith {};

private ["_KeybindingsDone"];

KeybindingsDone = profileNamespace getVariable ["SFGKeys123",keybindingDefaults];

call compile preprocessFile  format ['actions\%1KeyPressFunctions.sqf',ar_side];
call compile preprocessFile format ['actions\%1actions.sqf',ar_side];
call compile preprocessFile format ['actions\%1OnKeyPress.sqf',ar_side];
call compile preprocessFile 'actions\TFRKeyPress.sqf';

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call keybindings_KeyDown"];
(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call keybindings_keyUp"];