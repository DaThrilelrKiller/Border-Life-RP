private ["_return"];
_return = profileNamespace getVariable "tag";
_return = if (isNil "_return")then {"Guest"}else{_return};

_return

