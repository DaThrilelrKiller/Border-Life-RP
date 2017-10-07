private ["_return"];
_return = profileNamespace getVariable "tag";
_return = if (isNil "_return")then {ar_sidename}else{_return};

_return

