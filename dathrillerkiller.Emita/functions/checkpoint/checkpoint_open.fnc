	if(AM_temp_carrying)exitWith{systemChat  "You seem to be already carrying an item"};
	
	private ["_c","_sexy","_me","_name","_item"];
	for[{_c=0},{_c<count AM_classnames_total},{_c=_c+1}]do{
		_item = AM_classnames_total select _c;
		
		_sexy = _item select 0;
		_me   = _item select 1;
		_name = _sexy call INV_GetItemName;

		if(isNil "_sexy")exitWith {hint "Invalid selection given"};
		lbAdd[1500,format["Buy %1($%2)",_name,_me]];
	};
	/*systemChat  format["Checkpoint builder complete with %1 entries",count(AM_classnames_total)];*/