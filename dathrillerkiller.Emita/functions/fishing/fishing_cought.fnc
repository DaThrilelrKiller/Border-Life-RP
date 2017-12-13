waitUntil {!v_fishing};
terminate t_fishing;

/* check if the fish got away or if the player caught it */
if (v_fish_onhook != "")then 
{
	[player,v_fish_onhook,1] call storage_add;	
	titletext [format ["You have caught a %1",v_fish_onhook call INV_getitemName], "PLAIN DOWN", 1];
}else{
	titletext ["The fish got away", "PLAIN DOWN", 1];
};
