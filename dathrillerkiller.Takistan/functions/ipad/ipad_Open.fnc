_bg = call ipad_background;
ctrlSetText [156,_bg];
ctrlSetText [1200,"\sfg_textures\ipad\DIALOG.PAA"];


call ipad_LoadApps;

[15009,player,true]call storage_toDialog;

{
	_index = lbAdd [21009, format ["%1 - (%2)", (str _x), (name _x)]];
	lbSetData [21009, _index, format["%1", _x]];
}count playableUnits;

lbSetCurSel [21009, 0];
lbSetCurSel [15009, 0];
buttonSetAction [16009,"[""use"",lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""scripts\INVactions.sqf""; closedialog 0;"];
buttonSetAction [16019,"[""drop"",lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""scripts\INVactions.sqf""; closedialog 0;"];
buttonSetAction [16029,"[""give"",lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""scripts\INVactions.sqf""; closedialog 0;"];