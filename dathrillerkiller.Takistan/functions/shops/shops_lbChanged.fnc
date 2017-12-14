private ["_amount","_text","_date","_item"];

_text = lbText [2100, (lbCurSel 2100)];

_text call {
	_amount = if (v_ctrl)then {1};
	_amount = if (v_alt && {v_ctrl})then {5}else{_amount};

	if (_this == "Shop")exitWith {
		if (isNil "_amount")exitWith {};
		[_amount]call shops_Purchase;
	};
	if (_this == "Inventoy")exitWith {
		_date = call compile(lbData [301, (lbCurSel 301)]);
		_item = _date select 0;
		
		_amount = if (v_alt && {v_ctrl} && {v_shift})then {[player,_item] call storage_amount}else{_amount};
		if (isNil "_amount")exitWith {};
		[_amount]call shops_sell;
	};
};

call shops_info;