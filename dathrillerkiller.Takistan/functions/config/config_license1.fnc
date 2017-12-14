private ["_return"];
_return = [_this call config_array,[4,1]]call core_selectNested;
_return = [_return,""]select isNil "_return";
_return
