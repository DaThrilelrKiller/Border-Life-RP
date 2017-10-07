

class admin_teleport
{
	idd = 111;
	movingEnable = true;
	objects[] = {};
	class controls
	{	
		class dummybutton : RscDummy {idc = 1;};
		class RscBackground_2200: RscBackground
		{
			idc = 2200;
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2201: RscBackground
		{
			idc = 2201;
			
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		
		class kndr_MapControl 
		{ 
			access = 0; 
			idc = 10023; 
			type = CT_MAP_MAIN; 
			style = ST_PICTURE; 
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.561026 * safezoneH;
			colorBackground[] = {0.80, 0.80, 0.60, 1.00}; 
			colorText[] = {0.00, 0.00, 0.00, 1.00}; 
			colorSea[] = {0.00, 0.35, 0.50, 0.60}; 
			colorForest[] = {0.10, 0.50, 0.10, 0.50}; 
			colorRocks[] = {0.50, 0.50, 0.50, 0.50}; 
			colorCountlines[] = {0.65, 0.45, 0.27, 0.50}; 
			colorMainCountlines[] = {0.65, 0.45, 0.27, 1.00}; 
			colorCountlinesWater[] = {0.00, 0.53, 1.00, 0.50}; 
			colorMainCountlinesWater[] = {0.00, 0.53, 1.00, 1.00}; 
			colorForestBorder[] = {0.40, 0.80, 0.00, 1.00}; 
			colorRocksBorder[] = {0.50, 0.50, 0.50, 1.00}; 
			colorPowerLines[] = {0.00, 0.00, 0.00, 1.00}; 
			colorNames[] = {0.00, 0.00, 0.00, 1.00}; 
			colorInactive[] = {1.00, 1.00, 1.00, 0.50}; 
			colorLevels[] = {0.00, 0.00, 0.00, 1.00}; 
			colorOutside[] = { 1, 1, 1, 1};
			colorRailWay[] = {1, 0, 0.5, 1};
			alphaFadeStartScale = 1;
			alphaFadeEndScale = 2;
			font = "TahomaB"; 
			sizeEx = 0.1; 
			fontLabel = "TahomaB"; 
			sizeExLabel = 0.1; 
			fontGrid = "TahomaB"; 
			sizeExGrid = 0.02; 
			fontUnits = "TahomaB"; 
			sizeExUnits = 0.02; 
			fontNames = "TahomaB"; 
			sizeExNames = 0.02; 
			fontInfo = "TahomaB"; 
			sizeExInfo = 0.02; 
			fontLevel = "TahomaB"; 
			sizeExLevel = 0.02; 
			stickX[] = {0.20, {"Gamma", 1.00, 1.50} }; 
			stickY[] = {0.20, {"Gamma", 1.00, 1.50} }; 
			ptsPerSquareSea = 6; 
			ptsPerSquareTxt = 8; 
			ptsPerSquareCLn = 8; 
			ptsPerSquareExp = 8; 	
			ptsPerSquareCost = 8; 
			ptsPerSquareFor = "4.0f"; 
			ptsPerSquareForEdge = "10.0f"; 
			ptsPerSquareRoad = 2; 
			ptsPerSquareObj = 10; 
			maxSatelliteAlpha = 0.5;
			text = "\ca\ui\data\map_background2_co.paa"; 
			showCountourInterval=2; 
			scaleDefault = 0.1; 
			onMapSingleClick =  "(vehicle player) setpos [_pos select 0, _pos select 1, 0];"; 
			onMouseButtonClick = ""; 
			onMouseButtonDblClick = ""; 

			class ActiveMarker 
			{ 
				color[] = {0.30, 0.10, 0.90, 1.00}; 
				size = 50; 
			}; 
			class Bunker 
			{ 
				icon = "\ca\ui\data\map_bunker_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 14; 
				importance = "1.5 * 14 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 
			class Bush 
			{ 
				icon = "\ca\ui\data\map_bush_ca.paa"; 
				color[] = {0.55, 0.64, 0.43, 1.00}; 
				size = 14; 
				importance = "0.2 * 14 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 
			class BusStop 
			{ 
				icon = "\ca\ui\data\map_busstop_ca.paa"; 
				color[] = {0.00, 0.00, 1.00, 1.00}; 
				size = 10; 
				importance = "1 * 10 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 
			class Command 
			{ 
				icon = "#(argb,8,8,3)color(1,1,1,1)"; 
				color[] = {0.00, 0.00, 0.00, 1.00}; 
				size = 18; 
				importance = 1.00; 
				coefMin = 1.00; 
				coefMax = 1.00; 
			}; 
			class Cross 
			{ 
				icon = "\ca\ui\data\map_cross_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 16; 
				importance = "0.7 * 16 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			};	
			class Chapel 
			{ 
				icon = "\ca\ui\data\map_chapel_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 16; 
				importance = "1 * 16 * 0.05"; 
				coefMin = 0.90; 
				coefMax = 4.00; 
			}; 
			class Church 
			{ 
				icon = "\ca\ui\data\map_church_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 16; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.90; 
				coefMax = 4.00; 
			};
			class CustomMark 
			{
				icon = "\ca\ui\data\map_cross_ca.paa";
				color[] = {0.55, 0.64, 0.43, 1};
				size = 16;
				importance = 0.7 * 16 * 0.05;
				coefMin = 0.25;
				coefMax = 4;
			};
			class Fortress 
			{ 
				icon = "\ca\ui\data\map_bunker_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 16; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 
			class Fuelstation 
			{ 
				icon = "\ca\ui\data\map_fuelstation_ca.paa"; 
				color[] = {1.00, 0.35, 0.35, 1.00}; 
				size = 16; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.75; 
				coefMax = 4.00; 
			}; 
			class Fountain 
			{ 
				icon = "\ca\ui\data\map_fountain_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 12; 
				importance = "1 * 12 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 	
			class Hospital 
			{ 
				icon = "\ca\ui\data\map_hospital_ca.paa"; 
				color[] = {0.78, 0.00, 0.05, 1.00}; 
				size = 16; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.50; 
				coefMax = 4; 
			}; 
			class Lighthouse
			{ 
				icon = "\ca\ui\data\map_lighthouse_ca.paa"; 
				color[] = {0.78, 0.00, 0.05, 1.00}; 
				size = 20; 
				importance = "3 * 16 * 0.05"; 
				coefMin = 0.90; 
				coefMax = 4.00; 
			}; 
			class Quay 
			{ 
				icon = "\ca\ui\data\map_quay_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 16; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.50; 
				coefMax = 4.00; 
			};
			class Rock 
			{
				icon = "\ca\ui\data\map_rock_ca.paa";
				color[] = {0.55, 0.64, 0.43, 1};
				size = 12;
				importance = 0.5 * 12 * 0.05;
				coefMin = 0.25;
				coefMax = 4;
			};
			class Ruin 
			{
				icon = "\ca\ui\data\map_ruin_ca.paa";
				color[] = {0.78, 0, 0.05, 1};
				size = 16;
				importance = 1.2 * 16 * 0.05;
				coefMin = 1;
				coefMax = 4;
			};
			class Stack 
			{ 
				icon = "\ca\ui\data\map_stack_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 20; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.90; 
				coefMax = 4.00; 
			}; 
			class Tree 
			{ 
				icon = "\ca\ui\data\map_tree_ca.paa"; 
				color[] = {0.55, 0.64, 0.43, 1.00}; 
				size = 12; 
				importance = "0.9 * 16 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 
			class SmallTree 
			{ 
				icon = "\ca\ui\data\map_smalltree_ca.paa"; 
				color[] = {0.55, 0.64, 0.43, 1.00}; 
				size = 12; 
				importance = "0.6 * 12 * 0.05"; 
				coefMin = 0.25; 
				coefMax = 4.00; 
			}; 
			class Task 
			{
				icon = "\ca\ui\data\map_cross_ca.paa";
				color[] = {0.55, 0.64, 0.43, 1};
				size = 16;
				importance = 0.7 * 16 * 0.05;
				coefMin = 0.25;
				coefMax = 4;
				iconCreated = "#(argb,8,8,3)color(1,1,1,1)";
				iconCanceled = "#(argb,8,8,3)color(0,0,1,1)";
				iconDone = "#(argb,8,8,3)color(0,0,0,1)";
				iconFailed = "#(argb,8,8,3)color(1,0,0,1)";
				colorCreated[] = {1,1,1,1};
				colorCanceled[] = {1,1,1,1};
				colorDone[] = {1,1,1,1};
				colorFailed[] = {1,1,1,1};
			};	
			class Tourism 
			{ 
				icon = "\ca\ui\data\map_tourism_ca.paa"; 
				color[] = {0.78, 0.00, 0.05, 1.00}; 
				size = 16; importance = "1 * 16 * 0.05"; 
				coefMin = 0.70; 
				coefMax = 4.00; 
			}; 
			class Transmitter
			{ 
				icon = "\ca\ui\data\map_transmitter_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 20; 
				importance = "2 * 16 * 0.05"; 
				coefMin = 0.90; 
				coefMax = 4.00; 
			}; 
			class ViewTower 
			{ 
				icon = "\ca\ui\data\map_viewtower_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 16; 
				importance = "2.5 * 16 * 0.05"; 
				coefMin = 0.50; 
				coefMax = 4.00; 
			}; 
			class Watertower 
			{ 
				icon = "\ca\ui\data\map_watertower_ca.paa"; 
				color[] = {0.00, 0.35, 0.70, 1.00}; 
				size = 32; 
				importance = "1.2 * 16 * 0.05"; 
				coefMin = 0.90; 
				coefMax = 4.00;
			}; 
			class Waypoint 
			{ 
				icon = "\ca\ui\data\map_waypoint_ca.paa"; 
				color[] = {0.00, 0.00, 0.00, 1.00}; 
				size = 24; 
				importance = 1.00; 
				coefMin = 1.00; 
				coefMax = 1.00; 
			}; 
			class WaypointCompleted 
			{ 
				icon = "\ca\ui\data\map_waypoint_completed_ca.paa"; 
				color[] = {0.00, 0.00, 0.00, 1.00}; 
				size = 24; 
				importance = 1.00; 
				coefMin = 1.00; 
				coefMax = 1.00; 
			}; 
		};
		
		class RscBackground_2203: RscBackground
		{
			idc = 2203;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			colorSelectBackground[] = {0.5,0,0,0.5};
			idc = 1500;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.27899 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.476022 * safezoneH;
		};
	};
};


class admin_console
{
	idd = 111;
	movingEnable = true;
	objects[] = {};
	class controls
	{	
		class dummybutton : RscDummy {idc = 2;};
		class RscBackground_2200: RscBackground
		{
			idc = 2200;
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2201: RscBackground
		{
			idc = 2201;
			
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscBackground_2202: RscBackground
		{
			idc = 2202;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2203: RscBackground
		{
			idc = 2203;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.27899 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.476022 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 0.373461 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.42393 * safezoneW;
			h = 0.238011 * safezoneH;
			autocompete = "scripting";
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 0.372021 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.439927 * safezoneW;
			h = 0.204009 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Server"; 
			action = "['SERVER']call admin_console_exec";			
			x = 0.372021 * safezoneW + safezoneX;
			y = 0.72101 * safezoneH + safezoneY;
			w = 0.135977 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "All"; 
			action = "['ALL']call admin_console_exec";			
			x = 0.515997 * safezoneW + safezoneX;
			y = 0.72101 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Client"; 
			action = "[(call compile lbData [2100, lbCurSel 2100]select 1)]call admin_console_exec";
			x = 0.667972 * safezoneW + safezoneX;
			y = 0.72101 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
	};
};

class admin_logs
{
	idd = 111;
	movingEnable = true;
	objects[] = {};
	class controls
	{	
		class dummybutton : RscDummy {idc = 3;};
		class RscBackground_2200: RscBackground
		{
			idc = 2200;
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2201: RscBackground
		{
			idc = 2201;
			
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscBackground_2202: RscBackground
		{
			idc = 2202;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2203: RscBackground
		{
			idc = 2203;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.27899 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.476022 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 0.372021 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.439927 * safezoneW;
			h = 0.476022 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "View Details"; 
			x = 0.603982 * safezoneW + safezoneX;
			y = 0.72101 * safezoneH + safezoneY;
			w = 0.207966 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
	};
};

class admin_licenses
{
	idd = 111;
	movingEnable = true;
	objects[] = {};
	onLoad = "uiNamespace setVariable ['admin_licenses', _this select 0]";

	
	class controls
	{	
		class dummybutton : RscDummy {idc = 4;};
		class RscBackground_2200: RscBackground
		{
			idc = 2200;
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2201: RscBackground
		{
			idc = 2201;
			
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscBackground_2202: RscBackground
		{
			idc = 2202;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2203: RscBackground
		{
			idc = 2203;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.27899 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.476022 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 0.372021 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.18397 * safezoneW;
			h = 0.527024 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1502: RscListbox
		{
			idc = 1502;
			x = 0.611982 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.191968 * safezoneW;
			h = 0.527024 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = ">";
			action = "[]call admin_licenses_add";
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.363994 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "<"; 
			action = "[]call admin_licenses_remove";
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.431997 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
	};
};


class admin_inventory
{
	idd = 111;
	movingEnable = true;
	objects[] = {};
	onLoad = "uiNamespace setVariable ['admin_inventory', _this select 0]";

	
	class controls
	{	
		class dummybutton : RscDummy {idc = 5;};
		class RscBackground_2200: RscBackground
		{
			idc = 2200;
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2201: RscBackground
		{
			idc = 2201;
			
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscBackground_2202: RscBackground
		{
			idc = 2202;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2203: RscBackground
		{
			idc = 2203;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.27899 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.476022 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 0.372021 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.18397 * safezoneW;
			h = 0.527024 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1502: RscListbox
		{
			idc = 1502;
			x = 0.611982 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.191968 * safezoneW;
			h = 0.527024 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = ">";
			action = "[]call admin_inventory_add";
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.363994 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "<"; 
			action = "[]call admin_inventory_remove";
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.431997 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = "1";
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
	};
};

class admin_vehicles
{
	idd = 111;
	movingEnable = true;
	objects[] = {};
	onLoad = "uiNamespace setVariable ['admin_vehicles', _this select 0]";

	class controls
	{
		class dummybutton : RscDummy {idc = 6;};
		class RscBackground_2200: RscBackground
		{
			idc = 2200;
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2201: RscBackground
		{
			idc = 2201;
			text = ""; 
			x = 0.180053 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.167972 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscBackground_2202: RscBackground
		{
			idc = 2202;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.210987 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.561026 * safezoneH;
		};
		class RscBackground_2203: RscBackground
		{
			idc = 2203;
			x = 0.356024 * safezoneW + safezoneX;
			y = 0.176985 * safezoneH + safezoneY;
			w = 0.463923 * safezoneW;
			h = 0.0340016 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.0340016 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.188052 * safezoneW + safezoneX;
			y = 0.27899 * safezoneH + safezoneY;
			w = 0.143976 * safezoneW;
			h = 0.476022 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 0.372021 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.18397 * safezoneW;
			h = 0.527024 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscListbox_1502: RscListbox
		{
			idc = 1502;
			x = 0.611982 * safezoneW + safezoneX;
			y = 0.227987 * safezoneH + safezoneY;
			w = 0.191968 * safezoneW;
			h = 0.527024 * safezoneH;
			colorSelectBackground[] = {0.5,0,0,0.5};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = ">"; 
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.363994 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = ">"; 
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.431997 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "C"; 
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.023996 * safezoneW;
			h = 0.0510023 * safezoneH;
			action = "[]call admin_vehicles_create";
		};
	};
};





