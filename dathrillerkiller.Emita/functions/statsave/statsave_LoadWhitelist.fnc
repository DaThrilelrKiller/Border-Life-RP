private ["_MainArray","_uid","_varName","_varValue"];

adminlevel4 = false;
adminlevel3 = false;
adminlevel2 = false;
SwagDevs = false;
TowingService_id = false;
RT_id = false;
TP_id = false;
PO1_id = false;
PO2_id = false;
PO3_id = false;
Cpl_id = false;
Sgt_id = false;
Lt_id = false;
Cpt_id = false;
Chief_id = false;
K9_id = false;
PDAviation_id = false;
SWAT_id = false;
CoastGuard_id = false;
Undercover_id = false;
DOC_id = false;
HWP_id = false;
EMTBasic_id = false;
EMTAdavnced_id = false;
FF1_id = false;
FF2_id = false;
EMSAirUnit_id = false;
EMSSupervisor_id = false;
EMSCommand_id = false;
EMSChiefs_id = false;
PSO_id = false;
PSOSenior_id = false;
PSOCommand_id = false;
PMC_id = false;
PMCDivisions_id = false;
PMCCommand_id = false;

_MainArray = _this select 0;
_uid = _this select 1;
if((getPlayerUID player) != _uid) exitWith {};
{
	
	_varName = _x select 0;
	_varValue = _x select 1;
	call compile format ['
	%1 = %2;
	',_varName,_varValue];
	true
}count _MainArray;

AR_Whitelistloaded = true;

if (getPlayerUID player in ["76561198138815968"])then {
SwagDevs = true;
};