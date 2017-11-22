private ["_hud","_wephud","_weapon","_picure","_name","_magizine","_mpicure","_mname","_ammo","_firemode","_info"];

_hud = uiNameSpace getVariable "ar_hud";
_wephud = _hud displayCtrl 155;

_info = weaponState player;

_weapon =  _info select 0;
_firemode = _info select 2;
_magizine = _info select 3;
_ammo = _info select 4;

_picure = getText (configFile >> "cfgWeapons" >> _weapon >> "picture");
_name = getText (configFile >> "cfgWeapons" >> _weapon >> "displayName");

_mpicure = getText (configFile >> "cfgMagazines" >> _magizine >> "picture");
_mname = getText (configFile >> "cfgMagazines" >> _magizine >> "displayName");


_holsterPistol = if (ARHP == "")then {"No pistol holstered"}else{getText (configFile >> "cfgWeapons" >> ARHP >> "displayName")}; 
_holsterRifle = if (ARHR == "")then {"No rifle holstered"}else{getText (configFile >> "cfgWeapons" >> ARHR >> "displayName")};  

if (_weapon == "")then {
	
	_wephud ctrlSetStructuredText parseText format [
	"
	1. %2<br/>
	2. %1
	"
	,_holsterRifle
	,_holsterPistol
	];

}else{
	_wephud ctrlSetStructuredText parseText format [
	"
	%6 | %2<br/>
	<img size='5' image='%1'/><br/>
	%4 %5<img size='1.5' image='%3'/><br/>
	1. %8<br/>
	2. %7<br/>
	"
	,_picure
	,_name
	,_mpicure
	,_mname
	,_ammo
	,_firemode
	,_holsterRifle
	,_holsterPistol
	];
};