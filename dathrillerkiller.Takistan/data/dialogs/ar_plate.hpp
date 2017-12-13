class ar_plate
{
	idd = 8943;
	Access = ReadAndWrite;
	movingEnable = false;
	duration = 10;
	fadein = 0;
	name = "ar_plate";
	fadeout = 0;
	onLoad = "uiNamespace setVariable ['ar_plate', _this select 0]";
	controlsBackground[] = {};
	objects[] = {};

	class controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = -1;
			text = "sfg_textures\plates\_plate.paa";
			x = 0.00630299;
			y = 0.0126484;
			w = 0.231302;
			h = 0.228348;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 1;
			text = "sfg_textures\plates\D.paa";
			x = 0.0147059;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 2;
			text = "sfg_textures\plates\a.paa";
			x = 0.0378151;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 3;
			text = "sfg_textures\plates\K.paa";
			x = 0.059874;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1201: RscPicture
		{
			idc = 4;
			text = "sfg_textures\plates\P.paa";
			x = 0.0840336;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1205: RscPicture
		{
			idc = 5;
			text = "sfg_textures\plates\L.paa";
			x = 0.113445;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1206: RscPicture
		{
			idc = 6;
			text = "sfg_textures\plates\A.paa";
			x = 0.136555;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1207: RscPicture
		{
			idc = 7;
			text = "sfg_textures\plates\E.paa";
			x = 0.157563;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
		class RscPicture_1208: RscPicture
		{
			idc = 8;
			text = "sfg_textures\plates\E.paa";
			x = 0.180672;
			y = 0.0851935;
			w = 0.0317227;
			h = 0.0813989;
		};
	};
};
