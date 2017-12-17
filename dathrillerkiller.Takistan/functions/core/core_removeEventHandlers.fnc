private ["_object","_events"];

_object = _this select 0;
_events = _this select 1;
_events = if (isNil "_events")then {v_events}else{_events};

{_object removeAllEventHandlers _x}forEach _events;