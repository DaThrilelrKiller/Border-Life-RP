if !(surfaceIsWater getPos player)exitWith{
systemchat "You need to be in water to fish, silly";
};

if (count _this > 0)then {
	if (v_fishing_pole)then {
		player removeAction a_fishing1;
		player removeAction a_fishing2;
		systemchat "You have put your fishing pole away";
		v_fishing_pole = false;
	}else{
		a_fishing1 = player addaction [format ["Reel in",""],"noscript.sqf", 'v_fishing = false', 1, false, true, "","v_fishing"];
		a_fishing2 = player addaction [format ["Cast fishing pole",""],"noscript.sqf", '[]call fishing_cast', 1, false, true, "","!v_fishing && {[player,'fishingpole'] call storage_amount != 0}"];
		v_fishing_pole = true;
	};
};