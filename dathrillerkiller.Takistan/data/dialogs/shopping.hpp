class shopping
{
	idd = 24;
	movingEnable = false;
	onKeyDown = "[_this,'onKeyDown'] call shops_keyhandler; false";
	onKeyUp = "[_this,'onKeyUp'] call shops_keyhandler; false";
	onLoad = "((_this select 0) displayCtrl 21) progressSetPosition 1";
	
	class ControlsBackground
	{
		class RscBackground_2200 : RscBackground 
		{
			idc = 2200;
			x = safeZoneX+safeZoneW*0.28;
			y = safeZoneY+safeZoneH*0.21111112;
			w = safeZoneW*0.436875;
			h = safeZoneH*0.56111112;
			
		};
		
	};
	class Controls
	{
		class Control1339119205
		{
			type = 8;
			idc = 21;
			x = safeZoneX+safeZoneW*0.440625;
			y = safeZoneY+safeZoneH*0.72444445;
			w = safeZoneW*0.265;
			h = safeZoneH*0.03222223;
			style = 0;
			colorBar[] = {0.6,0,0,0.7294};
			colorFrame[] = {1,1,1,1};
			texture = "sfg_textures\DaThrillerKiller\money.paa";
			
		};
		class Control2125696138
		{
			type = 0;
			idc = 20;
			x = safeZoneX+safeZoneW*0.76875;
			y = safeZoneY+safeZoneH*1.00666667;
			w = safeZoneW*0.4125;
			h = safeZoneH*0.55;
			style = 0+48;
			text = "";
			colorBackground[] = {0.6784,0.5412,0.3176,1};
			colorText[] = {0.3216,0.4588,0.6824,1};
			font = "Zeppelin32";
			sizeEx = sizeEx = (((((safezoneW/safezoneH)min1.2)/1.2)/25)*1);
			
		};
		class select_storage : RscCombo 
		{
			idc = 2100;
			x = safeZoneX + safeZoneW * 0.288125;
			y = safeZoneY + safeZoneH * 0.22777778;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			colorDisabled[] = {0.2,0.2,0.2,1};
			onLBSelChanged = "call shops_refresh";
			colorSelect[]           = {1,1,1,1};
			colorSelectBackground[] = {0,0,0,0.9};
			colorText[]             = {1, 1, 1, 1};
			colorBackground[]       = {0,0,0,0.9};
		};
		class lb_information : RscListBox 
		{
			idc = 303;
			x = safeZoneX+safeZoneW*0.44;
			y = safeZoneY+safeZoneH*0.26444445;
			w = safeZoneW*0.26875;
			h = safeZoneH*0.44666667;
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelectBackground[] = {0.5,0,0,0.5};
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lb_items : RscListBox 
		{
			type = 5;
			idc = 301;
			x = safeZoneX + safeZoneW * 0.288125;
			y = safeZoneY + safeZoneH * 0.32777778;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.43111112;
			style = 0;
			colorBackground[] = {0.8,0.8,0.8,0.3};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			rowHeight = 0.04;
			sizeEx = 0.025;
			soundSelect[] = {"",0.1,1.0};
			colorSelectBackground[] = {0.5,0,0,0.5};
			period = 1.200000;
			onLBSelChanged = "call shops_lbChanged";
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lable_shop : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX+safeZoneW*0.28;
			y = safeZoneY+safeZoneH*0.17666667;
			w = safeZoneW*0.4375;
			h = safeZoneH*0.03444445;
			style = 0;
			text = "";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		class close : RscButton 
		{
			idc = 1602;
			x = safeZoneX+safeZoneW*0.69875;
			y = safeZoneY+safeZoneH*0.17555556;
			w = safeZoneW*0.016875;
			h = safeZoneH*0.03333334;
			text = "X";
			colorBackground[] = {1,1,1,0};
			colorBackgroundActive[] = {1,1,1,0};
			colorBorder[] = {1,1,1,0};
			colorDisabled[] = {0.5,0,0,0};
			colorFocused[] = {1,1,1,0};
			colorShadow[] = {0,0,0,0};
			sizeEx = 0.07;
			action = "";
			
		};
		class lable_info : RscBackground 
		{
			idc = 2201;
			x = safeZoneX+safeZoneW*0.4425;
			y = safeZoneY+safeZoneH*0.72222223;
			w = safeZoneW*0.26875;
			h = safeZoneH*0.03444445;
			style = 0;
			text = "";
			colorBackground[] = {0.5,0,0,0};
			
		};
		class lable_info_copy1 : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX+safeZoneW*0.44;
			y = safeZoneY+safeZoneH*0.23111112;
			w = safeZoneW*0.26875;
			h = safeZoneH*0.03444445;
			style = 0;
			text = "Information";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		class select_storage_copy1 : RscCombo 
		{
			type = 4;
			idc = 2101;
			x = safeZoneX + safeZoneW * 0.288125;
			y = safeZoneY + safeZoneH * 0.27666667;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			style = 0;
			arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
			arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
			colorDisabled[] = {0.2,0.2,0.2,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			sizeEx = 0.025;
			soundCollapse[] = {"",0.15,1.0};
			soundExpand[] = {"",0.15,1.0};
			soundSelect[] = {"",0.15,1.0};
			wholeHeight = 0.3;
			onLBSelChanged = "call shops_refresh";
			colorSelect[]           = {1,1,1,1};
			colorSelectBackground[] = {0,0,0,0.9};
			colorText[]             = {1, 1, 1, 1};
			colorBackground[]       = {0,0,0,0.9};
		};
		
	};
	
};
