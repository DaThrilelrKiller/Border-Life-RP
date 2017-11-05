_MParray = ["server","Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","EMS1","EMS2","EMS3","Civ34","Civ35","Civ36","Civ37","Civ38","Civ39","Civ40","Civ41","Civ42","Civ43","Civ44","Civ45","Civ46","Civ47","EMS4","EMS5","EMS6","EMS7","EMS8","EMS9","EMS10","EMS11","EMS12","Cop1","Cop2","Cop3","Cop4","Cop5","Cop6","Cop7","Cop8","Cop9","Cop10","Cop11","Cop12","Cop13","Cop14","Cop15","Cop16","Cop17","Cop18","Cop19","Cop20","Cop21","Cop22","Cop23","Cop24"];
_find = if (isServer)then {"server"}else{str player};

MPID = format ["MP%1",(_MParray find _find)];


{
	format ["MP%1",_ForEachIndex] addPublicVariableEventHandler 
	{
	(_this select 1) call network_Run;
	};	
}ForEach _MParray;

"PGRE" addPublicVariableEventHandler {call compile (_this select 1);};	
