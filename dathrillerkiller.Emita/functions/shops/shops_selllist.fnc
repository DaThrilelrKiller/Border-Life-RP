private ["_item","_infos","_preisOhneTax","_preis","_name","_type","_calssname","_index","_mags","_vehicle","_vclClass","_j","_weps"];

lbClear 101;

{
_item = _x;
_infos  = _item call INV_getitemArray;
_preisOhneTax = (_infos call INV_getitemBuyCost)*0.5;
_preis        = (_infos call INV_getitemSteuer)*0.5;
_name         = (_infos call INV_getitemName);
_type = _infos call INV_getitemType;
_calssname = _infos call INV_getitemClassName;

	switch(_type)do
	{
		case "weapon":
		{
			if (player hasweapon _calssname) then 
			{																																																																
				_index = lbAdd [101, format["%1 ($%2)", _name, _preis] ];						
				lbSetData [101, _index, format ['%1',[_item,_infos,_preisOhneTax, _preis]]];						
			};
		};
		case "magazin":
		{
			if (_calssname in (magazines player)) then 
			{																																						
				_mags      = {_x == _calssname} count magazines player;	
				_index = lbAdd [101, format["%1 ($%2 %3x)", _name, (_preis call string_intToString), (_mags call string_intToString)] ];																	
				lbSetData [101, _index, format ['%1',[_item,_infos,_preisOhneTax, _preis]]];	
			};
		};
		case "Item":
		{
			if ( (([player,_item] call storage_amount) > 0) and (_item call INV_getitemDropable) ) then
			{
				_index = lbAdd [101, format["%1 ($%2, %5kg, %4x)", _name, (_preis call string_intToString),0,([player,_item] call storage_amount),(_infos call INV_getitemTypeKg)] ];																																							
				lbSetData [101, _index, format ['%1',[_item,_infos,_preisOhneTax, _preis]]];		
			};	

		};
		case "vehicle":
		{
				{
					_vehicle = _x;
					_vclClass = (_vehicle getVariable "DTK_OwnerUID" select 1);
					if (!isNil "_vclClass")then 
					{
						if (_vclClass == _item and [player,_vehicle]call keys_has) then 
						{			
							_index = lbAdd [101, format["%1 ($%2, %3)", _vehicle, (_preis call string_intToString), _name] ];															
							lbSetData [101, _index, format ['%1',[_item,_infos,_preisOhneTax, _preis,[_vehicle]]]];	
						};	
					};
				} forEach (allMissionObjects "AllVehicles");
		};
		case "siren":
		{
				{
					_vehicle = _x;
					_weps = (weapons _vehicle);				
					if (_item in _weps and [player,_vehicle]call keys_has) then 
					{			
						_index = lbAdd [101, format["%1 ($%2, %3)", _vehicle, (_preis call string_intToString), _name] ];															
						lbSetData [101, _index, format ['%1',[_item,_infos,_preisOhneTax, _preis,[_vehicle]]]];	
					};	
				} forEach (allMissionObjects "AllVehicles");
		};
		default 
		{
			diag_log format ["[ERROR] ShopModule | Invalid type | %1",_type];
		};
	};

}count _this;

