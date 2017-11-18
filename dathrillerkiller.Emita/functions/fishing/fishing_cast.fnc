private ["_area"];
if !(surfaceIsWater getPos player)exitWith{
	systemchat "You need to be in water to fish, silly";
};

v_fish_onhook = "";
v_fishing = true;

titletext ["Casting...", "PLAIN DOWN", 1];
["ALL",[player,"AwopPercMstpSgthWnonDnon_end"],"network_SwitchMove",false,true]call network_MPExec;

_area = call fishing_area;
t_fishing = (_area spawn fishing_handler);