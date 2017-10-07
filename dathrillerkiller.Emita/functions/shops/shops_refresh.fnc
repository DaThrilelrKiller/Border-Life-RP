private ["_cursel","_data","_item","_preis","_infos","_type","_slider","_moneyanzeige"];

while {ctrlVisible 1015} do
{
	_cursel = (lbCurSel 1);
	if (_cursel >= 0) then 
	{
		_data = call compile(lbData [1, (lbCurSel 1)]);
		_item = _data select 0;
		_preis = _data select 3;
		_infos = _data select 1;
		_type = _infos call INV_getitemType;
		
		_slider = ctrlText 2;
		if (!(_slider call string_isInteger)) then {_slider = "0";};
		_slider = _slider call string_toInt;
		if (_slider < 0) then {_slider = 0;};
		_moneyanzeige = (_slider*_preis);
		if (_moneyanzeige > 5000000) then {_moneyanzeige = " > 5000000";};
		
		switch(_type)do
		{
			case "item":
			{
				ctrlSetText [3, format ["Buy ($%1, %2kg)", _moneyanzeige, (_slider*(_infos call INV_getitemTypeKg))]];
			};
			default 
			{
				ctrlSetText [3, format ["Buy ($%1)", _moneyanzeige]]; 
			};
		};
	}
	else
	{
		ctrlSetText [3,  "/"];
	};
	
	_cursel1 = (lbCurSel 101);
	if (_cursel1 >= 0) then 
	{
		_data = call compile(lbData [101, (lbCurSel 101)]);
		_item = _data select 0;
		_preis = _data select 3;
		_infos = _data select 1;
		_type = _infos call INV_getitemType;
	
		_slider = ctrlText 102;
		if (!(_slider call string_isInteger)) then {_slider = "0";};
		_slider = _slider call string_toInt; 
		if (_slider < 0) then {_slider = 0;};
		_moneyanzeige = ((_slider*_preis) call string_intToString);
		
		switch(_type)do
		{
			case "item":
			{
				ctrlSetText [103, format ["Sell ($%1, %2kg)", _moneyanzeige, (_slider*(_infos call INV_getitemTypeKg))]];
			};
			default 
			{
				ctrlSetText [103, format ["Sell ($%1)", _moneyanzeige]];
			};
		};
		
	} 
	else 
	{
		ctrlSetText [103,  "/"];
	};
	CtrlSettext [100,  format[localize "STRS_inv_shopdialog_money", [player,"geld"] call storage_amount]];
	sleep 0.1;
};