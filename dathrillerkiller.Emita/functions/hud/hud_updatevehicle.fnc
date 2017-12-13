private ["_hud","_vehhud","_vcl","_vclClass","_storweight","_maxweight","_stor","_locked"];


_hud = uiNameSpace getVariable "ar_hud";
_vehhud = _hud displayCtrl 152;

_vcl = (vehicle player);
_vclClass = (_vcl getVariable "DTK_OwnerUID" select 1);
_storweight = [_vcl] call storage_kg;
_maxweight = _vclClass call INV_getvehmaxkg;
_stor = format ["%1/%2",_storweight,_maxweight];
_locked = ["Un-Locked","Locked"]select (locked _vcl);
	
_vehhud ctrlSetStructuredText parseText format [
"
 <img size='0.8' image='sfg_textures\hud\1.paa'/> %2%1<br/>
 <img size='0.8' image='sfg_textures\hud\5.paa'/> %3%1<br/>
 <img size='0.8' image='sfg_textures\hud\6.paa'/> 100%1<br/>
 <img size='0.8' image='sfg_textures\hud\2.paa'/> %4<br/>
 <img size='0.8' image='sfg_textures\hud\3.paa'/> %5<br/>
 <img size='0.8' image='sfg_textures\hud\4.paa'/> %6<br/>
 <img size='0.8' image=''/> <br/><br/>
"
,"%"
,round damage _vcl
,((fuel _vcl) call string_rounddecimal)
,_locked
,round speed _vcl
,_stor
,""
,""
];