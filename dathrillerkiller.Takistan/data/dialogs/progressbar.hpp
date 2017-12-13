class progressbar
{
	idd = 551;
	movingEnable = false;
	duration = 99999999999999999;
	fadein = 0;
	name = "progressbar";
	fadeout = 0;
	onLoad = "((_this select 0) displayCtrl 12) progressSetPosition 0.5";
	
	class ControlsBackground{};
	class Controls
	{
		class ctrl_1
		{
			type = 8;
			idc = 12;
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.71333334;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.05555556;
			style = 0;
			colorBar[] = {0.6,0,0,1};
			colorFrame[] = {0,0,0,1};
			texture = "#(argb,8,8,3)color(1,1,1,0.5)";
			
		};
		class ctrl_2
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29375;
			y = safeZoneY + safeZoneH * 0.71;
			w = safeZoneW * 0.4125;
			h = safeZoneH * 0.06111112;
			style = 2;
			text = "Text";
			colorBackground[] = {1,1,1,0};
			colorText[] = {0,0,0,1};
			font = "Zeppelin32";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
		
	};
	
};
