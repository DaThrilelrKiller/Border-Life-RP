private ["_return"];

_return = (_this getVariable "dtk_fac_owner");
_return = if (isNil "_return")then {""} else {_return};
_return