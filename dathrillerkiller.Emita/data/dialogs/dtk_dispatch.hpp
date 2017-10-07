
class dtk_dispatch
{
	idd = 789;
	movingEnable = false;
	objects[] = {};
	class controls
	{	
		class RscBackground_2202: RscBackground
		{
			idc = 2202;

			x = 0.179872 * safezoneW + safezoneX;
			y = 0.211085 * safezoneH + safezoneY;
			w = 0.640042 * safezoneW;
			h = 0.56096 * safezoneH;
		};
		class RscBackground_2203: RscBackground
		{
			idc = 2203;

			text = "Emita Dispatch System"; 
			x = 0.179872 * safezoneW + safezoneX;
			y = 0.177023 * safezoneH + safezoneY;
			w = 0.640042 * safezoneW;
			h = 0.0339976 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			colorSelectBackground[] = {0.5,0,0,0.5};

			text = "This is where the map will be"; 
			x = 0.612007 * safezoneW + safezoneX;
			y = 0.262017 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.322977 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1602;

			text = "Switch To Player Radio Channel"; 
			x = 0.612007 * safezoneW + safezoneX;
			y = 0.618991 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;

			text = "Assign Task"; 
			x = 0.612007 * safezoneW + safezoneX;
			y = 0.669988 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
		};
		class RscButton_1603: RscButton
		{
			idc = 1602;

			text = "Delete Task"; 
			x = 0.612007 * safezoneW + safezoneX;
			y = 0.720984 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1501;
			colorSelectBackground[] = {0.5,0,0,0.5};

			x = 0.403994 * safezoneW + safezoneX;
			y = 0.533998 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.220984 * safezoneH;
		};
		class RscListbox_1502: dtkMap
		{
			idc = 1501;
			colorSelectBackground[] = {0.5,0,0,0.5};

			x = 0.19598 * safezoneW + safezoneX;
			y = 0.262017 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.220984 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 2203;

			text = "Active Scenes"; 
			x = 0.19598 * safezoneW + safezoneX;
			y = 0.22802 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscText_1001: RscText
		{
			idc = 2203;

			text = "Units On Scene"; 
			x = 0.403994 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscText_1005: RscText
		{
			idc = 2203;
			text = "Map"; 
			x = 0.612007 * safezoneW + safezoneX;
			y = 0.22802 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			x = 0.76733;
			y = 0.455364;
			w = 0.1;
			h = 0.1;
		};
		class RscText_1006: RscText
		{
			idc = 2203;

			text = "Scene Information"; 
			x = 0.403994 * safezoneW + safezoneX;
			y = 0.22802 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.0339976 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class fukcingmapyouaddhole: RscListbox
		{
			idc = 1501;
			x = 0.403994 * safezoneW + safezoneX;
			y = 0.262017 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.220984 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = 1603;
			text = "Scene Priority"; 
			x = 0.187979 * safezoneW + safezoneX;
			y = 0.720984 * safezoneH + safezoneY;
			w = 0.208014 * safezoneW;
			h = 0.0339976 * safezoneH;
		};
		class RscButton_1605: RscButton
		{
			idc = 1604;
			text = "Message Responding Units"; 
			x = 0.187979 * safezoneW + safezoneX;
			y = 0.669988 * safezoneH + safezoneY;
			w = 0.208014 * safezoneW;
			h = 0.0339976 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			style = ST_LEFT+ST_MULTI;
			idc = 1400;
			x = 0.19598 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.200013 * safezoneW;
			h = 0.152989 * safezoneH;
		};
	};

};