private ["_item","_amount","_name"];

_item = _this select 1;
_amount = _this select 2;
_name = _item call INV_getitemName;

[player,_item,-1] call storage_add;

if (surfaceIsWater getPos player)then{
	systemchat format ["You have release %1 %2 back into the water",_amount,_name];
}else{
	/* eventauly make it so it drop eidence for police, or Game Warden to find and suspend the players licence */
	systemchat format ["You have release %1 %2 back into the water",_amount,_name];
	systemchat "Keep in mind, releasing live fish on land is animal crulity, if found by game comision you may be arrested";
};