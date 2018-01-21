if (dtk_server)exitWith {};

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call keypress_down"];
(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call keypress_up"];
createDialog "USBW_Interation";

["New Interation Menu","kd",["F4",false,false,false],{if (dialog)exitWith {closeDialog 0}; createDialog "USBW_Interation";}]call keypress_add;
