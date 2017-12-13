private ["_return"];
_return = [_this call config_array,[5,3]]call core_selectNested;
_return = [_return,false]select isNil "_return";
_return