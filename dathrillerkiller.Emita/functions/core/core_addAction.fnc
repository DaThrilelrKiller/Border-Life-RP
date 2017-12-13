private ["_object","_title","_script","_prams","_priority","_window","_hide","_key","_condition","_radius","_unconscious"];
_object = _this select 0;
_title = _this select 1;
_script = _this select 2;
_prams = _this select 3;
_priority = _this select 4;
_window = _this select 5;
_hide = _this select 6;
_key = _this select 7;
_condition = _this select 8;
_radius = _this select 9;
_unconscious = _this select 10;
 
_prams = if (isNil "_prams")then {[]}else{_prams};
_priority = if (isNil "_priority")then {1.5}else{_priority};
_window = if (isNil "_window")then {false}else{_window};
_hide = if (isNil "_hide")then {true}else{_hide};
_key = if (isNil "_key")then {""}else{_key};
_condition = if (isNil "_condition")then {"true"}else{_condition};
_radius = if (isNil "_radius")then {15}else{_radius};
_unconscious = if (isNil "_unconscious")then {false}else{_unconscious};
 
_code = {_object addaction [_title,_script,_prams,_priority,_window,_hide,_key,_condition];};

_object setvehicleinit format ["call %1",_code];
processInitCommands;