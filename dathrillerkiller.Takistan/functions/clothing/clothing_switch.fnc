private ["_oldplayer","_oldweapons","_oldmags","_score","_rank","_damage","_skin","_pos","_skinsold","_group","_to_become","_var_name"];

	_oldplayer = player;
	_oldweapons = weapons _oldplayer;
	_oldmags    = magazines _oldplayer;
	_damage = damage _oldplayer;
	_skin = _this select 0;
	_pos = getposATL player;
	_skinsold = typeof player;
	_storage = player getVariable ['dtk_storage',[["schluesselbund","idcard"],[1,1]]];
	_warrants = player getVariable ['cdb_warrants',[]];
	_license = player getVariable ['cdb_license',[]];
	_notes = player getVariable ['cdb_notes',[]];
	_bounty = player getVariable ['cdb_bounty',0];
	call TFAR_RemoveRadios;

if (_skinsold != _skin) then {
	private["_group"];
	_group = (group _oldplayer);
	_to_become = _group createUnit [_skin, (position player), [], 0, "NONE"];
	_to_become setDir (getDir _oldplayer);
	private["_var_name"];
	_var_name = vehicleVarName _oldplayer;
	clearVehicleInit _oldplayer;
	_oldplayer setVehicleVarName format["old_%1", _var_name];
	_oldplayer setVehicleInit format['this setVehicleVarName "old_%1"; old_%1 = this;', _var_name];
	_to_become setVehicleInit format['this setVehicleVarName "%1"; %1 = this;', _var_name];
	processInitCommands;
	[_to_become] joinSilent _group;
	addSwitchableUnit _to_become;
	titleCut["", "BLACK in",2];
	selectPlayer _to_become;
	waitUntil {typeOf player == _skin};
	waitUntil {isPlayer _to_become};
	player removeWeapon "ItemRadio";
	_group selectLeader _to_become;
	[_oldplayer] call clothing_delete;
	removeAllWeapons _to_become;
	[player]call core_removeEventHandlers;
	player addEventHandler ["fired",{_this execVM "scripts\fired.sqf"}];
	player addEventHandler ["handleDamage", {_this call events_sethit}];
	player addEventHandler ["respawn", {_this call setup_respawn; _this}]; 
	player setPosATL _pos;
	player setVariable ['dtk_storage',_storage,true];
	player setVariable ["cdb_warrants",_warrants,true];
	player setVariable ["cdb_license",_license,true];
	player setVariable ["cdb_notes",_notes,true];
	player setVariable ["cdb_bounty",_bounty,true]; 
	execVM format ['actions\%1actions.sqf',dtk_side];
	if (dtk_side == "EMS")then
	{
	player addEventHandler ["fired", {[(_this select 0),(_this select 1), (_this select 4)]call ems_firehose;}];
	};
	sleep 2;
	{if !(_x call TFAR_fnc_isRadio)then {player addWeapon _x};}count _oldweapons;
	{player addMagazine _x} count _oldmags;

	_PlayerSettings = profileNamespace getVariable "tickleme";
	player setVariable ["PlayerSettings", [_PlayerSettings,dtk_side], true];
	_face = (_PlayerSettings select 0);
	clearVehicleInit player;
	player setVehicleInit format["this setFace '%1';", _face];
	processInitCommands;
	
	sleep 1;
	call TFAR_addRadios;
	call gps_diary;
	AR_PlayerVaribale = player;
	};
	