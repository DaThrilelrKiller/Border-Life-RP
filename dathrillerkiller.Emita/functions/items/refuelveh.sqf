private ["_art","_vcl","_item","_anzahl"];
_art = _this select 0;
if (_art == "use") then 
{
_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);
_item = _this select 1;
_anzahl = _this select 2;
if (isnil ("_vcl")) exitwith {systemChat  "Not near any vehicles"};
if (!(player == vehicle player)) exitWith {systemChat  "You must be outside the vehicle"};
if (player distance _vcl <= 6) then 
{
systemChat  "REFUELING";
sleep 15;
[player,_item,-1] call storage_add;
_vcl setFuel 1;
systemChat  "REFUELED";
};



};
/*
    if (player == vehicle player)  exitWith {
systemChat  localize "STRS_inv_items_repair_refuel_notincar";
};

   if (!(player == driver vehicle player)) exitWith {
systemChat  localize "STRS_inv_items_repair_refuel_notdriver";
};

    if ((fuel vehicle player) == 1)  exitWith {
systemChat  localize "STRS_inv_items_refuel_notneeded";
};

systemChat  "Refueling Vehicle!";
sleep 15;
vehicle player setFuel 1;
    systemChat  localize "STRS_inv_items_refuel_refueled";
[player,_item,-1] call storage_add;
};
*/

