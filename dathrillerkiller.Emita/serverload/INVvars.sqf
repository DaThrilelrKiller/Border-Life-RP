call compile preprocessFile "configuration\CfgMaster.sqf";
call compile preprocessFile "configuration\CfgShops.sqf";
call compile preprocessFile "ServerLoad\Optimize.sqf";


if (dtk_client) then 
{
[] execVM "CORE\CLIENT\shopfarmfaclicenseactions.sqf";
};