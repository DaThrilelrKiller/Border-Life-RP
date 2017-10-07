private ["_save"];
_save = 
['server',
	[
		["Main", "impound", INVVehiclesImpoundArray] 
	]
];

_save call S_statsave_SaveToDB;