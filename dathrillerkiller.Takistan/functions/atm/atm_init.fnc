if (dtk_server)exitWith {};

{
	missionnameSPace setVariable [format ["atm_%1",_forEachIndex],_x];
	_x addaction ["","noscript.sqf","call atm_open;", 25, false, true, "LeanRight","player distance _target < 5 && {!([_target,'ATM (E)','sfg_textures\hud\7']call tag_show)}"];
}ForEach dtk_atms;

call atm_markers;