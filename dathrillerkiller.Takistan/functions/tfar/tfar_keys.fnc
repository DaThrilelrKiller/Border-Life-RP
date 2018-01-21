["Transmit Short Range Radio","kd",["CAPS",false,false,false],TFAR_fnc_onSwTangentPressed]call keypress_add;
["Transmit Long Range Radio","kd",["CAPS",false,true,false],TFAR_fnc_onLRTangentPressed]call keypress_add;

["Stop Transmiting Short Range Radio","ku",["CAPS",false,false,false],TFAR_fnc_onSwTangentReleased]call keypress_add;
["Stop Transmiting Long Range Radio","ku",["CAPS",false,false,false],TFAR_fnc_onLRTangentReleased]call keypress_add;


["Short Range Volume +","kd",["None",false,false,false],{}]call keypress_add;
["Short Range Volume -","kd",["None",false,false,false],{}]call keypress_add;
["Long Range Volume +","kd",["None",false,false,false],{}]call keypress_add;
["Long Range Volume -","kd",["None",false,false,false],{}]call keypress_add;

["Speak Volume","kd",["TAB",false,false,false],TFAR_fnc_onSpeakVolumeChange]call keypress_add;

["Sort Range Stero Both","kd",["UP",false,false,false],[[0],TFAR_fnc_processSWStereoKeys]]call keypress_add;
["Sort Range Stero Right","kd",["RIGHT",false,false,false],[[2],TFAR_fnc_processSWStereoKeys]]call keypress_add;
["Sort Range Stero Left","kd",["LEFT",false,false,false],[[1],TFAR_fnc_processSWStereoKeys]]call keypress_add;
["Long Range Stero Both","kd",["UP",false,false,true],[[0],TFAR_fnc_processLRStereoKeys]]call keypress_add;
["Long Range Stero Right","kd",["RIGHT",false,false,true],[[2],TFAR_fnc_processLRStereoKeys]]call keypress_add;
["Long Range Stero Left","kd",["LEFT",false,false,true],[[1],TFAR_fnc_processLRStereoKeys]]call keypress_add;

["Open Long Range Radio","kd",["None",false,false,false],[[player],TFAR_fnc_lrRadioMenu]]call keypress_add;
["Open Short Range Radio","kd",["None",false,false,false],[[player],TFAR_fnc_swRadioMenu]]call keypress_add;