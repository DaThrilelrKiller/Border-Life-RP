{
	_x setVehicleVarName format ["oil_%1",_forEachIndex];
	missionNamespace setVariable [format ["oil_%1",_forEachIndex],_x];
	_x addaction ["","functions\items\mine.sqf",'oil',1,false,true,"LeanRight","true"];
	[_x,"Drill For Oil (E)","sfg_textures\tags\oil"]call tag_add;
}ForEach v_oil_pumps;