
class RL_Dialog_loading
{
	idd = 242334;
	movingEnable = false;
	duration = 99999999999999999;
	fadein = 0;
	fadeout = 0;
	name = "RL_Dialog_loading";
	onLoad = "with uiNameSpace do {RL_Dialog_loading = _this select 0;};";
	controlsBackground[]=
	{
		Mainback
	};
	objects[]={};
	controls[]=
	{
		progressbar,
		infotext0,
		infotext1
	};
	class Mainback : RscPicture
	{
		x=0.1;
		y=0.1;
		w=0.84;
		h=0.84;
		moving = 0;
		text = "";
	};
	class progressbar : RscPicture
	{
		x=0.110104;
		y=0.57571;
		w=0.82;
		h=0.0416666666666667;
		idc=1111;
		moving = 0;
		text = "sfg_textures\progressbar\progressbar0.paa";
	};
	class infotext0: RscText
	{
		idc=1112;
		x=0.110104;
		y=0.61571;
		w=0.82;
		h=0.0416666666666667;
		colorBackground[]={0,0,0,0.8};
		style=ST_CENTER;
		colorText[]={0.8,0.8,0.8,1};
		font=Zeppelin32;
		sizeEx=0.04;
		text="Power On";
	};
	class infotext1:RscText
	{
		idc=1113;
		x=0.880104;
		y=0.57571;
		w=0.269399707174231;
		h=0.0416666666666667;
		colorBackground[]={0,0,0,0};
		text="0%";
	};
};

class Rtags
{
	idd=64431;
	movingEnable = true;
	fadein       =  0;
	fadeout      =  0;
	duration     =  0.1;
	name="TAGS_HUD";
	controls[]={"interact"};
	onLoad="uiNamespace setVariable ['TAGS_HUD', _this select 0]";

	class interact
	{
		type = CT_STRUCTURED_TEXT;
		idc = 64438;
		style = 0;
		x = 0.50;
		y = 0.47;
		w = 0.3;
		h = 0.2;
		font = "Zeppelin33Italic";
		sizeEx = 0.045;
		size = 0.045;
		colorText[] = {1, 1, 1, 1};
		colorBackground[]={0,0,0,0.0};
		text = "";
	};

};


class MyCookie
{
	idd = 864876;
	movingEnable = false;
	duration = 10;
	fadein = 2;
	fadeout = 2;
	name = "MyCookie";
	onLoad = "with uiNameSpace do {MyCookie = _this select 0;};";

	class controls
	{
		
		class RscPicture_1200: RscPicture
		{
			idc = 1100;
			text = "sfg_textures\DaThrillerKiller\mycookie.paa";
			x = 0.0492437;
			y = -0.292929;
			w = 0.906819;
			h = 1.02929;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1200;
			text = "testdafsdasiopfhyasdyudasgifyds;aljfupaysdguhfdsguyfgsuytgfioyhauydgfiudasgfdiosagyduf";
			x = 0.10985;
			y = 0.409093;
			w = 0.641665;
			h = 0.231313;
		};
	};
};

class dtk_logo
{
	idd = -1;
	onLoad = "execVM 'scripts\intro.sqf';";
	fadein = 7;
	fadeout = 0;
	duration = 10e10;
	
	class ControlsBackground
	{
		class logo : RscPicture
		{
			x = safeZoneX + safeZoneW * 0.00125;
			y = safeZoneY + safeZoneH * -0.01777777;
			w = safeZoneW * 0.99875;
			h = safeZoneH * 1.03555556;
			text = "sfg_textures\dathrillerkiller\logo.paa";
		};
	};
};