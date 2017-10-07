private ["_mode"];

_mode = call siren_mode;
if (_mode == "Automatic")then {
(vehicle player) setVariable ["ar_siren_mode","Manual",true];
}else{
(vehicle player) setVariable ["ar_siren_mode","Automatic",true];
};


