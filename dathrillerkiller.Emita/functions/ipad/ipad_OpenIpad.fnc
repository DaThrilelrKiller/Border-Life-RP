/*Custom ipad background*/
if (PG_CustomIPadBG) then {
ctrlSetText [1200,'\PGIpad.paa'];/*allows player to add their own background*/
}
else
{
	switch (ar_side) do
	{
		case "CIV": 		{ ctrlSetText [1200,'sfg_textures\ipad\DIALOG.PAA']; };
		case "PD": 		{ ctrlSetText [1200,'sfg_textures\ipad\DIALOGPD.PAA']; };
		case "EMS": 		{ ctrlSetText [1200,'sfg_textures\ipad\ESU.PAA']; };
	};
};

call ipad_LoadApps;

/*Populates inventory with items*/
[15009,player,true]call storage_toDialog;

/*populates combo box with players*/
{
	_index = lbAdd [21009, format ["%1 - (%2)", (str _x), (name _x)]];
	lbSetData [21009, _index, format["%1", _x]];
}count playableUnits;

lbSetCurSel [21009, 0];
lbSetCurSel [15009, 0];
buttonSetAction [16009,"[""use"",lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"];
buttonSetAction [16019,"[""drop"",lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"];
buttonSetAction [16029,"[""give"",lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"];