private ["_info","_item"];

while {ctrlVisible 1030}do
{
	if (!ctrlVisible 1030) exitWIth{};
	lbClear 2;
	_item     = lbData [1, (lbCurSel 1)];
	_info = _item call factories_getInfo;
	lbAdd [2, format["Available: %1", _info select 0]];
	lbAdd [2, format["Pending: %1", _info select 1]];
	lbAdd [2, format["Time Per Item: %1 seconds", round (_info select 3)]];
	lbAdd [2, format["Total Time: %1 seconds", round (_info select 2)]];
	sleep 0.2;
};

