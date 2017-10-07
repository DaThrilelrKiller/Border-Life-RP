private ["_hud","_playhud","_vcl","_vclClass","_storweight","_maxweight","_stor","_health"];

_hud = uiNameSpace getVariable "ar_hud";
_playhud = _hud displayCtrl 154;

_hunger = round(INV_hunger);
_invmoney = [[player,"geld"] call storage_amount] call Main_FormatMoney;
_bankmoney = [(konToStand)] call Main_FormatMoney;


_health = damage player;
_health = toArray str _health;
_health set[count _health, 48];
_health set[count _health, 48];
_health = parseNumber toString[_health select 2,_health select 3];
_health = (100 - _health);	

_playhud ctrlSetStructuredText parseText format [
"
 <br/>
 <br/>
 <br/>
 <br/>
 <br/>
 <br/>
 <img size='0.8' image='sfg_textures\hud\9.paa'/> %1<br/>
 <img size='0.8' image='sfg_textures\hud\8.paa'/> %2<br/>
 <img size='0.8' image='\CA\misc\data\icons\picture_money_CA.paa'/> %3<br/>
 <img size='0.8' image='sfg_textures\hud\7.paa'/> %4<br/>
"
,_hunger
,_health
,_invmoney
,_bankmoney
];