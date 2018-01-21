private ["_image"];

_item   = _this select 0; 
_amount = _this select 1;
_image = format ["\sfg_textures\items\%1",[_item]call config_image];


if(!isnull (nearestobjects[getpos player,["EvMoney","Suitcase"], 1] select 0))exitwith{systemChat  "You cannot drop items on top of each other. move and try again."};


if (_amount <= 0) exitwith {};

if (_item call config_dropable) then 

{

if ([player,_item,-_amount] call storage_add) then 

	{
	
	systemChat  localize "STRS_inv_inventar_weggeworfen";	

	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

	sleep 1.5;

	private "_class";
	switch true do
	{
		case (_item == "geld"):{_class = "EvMoney"};
		case (_item == "oil"):{_class = "Barrel4"};
		case (_item == "oilbarrel"):{_class = "Barrel4"};
		default {_class = "Suitcase"};
	};

	_pos = getposASL player;

	_object = _class createvehicle _pos;

	_object setposASL getposASL player;
	_object setvariable ["droparray", [_amount, _item], true];
	_name13 = _item call config_displayname;
	
	_object  setvehicleinit format["
	this addaction ['','scripts\pickup.sqf',[this, '%3', %2],25,false,true,'LeanRight','player distance this < 5 && {!([this,'Pick up %1 (E)','%5']call tag_show)}'];
	", _name13, _amount,_item,MPID,_image];
	processInitCommands;
	
	} 
	else 
	{
	
	systemChat  localize "STRS_inv_inventar_drop_zuwenig";
	
	};

} 
else 
{

systemChat  localize "STRS_inv_inventar_ablege_verbot";

};

