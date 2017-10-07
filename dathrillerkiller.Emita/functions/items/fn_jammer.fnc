
private ["_jam"];

_jam = "MAP_radio_b" createVehicle [0,0,0];
_jam attachTo [player,[0,0.2,0]];


if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};
_jam  setvehicleinit "[this]spawn item_jammerHandler;";
sleep 1;
processInitCommands;
detach _jam;