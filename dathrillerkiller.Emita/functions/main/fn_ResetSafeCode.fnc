private ["_randomCodes","_randomCodeSelected"];

safeCodeSet = 0;
_randomCodeGen		= floor(random 999999999999999);
safeCodeSet = str _randomCodeGen;
publicVariable "safeCodeSet";