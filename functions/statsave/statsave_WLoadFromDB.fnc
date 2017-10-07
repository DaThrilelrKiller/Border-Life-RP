private ["_DBSection","_Playerteam","_whitelistUID","_MainArray1","_Client","_WhitelisttempArray","_WhiteListToClienttemp","_c","_Array","_playerside","_Whitelist","_type","_loadArray","_array1","_varName","_varValue"];

_Playerteam = (_this select 1);
_playerside = _this select 1;
_whitelistUID = getPlayerUID(_this select 0);
_Client = (_this select 0);

switch (_Playerteam) do
{
    case "CIV": 
	{
		_MainArray1 =
		[
	        ["Main", "adminlevel4"],
			["Main", "adminlevel3"],
			["Main", "adminlevel2"],
			["Main", "SwagDevs"],
			[_playerside, "PMC_id"],
			[_playerside, "PMCDivisions_id"],
			[_playerside, "PMCCommand_id"],
			[_playerside, "TowingService_id"],
			[_playerside, "STKO1_id"],
			[_playerside, "STKO2_id"],
			[_playerside, "TP_id"],
            [_playerside, "RT_id"],
			[_playerside, "VFD_id"]
		];
    };

    case "PD": 
	{
		_MainArray1 =
		[
			["Main", "adminlevel4"],
			["Main", "adminlevel3"],
			["Main", "adminlevel2"],
			["Main", "SwagDevs"],
			[_playerside, "PO1_id"],
			[_playerside, "PO2_id"],
			[_playerside, "PO3_id"],
			[_playerside, "Cpl_id"],
			[_playerside, "Sgt_id"],
			[_playerside, "Lt_id"],
			[_playerside, "Cpt_id"],
			[_playerside, "Chief_id"],
			[_playerside, "K9_id"],
			[_playerside, "PDAviation_id"],
			[_playerside, "SWAT_id"],
			[_playerside, "CoastGuard_id"],
			[_playerside, "Undercover_id"],
			[_playerside, "DOC_id"],
			[_playerside, "HWP_id"]
		];
	};
    
    case "EMS": 
	{
		_MainArray1 =
		[
			["Main", "adminlevel4"],
			["Main", "adminlevel3"],
			["Main", "adminlevel2"],
			["Main", "SwagDevs"],
			[_playerside, "EMTBasic_id"],
			[_playerside, "EMTAdavnced_id"],
			[_playerside, "FF1_id"],
			[_playerside, "FF2_id"],
			[_playerside, "EMSAirUnit_id"],
			[_playerside, "EMSSupervisor_id"],
			[_playerside, "EMSCommand_id"],
			[_playerside, "EMSChiefs_id"],
			[_playerside, "PSO_id"],
			[_playerside, "PSOSenior_id"],
			[_playerside, "PSOCommand_id"]
		];
	};
};

_WhitelisttempArray = [];
_WhiteListToClienttemp = [];

{
	_Array = _x;
	_DBSection = _Array select 0;
	_Whitelist = _Array select 1;
	_loadArray = ['Whitelist', _DBSection, _Whitelist,[]];
	_WhitelisttempArray set [count _WhitelisttempArray,[_Whitelist,_loadArray call S_statsave_read]];
	true
}count _MainArray1;

{
	_array1 = _x;
	_varName = _array1 select 0;
	_varValue = _array1 select 1;
	if (_whitelistUID in _varValue)then 
	{
		_WhiteListToClienttemp set [count _WhiteListToClienttemp,[_varName,'true']];
	}
	else 
	{
		_WhiteListToClienttemp set [count _WhiteListToClienttemp,[_varName,'false']];
	};
	true
}count _WhitelisttempArray;

[_Client,[_WhiteListToClienttemp,_whitelistUID],"statsave_loadwhitelist",false,false]call network_MPExec;
