private ["_idc","_str","_percent"];
_idc = _this select 0;
_str = _this select 1;
_percent = _this select 2;
((uiNamespace getVariable "RL_Dialog_loading") displayCtrl _idc) ctrlSetText _str;
((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1111) ctrlSetText format["sfg_textures\progressbar\progressbar%1.paa",_percent];
((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1113) ctrlSetText format["%1%2",_percent,"%"];