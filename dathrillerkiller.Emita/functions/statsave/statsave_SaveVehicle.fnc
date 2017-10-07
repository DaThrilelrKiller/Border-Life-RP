	private ["_vcl","_vclClass","_trunk","_speedupgrade","_save","_plate","_warrants","_license","_notes"];
	_vcl = cursorTarget;
	if !([player,_vcl]call vehicle_hasKeys)exitWith {systemChat "Make sure you are looking at the vehicle you are trying to save"};
	_vclClass = (_vcl getVariable "DTK_OwnerUID" select 1);
	_trunk = _vcl getVariable "dtk_storage";
	_speedupgrade = _vcl getvariable ["tuning",0];
	_weaps = getWeaponCargo _vcl;
	_mags = getMagazineCargo _vcl;
	_plate = _vcl getVariable  "dtk_plate";
	_warrants = _vcl getVariable ["cdb_warrants",[]];
	_license = _vcl getVariable ["cdb_license",[]];
	_notes = _vcl getVariable ["cdb_notes",[]];
	
	INVVehiclesLand set [count INVVehiclesLand, [_vclClass,_trunk,_speedupgrade,_weaps,_mags,_plate,_warrants,_license,_notes]];
	deleteVehicle _vcl;

	_save = [player,
	[	
		[ar_side, "VehiclesLand", INVVehiclesLand]
	]
	];
	["SERVER",_save,"S_statsave_SaveToDB",false,false]call network_MPExec;
	systemChat "vehicle Saved";