private ["_c", "_Itemart", "_Arrayname", "_Array"];
	_Arrayname = _this select 0;
	_Itemart   = _this select 1;
	if (isNil(_Arrayname)) then {_Arrayname call INV_StorageLeeren;};
	_Array = call compile (_Arrayname);
	for [{_c=0}, {_c < (count _Array)}, {_c=_c+1}] do {
		if ( (((_Array select _c) select 0) call INV_getitemKindOf)  == _Itemart ) then {
			call compile format ["(%1 select %2) SET [1, 0];", _Arrayname, _c];
		};
	};
	true;