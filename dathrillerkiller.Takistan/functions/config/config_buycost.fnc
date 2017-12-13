private ["_return"];
_return = [_this call config_array,[3,0]]call core_selectNested;
_return = [_return,0]select isNil "_return";
_return