private ["_unit","_escorting","_escort"];

_escorting = player getVariable "escorting";

/* Stop escorting */
if (!isNil "_escorting") exitWith {
	detach _escorting;
	_escorting setVariable ["escorting",nil,true];
	player setVariable ["escorting",nil,true];
};

_unit = cursorTarget;
_escort = _unit getVariable "escorting";


/* check if unit is player, and is close enought to escort */
if (isNil "_unit")exitWith {};
if (!isPlayer _unit) exitWith {};
if (_unit distance player > 3) exitWith {};

/* make sure the unit is not already being escorted */
if (!isNil "_escort") exitWith {
systemchat format ["%1 is already being escorted by %2",name _unit,name _escort];
};

/* Stop escorting */
if (!isNil "_escorting") exitWith {
	detach _escorting;
	_unit setVariable ["escorting",nil,true];
	player setVariable ["escorting",nil,true];
};

if (!(_unit getVariable ["Cuffed",false])) exitWith {};

_unit attachTo [player,[0.6,0.3,0]]; 
hintSilent format ["%1 Attached!", name _unit];
_unit setVariable ["escorting",player,true];
player setVariable ["escorting",_unit,true];
