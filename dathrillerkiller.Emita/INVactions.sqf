private ["_action","_item","_textamount","_player","_filename","_itemamount"];
_action = _this select 0;
_item   =  call compile (_this select 1);
_item = _item select 0;
_textamount = _this select 2;                 

if (!(_textamount call storage_isNumber))   exitWith {systemChat  localize "STRS_inv_no_valid_number";};
_textamount = parseNumber _textamount;
_itemamount = ([player,_item] call storage_amount);
_textamount = if (_textamount > _itemamount) then {_itemamount}else {_textamount};
_player = _this select 3;
if ((player call isse_isvictim) or (!inv_canuseinventory)) exitWith {systemChat  localize "STRS_inv_cannotUseNow";};
INV_InventarGiveReceiver = _player;

if ((_action == "use") and (INV_CanUseItem)) then 

{
_filename = _item call INV_getitemFilename;
	switch(typeName _filename)do
	{
		case "CODE":
		{
			["use", _item, _textamount, []]call _filename;
		};

		case "STRING":
		{
			["use", _item, _textamount, []] execVM format["functions\items\%1.sqf",_filename];
		};
		default {systemChat  localize "STRS_inv_inventar_cannotuse";};
	};
};





if ((_action == "drop") and (inv_candropitem)) then 

{

_h = [_item, _textamount] execVM "drop.sqf";
waitUntil {ScriptDone _h};
};

if ((_action == "give") and (inv_cangiveitem)) then 

{

["uebergabe", _item, _textamount, _player] execVM "give.sqf";

};