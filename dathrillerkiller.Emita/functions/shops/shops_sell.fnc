private ["_return","_data","_item","_info","_itemcost","_costwithTax","_amount","_cost","_itemtype","_classname","_shoparray","_fahne","_crate","_logic","_license","_license1","_license2","_invspace","_menge"];


if (dtk_shopactive)exitWith {systemChat "Please wait script active";};
if ((lbCurSel 101) < 0)exitWith {systemChat "select and item to sell";};
dtk_shopactive = true;

_return = false;
_data = call compile(lbData [101, (lbCurSel 101)]);
_item = _data select 0;
_info = _data select 1;
_itemcost = _data select 2;                         
_costwithTax = _data select 3;
_amount = ctrlText 102;

 _itemtype    = _info call INV_getitemType;                
 _classname  = _info call INV_getitemClassName;
 _shoparray  = (INV_ItemShops select dtk_activeShopNumber);
 _fahne      = (_shoparray select 0);  
 _crate      = (_shoparray select 2);  
 _logic      = (_shoparray select 3);
 _license    = (_shoparray select 6);
 _license1   = _info call INV_getitemLicense;
 _license2   = _info call INV_getitemLicense2;

if (!(_amount call string_isInteger)) exitWith {systemChat  localize "STRS_inv_no_valid_number";};
_amount = _amount call string_toInt;  
if (_amount <= 0) exitWith {};
_cost = _amount*_costwithTax; 
 _cost =  round (_cost);

switch(_itemtype)do
{
	case "Item":
	{
		if ([player,_item] call storage_amount == 0) exitWith {systemChat  localize "STRS_inv_buyitems_sell_notenough";};								
		if ([player,_item] call storage_amount < _amount) then {_amount = ([player,_item] call storage_amount);};
				
		if (_info call INV_getitemIsIllegal and _info call INV_getitemKindOf == "drug") then
		{
			_list = _fahne getvariable "druglist";
			if(isnil "_list")then{_list = [[player, _amount, _cost/_amount]]}else{_list = _list + [[player, _amount, _cost/_amount]]};
			_fahne setvariable["druglist", _list, true];
		};

		/*QUEST*/
		if ((QuestTime > 0) and (_item in QuestItems))then 
		{
			_costIncreat = (_cost * 0.4);
			_cost = _cost + _costIncreat;
			systemChat format ['You have made %1$ by doing this job threw a quest',_costIncreat];
		};
		
		[player,"geld",_cost] call storage_add;
		[player,_item,-_amount] call storage_add;
		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};																																														
		systemChat  format [localize "STRS_inv_shop_sold", (_amount call string_intToString), (_info call INV_getitemName), (_cost call string_intToString)];			
	};
	case "weapon":
	{
		_weaps      = {_x == (_info call INV_getitemClassName)} count weapons player;																														
		if (_weaps == 0) exitWith {systemChat  localize "STRS_inv_buyitems_sell_notenough";};	
		if (_weaps < _amount) then {_amount = _weaps;};																												
		[player,"geld",_cost] call storage_add;
		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};																																														

		for [{_i=0}, {_i < _amount}, {_i=_i+1}] do 

			{
																						
			player removeWeapon (_info call INV_getitemClassName);	

			};
		
		systemChat  format [localize "STRS_inv_buyitems_verkauft", 1, (_info call INV_getitemName), (_cost call string_intToString)];												
	};
	case "magazin":
	{																															
		_mags      = {_x == (_info call INV_getitemClassName)} count magazines player;																														
		if (_mags == 0) exitWith {systemChat  localize "STRS_inv_buyitems_sell_notenough"; _exitvar = 1};						
		if (_mags < _amount) then {_amount = _mags;};																																																											
		[player,"geld",_cost] call storage_add;
		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};																																														
		
		for [{_i=0}, {_i < _amount}, {_i=_i+1}] do 

			{																											

			player removeMagazine (_info call INV_getitemClassName);																														

			};
		
		systemChat  format [localize "STRS_inv_buyitems_verkauft", (_amount call string_intToString), (_info call INV_getitemName), (_cost call string_intToString)];
		_exitvar = 1;
	};
	case "vehicle":
	{
		_vehicle = _data select 4 select 0;
		_amount = 1;																																																																																
		if (_posInVclArray == -1) exitWith {systemChat  localize "STRS_inv_buyvehicles_noowner"; _exitvar = 1};																								
		if (not (alive _vehicle))            exitWith {systemChat  localize "STRS_inv_buyvehicles_destroyed"; _exitvar = 1};										
		if ((_vehicle distance player) > 25) exitWith {systemChat  localize "STRS_inv_buyitems_sell_toofar"; _exitvar = 1};																												
		[player,"geld",_cost] call storage_add;		
		systemChat  format [localize "STRS_inv_shop_vehiclesold", (_cost call string_intToString)];																																
		deleteVehicle _vehicle;
	};
	case "App":
	{
		
	};
	case "siren":
	{
		if ((vehicle player) == player)exitWith {};
		(vehicle player) removeWeapon _item;
		[player,"geld",_cost] call storage_add;
	};
	default 
	{
	};
};

shop_selllist call Shops_selllist;

dtk_shopactive = false;

