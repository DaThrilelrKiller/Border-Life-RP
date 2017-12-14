private ["_return"];
_return = [_this call config_array,[1,1]]call core_selectNested;
_return = [_return,"n/a"]select isNil "_return";
_return