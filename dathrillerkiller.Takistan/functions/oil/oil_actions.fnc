
{
	_x addaction ["Drill for Oil","functions\items\mine.sqf",'oil',1,false,true,"","true"];
}ForEach (nearestobjects [getpos BuildingCollapesLogic, ["Land_Ind_Oil_Pump_EP1","Land_Ind_Oil_Tower_EP1"], 20000]);