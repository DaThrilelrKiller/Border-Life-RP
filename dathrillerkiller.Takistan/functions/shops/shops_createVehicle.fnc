private ["_name","_location","_classname","_type2","_Halojump","_towers","_data","_vehicle"];
_name = _this select 0;
_location = _this select 1;
if (isNil "_location")then {
	_roads = ((getPos player) nearroads 25);
	_location = _roads select 0; 
};

_data = [[getPlayerUID (_this select 2)],_name,(_this select 3),name player];
_classname =  _name call config_class;

_type2 = ["Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","OH58g","UH1H_TK_GUE_EP1","MH60S","HH65C","ibr_as350_civ"];
_Halojump = ["Ka60_PMC","AH6J_EP1","Ka52Black","An2_TK_EP1","An2_1_TK_CIV_EP1","UH60M_EP1","MH6J_EP1","UH1H_TK_EP1","UH1H_TK_GUE_EP1","UH60M_MEV_EP1","CH_47F_EP1","C130J_US_EP1","AH6X_EP1","Mi17_CDF","Mi17_Ins","Mi17_Civilian","C130J"];
_towers = ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"];
 
		_vehicle = _classname createVehicle getPos _location;
		_vehicle setVehicleInit format [
		"
			this setVehicleVarName ""vehicle_%2_%1"";
			vehicle_%2_%1 = this; 
			clearWeaponCargo this; 
			clearMagazineCargo this;
			this lock true;
		"
		, round(random 10), round(time)];
	
	_vehicle setPos getPos _location;
	_vehicle setDir getDir _location;
	_vehicle setVariable ["DTK_OwnerUID",_data, true];
	_vehicle setVariable ["dtk_storage",[[],[]], true];
	_vehicle addeventhandler ["HandleDamage",'_this call vehicle_handleDamage' ];

	
	_plate = _this select 4;
	if (isNil "_plate")then{
	[_vehicle] call plates_setplate;
	}else{
	[_vehicle,(_this select 4)] call plates_setplate;
	};
	
if (_name in _type2) then
{
	_vehicle setVehicleInit 
	"
		nul = [this, 1] execVM ""\norrn_dbo_fastrope\scripts\NORRN_fastRope_init.sqf"";
	";
	
}; 
if (_name in _Halojump)then
{
	_vehicle setVehicleInit 'this addAction ["HALO Jump","scripts\jump.sqf",[],1,false,true,"","_this in _target"]'; 
};
   
				
if (_name == "Ka60_PMC") then
{
    _vehicle addweapon "CMFlareLauncher";
    _vehicle addmagazine "60Rnd_CMFlareMagazine";
};

if (_name == "AH6J_EP1") then
{
        _vehicle removeweapon "FFARLauncher_14";
        _vehicle addweapon "CMFlareLauncher";
        _vehicle addmagazine "60Rnd_CMFlareMagazine";
};
 
if (_name == "tcg_wave_red") then
{
        _vehicle addweapon "DSHKM";
        _vehicle addmagazine "150Rnd_127x107_DSHKM";
        _vehicle addmagazine "150Rnd_127x107_DSHKM";
        _vehicle addmagazine "150Rnd_127x107_DSHKM";
        _vehicle addmagazine "150Rnd_127x107_DSHKM";
        _vehicle addmagazine "150Rnd_127x107_DSHKM";
        _vehicle addmagazine "150Rnd_127x107_DSHKM"; 
};
 
if (_name == "Ka52Black") then
{
        _vehicle removeweapon "VikhrLauncher";
        _vehicle removeweapon "80mmLauncher";
        _vehicle removemagazine "12Rnd_Vikhr_KA50";
        _vehicle removemagazine "40Rnd_80mm";
};
if (_name == "UH60M_EP1") then
{
        _vehicle removeMagazines ((magazines _vehicle) select 0);
};

if (_name == "An2_TK_EP1") then
{
        hint "Your plane awaits you on the southwest beach.";
        _vehicle addweapon "PKT";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addmagazine "100Rnd_762x54_PK";
        _vehicle addweapon "2A14";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
        _vehicle addmagazine "40Rnd_23mm_AZP85";
};
 

if (_name == "L39_TK_EP1") then
{
        hint "Reconfiguring plane armament...";
        _vehicle addweapon "CMFlareLauncher";
        _vehicle addmagazine "60Rnd_CMFlareMagazine";
        _vehicle addweapon "Ch29Launcher_Su34";
        _vehicle addmagazine "4Rnd_Ch29";
        _vehicle addmagazine "150Rnd_23mm_GSh23L";
        _vehicle addmagazine "150Rnd_23mm_GSh23L";
        _vehicle addmagazine "150Rnd_23mm_GSh23L";
 
};

if (_name == "suburban_swat") then
{
        _vehicle setVehicleInit 
		'
			this addweaponCargo  ["SWAT",1];
			this addmagazineCargo ["15Rnd_9x19_M9",8];
			this addmagazineCargo ["SmokeShell",4];
			this addmagazineCargo ["RAB_L111A1",4];
			this addweaponCargo ["M32_EP1",1];
			this addmagazineCargo ["6Rnd_Smoke_M203",4];
			this addweaponCargo ["DMR",1];
			this addmagazineCargo ["20Rnd_762x51_DMR",6];
		'; 
};
if (_name == "il_bearcat") then
{
        _vehicle setVehicleInit 'this addweaponCargo  ["SWAT",1];'; 
		_vehicle setVehicleInit 'this addmagazineCargo ["15Rnd_9x19_M9",8];';
		_vehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';
		_vehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';
		_vehicle setVehicleInit 'this addweaponCargo ["M32_EP1",1];';
        _vehicle setVehicleInit 'this addmagazineCargo ["6Rnd_Smoke_M203",4];';
		_vehicle setVehicleInit 'this addweaponCargo ["DMR",1];';
        _vehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",6];';
};
if (_name == "ilf350swat") then
{
		_vehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';
		_vehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';
		_vehicle setVehicleInit 'this addweaponCargo ["DMR",1];';
        _vehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",6];';
		_vehicle setVehicleInit 'this addweaponCargo ["BAF_LRR_scoped_swat",1];';
        _vehicle setVehicleInit 'this addmagazineCargo ["5Rnd_86x70_L115A1",6];';
};
if(_name in _towers)then
{
	_vehicle setVariable ["towing", "", true];
};
if(_name == "semitrailer")then
{
	[_vehicle,_vehicle,{_this allowDamage false},false,false]call network_MPExec;
};

if (iscop) then {
	if !(_classname isKindOf "Air")then 
	{
	{_vehicle removeWeapon _x}forEach weapons _vehicle;
	_vehicle addWeapon "dtk_SVPWail";
	_vehicle addWeapon "dtk_SVPYelp";
	_vehicle addWeapon "dtk_SVPPhaser";
	};
};																			

if (isamedic)then
{
	if !(_classname isKindOf "Air")then 
	{
		{_vehicle removeWeapon _x}forEach weapons _vehicle;
		if (_name in ar_kme_trucks)then {
		_vehicle addWeapon "dtk_kmesiren1";
		_vehicle addWeapon "dtk_kmesiren2";
		_vehicle addWeapon "dtk_kmesiren3";
		}
		else
		{
		_vehicle addWeapon "dtk_HyperWail";
		_vehicle addWeapon "dtk_RumblerYelp";
		_vehicle addWeapon "dtk_SVPPhaser";
		};
	};
};

processInitCommands;
newvehicle = _vehicle;
_vehicle