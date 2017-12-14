showCinemaBorder false;

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];   
"dynamicBlur" ppEffectCommit 0;     

dtk_cam = "camera" camcreate [0,0,350];
dtk_cam cameraEffect ["internal", "back"];;
dtk_cam camSetFOV 0.700;
dtk_cam camCommit 0;
waitUntil {camCommitted dtk_cam};
dtk_cam camSetPos [(getMarkerPos "Civ_Spawn_2" select 0),((getMarkerPos "Civ_Spawn_2" select 1)+10),(getMarkerPos "Civ_Spawn_2" select 2)+300];
dtk_cam camSetTarget getMarkerPos "Civ_Spawn_2";
dtk_cam camSetFOV 0.700;
dtk_cam camCommit 15;
"dynamicBlur" ppEffectAdjust [0];  
"dynamicBlur" ppEffectCommit 5;
waitUntil {camCommitted dtk_cam};

dtk_intro = true;