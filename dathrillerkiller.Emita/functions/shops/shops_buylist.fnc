private ["_item","_infos","_preisOhneTax","_preis","_name","_type","_index"];

{
	_item         = _x;
	_infos        = _item call INV_getitemArray;
	_preisOhneTax = _infos call INV_getitemBuyCost;
	_preis        = _infos call INV_getitemSteuer;
	_name         = (_infos call INV_getitemName);
	_type = toLower (_infos call INV_getitemType);
	
	switch(_type)do
	{
		case "item":
		{
			_index = lbAdd [1, format ["%1 ($%2, %3kg)", _name, (_preis), (_infos call INV_getitemTypeKg)] ]; 	
		};
		case "label":
		{
			_index = lbAdd [1, format ["%1", _name] ];
		};
		default 
		{
			_index = lbAdd [1, format ["%1 ($%2)", _name, (_preis)] ];
		};
	};
	
	lbSetData [1, _index, format ["%1", [_item,_infos, _preisOhneTax, _preis]] ];			
	true
}count _this;