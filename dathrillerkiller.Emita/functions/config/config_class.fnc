private ["_return"];
_return = [_this call config_array,[2,0]]call core_selectNested;
_return = [_return,""]select isNil "_return";
_return