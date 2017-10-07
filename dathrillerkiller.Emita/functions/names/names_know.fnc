private ["_uid","_variable","_return"];

_uid = getPlayerUid _this;
_variable = profilenamespace getVariable format ['n_%1',_uid];

_return = if (isNil '_variable')then {false}else{true};
_return