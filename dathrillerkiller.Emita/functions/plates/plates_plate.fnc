private ["_vehicle","_plate","_ui"];

ar_plates = !ar_plates;

while {ar_plates} do 
{

waitUntil {!isNull cursorTarget || {!ar_plates}};
if !(ar_plates)exitWith {};
_vehicle = CursorTarget;

if ([player,_vehicle,1]call bis_fnc_isInFrontOf && {!([_vehicle,player,1]call bis_fnc_isInFrontOf)})then 
	{

	_plate = _vehicle getVariable "dtk_plate";

		if (!isNil '_plate')then 
		{

			private ["_ui","_Main"];
			disableSerialization;

			589 cutRsc ["ar_plate","PLAIN"];
				
			_ui = uiNameSpace getVariable "ar_plate";
			(_ui displayCtrl 1) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 0)];
			(_ui displayCtrl 2) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 1)];
			(_ui displayCtrl 3) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 2)];
			(_ui displayCtrl 4) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 3)];
			(_ui displayCtrl 5) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 4)];
			(_ui displayCtrl 6) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 5)];
			(_ui displayCtrl 7) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 6)];
			(_ui displayCtrl 8) ctrlSetText format ['sfg_textures\plates\%1.paa',(_plate select 7)];
		};
	};
sleep 1;

};