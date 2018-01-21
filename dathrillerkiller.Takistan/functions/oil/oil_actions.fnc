if (dtk_server)exitWith {};

{
	_x setVehicleVarName format ["oil_%1",_forEachIndex];
	missionNamespace setVariable [format ["oil_%1",_forEachIndex],_x];
	_x addaction ["","functions\items\mine.sqf",'oil', 25, false, true, "LeanRight",format ["player distance _target < 5 && {!([_target,'Drill For Oil (E)','sfg_textures\tags\oil']call tag_show)}",_img,_text]];

}ForEach v_oil_pumps;