INV_heal = 

{

if(_this == player)then

	{

	["ALL",[_this,"AinvPknlMstpSlayWrflDnon_medic"],"network_SwitchMove",false,true]call network_MPExec;
	systemChat  format[localize "STRS_inv_items_medikit_benutzung"];	
	sleep 5;
	player setdamage 0; 
	systemChat  format[localize "STRS_inv_items_medikit_fertig"];

	true;

	}else{

	["ALL",[_this,"AinvPknlMstpSlayWrflDnon_medic"],"network_SwitchMove",false,true]call network_MPExec;
	systemChat  "Healing civ...";
	sleep 5;
	_this setdamage 0;
	
	true;

	};

};			

INV_info = {

switch(_this select 1)do
	{
		case "gamename":
		{
			([((_this select 0) call INV_getitemArray),[0]]call core_selectNested)	
		};
		case "type":
		{
			([((_this select 0) call INV_getitemArray),[1,0]]call core_selectNested)	
		};
		case "kind":
		{
			([((_this select 0) call INV_getitemArray),[1,1]]call core_selectNested)	
		};
		case "classname":
		{
			([((_this select 0) call INV_getitemArray),[2,0]]call core_selectNested)	
		};
		case "name":
		{
			([((_this select 0) call INV_getitemArray),[2,1]]call core_selectNested)	
		};
		case "buyprice":
		{
			([((_this select 0) call INV_getitemArray),[3,0]]call core_selectNested)	
		};
		case "sellprice":
		{
			([((_this select 0) call INV_getitemArray),[3,1]]call core_selectNested)	
		};
		case "kg":
		{
			([((_this select 0) call INV_getitemArray),[4,0]]call core_selectNested)	
		};
		case "space":
		{
			([((_this select 0) call INV_getitemArray),[4,3]]call core_selectNested)	
		};
		case "lic1":
		{
			([((_this select 0) call INV_getitemArray),[4,1]]call core_selectNested)	
		};
		case "lic2":
		{
			([((_this select 0) call INV_getitemArray),[4,2]]call core_selectNested)	
		};
		case "giveable":
		{
			([((_this select 0) call INV_getitemArray),[5,0]]call core_selectNested)	
		};
		case "dropable":
		{
			([((_this select 0) call INV_getitemArray),[5,1]]call core_selectNested)	
		};
		case "Looseable":
		{
			([((_this select 0) call INV_getitemArray),[5,2]]call core_selectNested)	
		};
		case "Illegal":
		{
			([((_this select 0) call INV_getitemArray),[5,3]]call core_selectNested)	
		};
		case "script":
		{
			([((_this select 0) call INV_getitemArray),[5,4]]call core_selectNested)	
		};
	};
};

INV_getitemScriptName = { ((_this call INV_getitemArray) select 0);};
INV_getitemType = {((_this call INV_getitemArray) select 1) select 0;};
INV_getitemKindOf = { ((_this call INV_getitemArray) select 1) select 1;};
INV_getitemClassName = { ((_this call INV_getitemArray) select 2) select 0;};
INV_getitemName = {((_this call INV_getitemArray) select 2) select 1;};
INV_getitemBuyCost = {((_this call INV_getitemArray) select 3) select 0;};
INV_getitemSellCost = { ((_this call INV_getitemArray) select 3) select 1;};
INV_getitemTypeKg = { ((_this call INV_getitemArray) select 4) select 0;};
INV_getvehmaxkg = { ((_this call INV_getitemArray) select 4) select 3;};
INV_getitemLicense = { ((_this call INV_getitemArray) select 4) select 1;};
INV_getitemLicense2 = { ((_this call INV_getitemArray) select 4) select 2;};
INV_getitemOtherStuff = { ((_this call INV_getitemArray) select 5);};
INV_getitemCostWithTax  = { ((_this call INV_getitemArray) call INV_getitemSteuer);};
INV_getitemGiveable = { ((_this call INV_getitemArray) select 5) select 0;};
INV_getitemDropable = { ((_this call INV_getitemArray) select 5) select 1;};
INV_getitemLooseable = { ((_this call INV_getitemArray) select 5) select 2;};
INV_getitemIsIllegal = { ((_this call INV_getitemArray) select 5) select 3;};
INV_getitemFilename = { ((_this call INV_getitemArray) select 5) select 4;};
