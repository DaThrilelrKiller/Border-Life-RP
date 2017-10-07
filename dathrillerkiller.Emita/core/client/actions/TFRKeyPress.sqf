
if (!isNil "TFR_TangentEH")then {(findDisplay 46) displayRemoveEventHandler ["keyUp", TFR_TangentEH];};

["player", [[(KeybindingsDone select 24 select 1), (KeybindingsDone select 24 select 2)]], -3, '_this call TFAR_fnc_swRadioMenu'] call CBA_fnc_flexiMenu_Add;

[(KeybindingsDone select 21 select 1), (KeybindingsDone select 21 select 2), {call TFAR_fnc_onSwTangentPressed}, "keydown", "2"] call CBA_fnc_addKeyHandler;

[(KeybindingsDone select 35 select 1), (KeybindingsDone select 35 select 2), {[0] call TFAR_fnc_processSWChannelKeys}, "keydown", "3"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 36 select 1), (KeybindingsDone select 36 select 2), {[1] call TFAR_fnc_processSWChannelKeys}, "keydown", "4"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 37 select 1), (KeybindingsDone select 37 select 2), {[2] call TFAR_fnc_processSWChannelKeys}, "keydown", "5"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 38 select 1), (KeybindingsDone select 38 select 2), {[3] call TFAR_fnc_processSWChannelKeys}, "keydown", "6"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 39 select 1), (KeybindingsDone select 39 select 2), {[4] call TFAR_fnc_processSWChannelKeys}, "keydown", "7"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 40 select 1), (KeybindingsDone select 40 select 2), {[5] call TFAR_fnc_processSWChannelKeys}, "keydown", "8"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 41 select 1), (KeybindingsDone select 41 select 2), {[6] call TFAR_fnc_processSWChannelKeys}, "keydown", "9"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 42 select 1), (KeybindingsDone select 42 select 2), {[7] call TFAR_fnc_processSWChannelKeys}, "keydown", "10"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 25 select 1), (KeybindingsDone select 25 select 2), {call TFAR_fnc_onLRTangentPressed}, "keydown", "11"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 25 select 1), (KeybindingsDone select 25 select 2), {call TFAR_fnc_onLRTangentReleased}, "keyup", "_11"] call CBA_fnc_addKeyHandler;

TFR_TangentEH = (findDisplay 46) displayAddEventHandler ["keyUp", "_this call TFAR_fnc_onLRTangentReleasedHack"];
["player", [[(KeybindingsDone select 28 select 1), (KeybindingsDone select 28 select 2)]], -3, '_this call TFAR_fnc_lrRadioMenu'] call CBA_fnc_flexiMenu_Add;

[(KeybindingsDone select 48 select 1), (KeybindingsDone select 48 select 2), {[0] call TFAR_fnc_processLRChannelKeys}, "keydown", "13"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 49 select 1), (KeybindingsDone select 49 select 2), {[1] call TFAR_fnc_processLRChannelKeys}, "keydown", "14"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 50 select 1), (KeybindingsDone select 50 select 2), {[2] call TFAR_fnc_processLRChannelKeys}, "keydown", "15"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 51 select 1), (KeybindingsDone select 51 select 2), {[3] call TFAR_fnc_processLRChannelKeys}, "keydown", "16"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 52 select 1), (KeybindingsDone select 52 select 2), {[4] call TFAR_fnc_processLRChannelKeys}, "keydown", "17"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 53 select 1), (KeybindingsDone select 53 select 2), {[5] call TFAR_fnc_processLRChannelKeys}, "keydown", "18"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 54 select 1), (KeybindingsDone select 54 select 2), {[6] call TFAR_fnc_processLRChannelKeys}, "keydown", "19"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 55 select 1), (KeybindingsDone select 55 select 2), {[7] call TFAR_fnc_processLRChannelKeys}, "keydown", "20"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 56 select 1), (KeybindingsDone select 56 select 2), {[8] call TFAR_fnc_processLRChannelKeys}, "keydown", "21"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 29 select 1), (KeybindingsDone select 29 select 2), {call TFAR_fnc_onSpeakVolumeChange}, "keydown", "24"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 30 select 1), (KeybindingsDone select 30 select 2), {["next"] call TFAR_fnc_processSWCycleKeys}, "keyup", "31"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 31 select 1), (KeybindingsDone select 31 select 2), {["prev"] call TFAR_fnc_processSWCycleKeys}, "keyup", "32"] call CBA_fnc_addKeyHandler;	
[(KeybindingsDone select 43 select 1), (KeybindingsDone select 43 select 2), {["next"] call TFAR_fnc_processLRCycleKeys}, "keyup", "33"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 44 select 1), (KeybindingsDone select 44 select 2), {["prev"] call TFAR_fnc_processLRCycleKeys}, "keyup", "34"] call CBA_fnc_addKeyHandler;	
[(KeybindingsDone select 32 select 1), (KeybindingsDone select 32 select 2), {[0] call TFAR_fnc_processSWStereoKeys}, "keydown", "25"] call CBA_fnc_addKeyHandler;	
[(KeybindingsDone select 33 select 1), (KeybindingsDone select 33 select 2), {[1] call TFAR_fnc_processSWStereoKeys}, "keydown", "26"] call CBA_fnc_addKeyHandler;	
[(KeybindingsDone select 34 select 1), (KeybindingsDone select 34 select 2), {[2] call TFAR_fnc_processSWStereoKeys}, "keydown", "27"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 45 select 1), (KeybindingsDone select 45 select 2), {[0] call TFAR_fnc_processLRStereoKeys}, "keydown", "28"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 46 select 1), (KeybindingsDone select 46 select 2), {[1] call TFAR_fnc_processLRStereoKeys}, "keydown", "29"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 47 select 1), (KeybindingsDone select 47 select 2), {[2] call TFAR_fnc_processLRStereoKeys}, "keydown", "30"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 23 select 1), (KeybindingsDone select 23 select 2), {call TFAR_fnc_onAdditionalSwTangentPressed}, "keydown", "49"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 23 select 1), (KeybindingsDone select 23 select 2), {call TFAR_fnc_onAdditionalSwTangentReleased}, "keyup", "_34"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 27 select 1), (KeybindingsDone select 27 select 2), {call TFAR_fnc_onAdditionalLRTangentPressed}, "keydown", "35"] call CBA_fnc_addKeyHandler;
[(KeybindingsDone select 27 select 1), (KeybindingsDone select 27 select 2), {call TFAR_fnc_onAdditionalLRTangentReleased}, "keyup", "_35"] call CBA_fnc_addKeyHandler;