private ["_pos","_vehicle","_mission"];

_pos = call ems_grabRoad;

_vehicle = _class createVehicle _pos;
_mission = createVehicle ["HeliH", _pos, [], 0, "CAN_COLLIDE"];
_vehicle setVehicleInit "i=[this,10,time,false,false] spawn BIS_Effects_Burn; hideobject this;"; 
processInitCommands;

