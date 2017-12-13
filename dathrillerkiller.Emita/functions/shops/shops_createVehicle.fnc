private ["_ScriptClassName","_SpawnLocation","_Classname","_type2","_Halojump","_towers","_vehicleData"];
_ScriptClassName = _this select 0;
_SpawnLocation = _this select 1;
_vehicleData = [[getPlayerUID (_this select 2)],_ScriptClassName,(_this select 3),name player];
_Classname =  _ScriptClassName call INV_getitemClassName;

_type2 = ["Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","OH58g","UH1H_TK_GUE_EP1","MH60S","HH65C","ibr_as350_civ"];
_Halojump = ["Ka60_PMC","AH6J_EP1","Ka52Black","An2_TK_EP1","An2_1_TK_CIV_EP1","UH60M_EP1","MH6J_EP1","UH1H_TK_EP1","UH1H_TK_GUE_EP1","UH60M_MEV_EP1","CH_47F_EP1","C130J_US_EP1","AH6X_EP1","Mi17_CDF","Mi17_Ins","Mi17_Civilian","C130J"];
_towers = ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"];
 
	 call compile format[
	'
		newvehicle = "%1" createVehicle [0,0,0];
		newvehicle setDir getDir %2;
		newvehicle setPos getPos %2;
		newvehicle setVehicleInit 
			"
				this setVehicleVarName ""vehicle_%4_%3"";
				vehicle_%4_%3 = this; 
				clearWeaponCargo this; 
				clearMagazineCargo this;
				this lock true;
			";
			processInitCommands;
			
		newvehicle setVariable ["DTK_OwnerUID",_vehicleData, true];
		newvehicle setVariable ["dtk_storage",[[],[]], true];
	',_Classname, _SpawnLocation, MPID, round(time)];
	
	newvehicle addeventhandler ["HandleDamage",'_this call vehicle_handleDamage' ];

	
	_plate = _this select 4;
	if (isNil "_plate")then{
	[newvehicle] call plates_setplate;
	}else{
	[newvehicle,(_this select 4)] call plates_setplate;
	};
	
if (_ScriptClassName in _type2) then
{
	newvehicle setVehicleInit 
	"
		nul = [this, 1] execVM ""\norrn_dbo_fastrope\scripts\NORRN_fastRope_init.sqf"";
	";
	
}; 
if (_ScriptClassName in _Halojump)then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","scripts\jump.sqf",[],1,false,true,"","_this in _target"]'; 
};
   
				
if (_ScriptClassName == "Ka60_PMC") then
{
    newvehicle addweapon "CMFlareLauncher";
    newvehicle addmagazine "60Rnd_CMFlareMagazine";
};

if (_ScriptClassName == "AH6J_EP1") then
{
        newvehicle removeweapon "FFARLauncher_14";
        newvehicle addweapon "CMFlareLauncher";
        newvehicle addmagazine "60Rnd_CMFlareMagazine";
};
 
if (_ScriptClassName == "tcg_wave_red") then
{
        newvehicle addweapon "DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM";
        newvehicle addmagazine "150Rnd_127x107_DSHKM"; 
};
 
if (_ScriptClassName == "Ka52Black") then
{
        newvehicle removeweapon "VikhrLauncher";
        newvehicle removeweapon "80mmLauncher";
        newvehicle removemagazine "12Rnd_Vikhr_KA50";
        newvehicle removemagazine "40Rnd_80mm";
};
if (_ScriptClassName == "UH60M_EP1") then
{
        newvehicle removeMagazines ((magazines newvehicle) select 0);
};

if (_ScriptClassName == "An2_TK_EP1") then
{
        hint "Your plane awaits you on the southwest beach.";
        newvehicle addweapon "PKT";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addmagazine "100Rnd_762x54_PK";
        newvehicle addweapon "2A14";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
        newvehicle addmagazine "40Rnd_23mm_AZP85";
};
 

if (_ScriptClassName == "L39_TK_EP1") then
{
        hint "Reconfiguring plane armament...";
        newvehicle addweapon "CMFlareLauncher";
        newvehicle addmagazine "60Rnd_CMFlareMagazine";
        newvehicle addweapon "Ch29Launcher_Su34";
        newvehicle addmagazine "4Rnd_Ch29";
        newvehicle addmagazine "150Rnd_23mm_GSh23L";
        newvehicle addmagazine "150Rnd_23mm_GSh23L";
        newvehicle addmagazine "150Rnd_23mm_GSh23L";
 
};

if (_ScriptClassName == "suburban_swat") then
{
        newvehicle setVehicleInit 
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
if (_ScriptClassName == "il_bearcat") then
{
        newvehicle setVehicleInit 'this addweaponCargo  ["SWAT",1];'; 
		newvehicle setVehicleInit 'this addmagazineCargo ["15Rnd_9x19_M9",8];';
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';
		newvehicle setVehicleInit 'this addweaponCargo ["M32_EP1",1];';
        newvehicle setVehicleInit 'this addmagazineCargo ["6Rnd_Smoke_M203",4];';
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",6];';
};
if (_ScriptClassName == "ilf350swat") then
{
		newvehicle setVehicleInit 'this addmagazineCargo ["SmokeShell",4];';
		newvehicle setVehicleInit 'this addmagazineCargo ["RAB_L111A1",4];';
		newvehicle setVehicleInit 'this addweaponCargo ["DMR",1];';
        newvehicle setVehicleInit 'this addmagazineCargo ["20Rnd_762x51_DMR",6];';
		newvehicle setVehicleInit 'this addweaponCargo ["BAF_LRR_scoped_swat",1];';
        newvehicle setVehicleInit 'this addmagazineCargo ["5Rnd_86x70_L115A1",6];';
};
if(_ScriptClassName in _towers)then
{
	newvehicle setVariable ["towing", "", true];
};
if(_ScriptClassName == "semitrailer")then
{
	[newvehicle,newvehicle,{_this allowDamage false},false,false]call network_MPExec;
	/* newvehicle setVehicleInit format ['this setObjectTexture [4, "images\sfg_semitrailer\textures\Body.paa"]']; */
};

if (iscop) then {
	if !(_Classname isKindOf "Air")then 
	{
	{newvehicle removeWeapon _x}forEach weapons newvehicle;
	newvehicle addWeapon "dtk_SVPWail";
	newvehicle addWeapon "dtk_SVPYelp";
	newvehicle addWeapon "dtk_SVPPhaser";
	};
};																			

if (isamedic)then
{
	if !(_Classname isKindOf "Air")then 
	{
		{newvehicle removeWeapon _x}forEach weapons newvehicle;
		if (_ScriptClassName in ar_kme_trucks)then {
		newvehicle addWeapon "dtk_kmesiren1";
		newvehicle addWeapon "dtk_kmesiren2";
		newvehicle addWeapon "dtk_kmesiren3";
		}
		else
		{
		newvehicle addWeapon "dtk_HyperWail";
		newvehicle addWeapon "dtk_RumblerYelp";
		newvehicle addWeapon "dtk_SVPPhaser";
		};
	};
};

processInitCommands;