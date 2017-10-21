private ["_return","_data1","_item","_info","_itemcost","_costwithTax","_amount","_cost","_itemtype","_classname","_shoparray","_fahne","_crate","_logic","_license","_license1","_license2","_invspace","_menge"];


if (dtk_shopactive)exitWith {systemChat "Please wait script active";};
dtk_shopactive = true;

_return = false;
_data1 = call compile(lbData [1, (lbCurSel 1)]);
_item = _data1 select 0;
_info = _data1 select 1;
_itemcost = _data1 select 2;                 
_costwithTax = _data1 select 3;
_amount = ctrlText 2;

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
 

if !([_cost,false,_info] call shops_ProcessMoney)exitWith {systemChat "you do not have enought money";dtk_shopactive = false;};
if (!(_license1 call licenses_has) and isciv and _license) exitWith {systemChat  format[localize "STRS_inv_buyitems_nolicense", (_license1 call licenses_name)];dtk_shopactive = false;};

switch(_itemtype)do
{
	case "Item":
	{
		_invspace   = [player]call storage_kg;
		_menge = (floor((INV_Tragfaehigkeit - _invspace) / (_info call INV_getitemTypeKg)));	
		if (_menge <= 0) exitWith {systemChat  localize "STRS_inv_buyitems_maxgewicht"; dtk_shopactive = false;};	

		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};		
		[player,_item,_amount] call storage_add;
		
	
		_return = true;
	};
	case "weapon":
	{
		
		[_className, _amount, _crate] call INV_CreateWeapon;
		_return = true;
	};
	case "magazin":
	{
		[_className, _amount, _crate] call INV_CreateMag;
		_return = true;
	};
	case "vehicle":
	{
		if (not(alive player)) exitWith {};																																																										
		[_item,_logic,player,ar_side]call shops_createVehicle;
		_return = true;
	};
	case "App":
	{
		if (_className in INVAppsInstalled)exitWith {systemChat "you already have this app installed on your device";};
		INVAppsInstalled set [count INVAppsInstalled,_className];
		_return = true;
	};
	case "siren":
	{
		[_className,(vehicle player)]spawn  garage_InstallSiren;
		closeDialog 0;
		_return = true;
	};
	case "upgrade":
	{
		[_className,(vehicle player)]spawn garage_installUpgrade;
		closeDialog 0;
		_return = true;
	};
	case "maintenance":
	{
		[_className,(vehicle player)]spawn garage_serviceVehicle;
		closeDialog 0;
		_return = true;
	};
	default 
	{

	};
};

	if (_return) then
	{
	[_cost,true,_info] call shops_ProcessMoney;
	shop_selllist call Shops_selllist;
	if (!isNull PG_mayor)then {
		[PG_mayor,(_costwithTax -  _itemcost),"goverment_addTax",false,false]call network_MPExec;
	};

	};
	dtk_shopactive = false;
