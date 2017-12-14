private ["_return"];
_return = [_this call config_array,[5,1]]call core_selectNested;
_return = [_return,true]select isNil "_return";
_return