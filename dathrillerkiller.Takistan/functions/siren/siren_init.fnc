
["Toggle Siren mode","kd",["3",false,false,false],siren_changemode]call keypress_add;
["Deactivate Siren","ku",["4",false,false,false],{if ((call siren_mode) == "Manual") then {dtk_sirenon = false;};}]call keypress_add;
["Activate Siren","kd",["4",false,false,false],siren_play]call keypress_add;