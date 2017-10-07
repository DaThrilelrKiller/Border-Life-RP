class ar_kick
{
	idd = 5463;
	movingEnable = true;
	objects[] = {};
	name= "ar_kick";
	onLoad = "uiNamespace setVariable ['ar_kick', _this select 0]";
	class controls
	{	
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			x = 0;
			y = 0.125;
			w = 1;
			h = 0.8;
			colorText[] = {0,0,0,0.5};
			colorBackground[] = {0,0,0,0.5};
			colorBackgroundActive[] = {0,0,0,0.5};
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			x = 0;
			y = 0.075;
			w = 1;
			h = 0.05;
			colorText[] = {0,0.47,0.77,1};
			colorBackground[] = {0,0.47,0.77,1};
			colorBackgroundActive[] = {0,0.47,0.77,1};
		};
		class RscStructuredText_1102: RscStructuredText
		{
			idc = 1102;
			text = "";
			x = 0.0147058;
			y = 0.148437;
			w = 0.963445;
			h = 0.747321;
			colorText[] = {1,1,1,1};
			size = 0.050;
			colorBackground[] = {1,1,1,0};
			colorBackgroundActive[] = {1,1,1,0};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Continue";
			action = "failMission 'LOSER'";
			x = 0.829175;
			y = 0.938839;
			w = 0.171875;
			h = 0.05;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0.47,0.77,1};
			colorBackgroundActive[] = {0,0.47,0.77,1};
		};
	};
};
