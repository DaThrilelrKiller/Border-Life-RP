private ["_return"];
_return = [_this call config_array,[2,1]]call core_selectNested;
_return = [_return,_this]select isNil "_return";
_return