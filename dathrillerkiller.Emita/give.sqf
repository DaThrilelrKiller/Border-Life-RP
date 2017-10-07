_art         = _this select 0;
_item        = _this select 1;
_menge       = _this select 2;
_itemanzeige = (_item call INV_getitemName);

if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

if (_art == "uebergabe") then 

{	

_playerobject   = call compile(_this select 3);

if (_menge <= 0) exitWith {systemChat  "You cannot give less than 0";};
if (_playerobject == player)                         exitWith {systemChat  localize "STRS_inv_inventar_uebergabe_self";};
if (player distance _playerobject > 20)              exitWith {systemChat  localize "STRS_inv_inventar_uebergabe_distance";};	
if (!(_item call INV_getitemGiveable))               exitWith {systemChat  localize "STRS_inv_inventar_uebergabe_verbot";};
if (!([player,_item,-_menge] call storage_add)) exitWith {systemChat  localize "STRS_inv_inventar_uebergabe_zuwenig";};
if (_menge < 0) exitWith {systemChat  localize "STRS_give_minus_then";};
format ["if (player == %1) then {[""bekommen"", ""%2"", %3, %4] execVM ""give.sqf"";};", _playerobject, _item, _menge, player] call network_broadcast;
				
systemChat  format [localize "STRS_inv_inventar_uebergabe_success_self", name _playerobject, (_menge call string_intToString), _itemanzeige];

};

if (_art == "bekommen") then 

{
_spieler = _this select 3;

if ([player,_item,_menge] call storage_add) then 

	{

	systemChat  format[localize "STRS_inv_inventar_gotfromotherplayer", (_menge call string_intToString), _itemanzeige, name _spieler];	

	} 
	else 
	{

	format ["if (player == %1) then {[player,'%2',%3] call storage_add;};", _spieler, _item, _menge] call network_broadcast;

	};

};
