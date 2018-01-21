[]spawn core_loop;

if (dtk_client)then {
	[300,core_paycheck]call core_AddLoop;
	[player]call core_removeEventHandlers;
	["Surrender","ku",["3",false,false,false],core_surender]call keypress_add;
	["Refresh Actions","ku",["F5",false,false,false],core_refreshActions]call keypress_add;
	["Stun Player","kd",["F",true,false,false],core_hit]call keypress_add;
};

{
	if (isNil _x)then {
		call compile format ["%1 = objNull",_x];
	};
}foreach call core_units;
