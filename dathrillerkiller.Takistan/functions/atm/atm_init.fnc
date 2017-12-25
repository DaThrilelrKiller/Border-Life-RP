{
	missionnameSPace setVariable [format ["atm_%1",_forEachIndex],_x];
	[_x,"ATM (E)","sfg_textures\hud\7"]call tag_add;
}ForEach (nearestobjects [getpos BuildingCollapesLogic, ["tcg_ATM"], 20000]);