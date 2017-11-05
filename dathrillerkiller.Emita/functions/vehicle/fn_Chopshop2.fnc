chopavailable = false; 

private["_vcl","_pay"];
_vcl = (nearestobjects [getpos player, ["LandVehicle"], 5] select 0);
_pay = (((typeof _vcl) call INV_getitemBuyCost) * 0.75);
 
if(isnil ("_vcl")) exitwith {systemChat  "Not near any vehicles"; chopavailable = true;};
if(!(player == vehicle player)) exitWith {systemChat  "You must be outside the vehicle!"; chopavailable = true;};
if(player distance _vcl <= 10) then
{
_vcl setFuel 0;
systemChat  "Chopping Vehicle and Disposing of Evidence!";
sleep 5;
systemChat  "Inspecting Car Parts Value! Please Wait";
sleep 10;
systemChat  "Calling Shady People About Dubs! Please Wait";
sleep 10;
systemChat  "Finalizing Price With Bossman! Please Wait";
sleep 10;
systemChat  "Vehicle Has Been Sold!";
deleteVehicle _vcl;
};
 
systemChat  format["Heres your money!$ %1",_pay];
[player,"geld",_pay] call storage_add;
[player,"Chopped A Vehicle",wantedamountforchoping]call cdb_addWarrant;

sleep 5;
chopavailable = true;