class AR_PlayCust
{
	idd = 1601;
	movingEnable = true;
	objects[] = {};
	onLoad = "[]spawn Main_PlayerSettings; []spawn DTK_PlayerSettingsMenu;";
	class controls
	{	

		class RscPicture_1200: RscPicture
		{
			idc = 5000;

			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.294575 * safezoneW + safezoneX;
			y = 0.22698 * safezoneH + safezoneY;
			w = 0.410598 * safezoneW;
			h = 0.54584 * safezoneH;
		};
		class RscPicture_1201: RscPicture
		{
			idc = 5001;

			text = "#(argb,8,8,3)color(0.5098,0.0000,0.0000,1.0000)";
			x = 0.294575 * safezoneW + safezoneX;
			y = 0.22478 * safezoneH + safezoneY;
			w = 0.411817 * safezoneW;
			h = 0.0419978 * safezoneH;
		};
		class Save_btn: RscButton
		{
			idc = 5002;
			action = "";

			text = "Save Stats"; 
			x = 0.508559 * safezoneW + safezoneX;
			y = 0.69184 * safezoneH + safezoneY;
			w = 0.185089 * safezoneW;
			h = 0.0560835 * safezoneH;
			colorBackground[] = {0.5098,0,0,1};
		};
		class Face_Picture: RscPicture
		{
			idc = 5003;

			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.51155 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.182297 * safezoneW;
			h = 0.314723 * safezoneH;
		};
		class RscListbox_1500: RscListBox
		{
			idc = 5004;

			x = 0.304062 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.385 * safezoneH;
		};
		class RscCombo_2100_Month: RscCombo
		{
			idc = 5005;

			x = 0.304062 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0670311 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {0,0,0,1};
			colorActive[] = {0, 0, 0, 1};
			colorText[]       = {0, 0, 0, 1};
		};
		class RscCombo_2101_Day: RscCombo
		{
			idc = 5006;

			x = 0.37625 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {0,0,0,1};
			colorActive[] = {0, 0, 0, 1};
			colorText[]       = {0, 0, 0, 1};
		};
		class RscCombo_2102_Year: RscCombo
		{
			idc = 5007;

			x = 0.422656 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
			color[] = {0,0,0,1};
			colorActive[] = {0, 0, 0, 1};
			colorText[]       = {0, 0, 0, 1};
		};

	};
};

