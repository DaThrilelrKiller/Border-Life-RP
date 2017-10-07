class ipad
{
      idd = 563;
	  movingEnable = true;
	  controlsbackground[] = {};
	  name = "ipad";
	  onLoad = "with uiNameSpace do {ipad = _this select 0}; []spawn ipad_OpenIpad;";

	class controls 
	{
		class RscPicture_1200: RscPicture
		{
			moving = 1;
			type = CT_STATIC;
			style = ST_PICTURE;
			idc = 1200;
			x = 0.162422 * safezoneW + safezoneX;
			y = 0.0519829 * safezoneH + safezoneY;
			w = 0.669541 * safezoneW;
			h = 0.799345 * safezoneH;
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1;
			x = 0.368352 * safezoneW + safezoneX;
			y = 0.466142 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 2;
			x = 0.450724 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 3;
			x = 0.533095 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 4;
			x = 0.615467 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1205: RscPicture
		{
			idc = 5;
			x = 0.696369 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1206: RscPicture
		{
			idc = 6;
			x = 0.368352 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1207: RscPicture
		{
			idc = 7;
			x = 0.450724 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1208: RscPicture
		{
			idc = 8;
			x = 0.532361 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1209: RscPicture
		{
			idc = 9;
			x = 0.615468 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class RscPicture_1211: RscPicture
		{
			idc = 10;
			x = 0.69637 * safezoneW + safezoneX;
			y = 0.57163 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		
		class Rscbtn_1201: Swag_RscButton
		{
			idc = 101;
			x = 0.368352 * safezoneW + safezoneX;
			y = 0.466142 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1202: Swag_RscButton
		{
			idc = 102;
			x = 0.450724 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1203: Swag_RscButton
		{
			idc = 103;
			x = 0.533095 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1204: Swag_RscButton
		{
			idc = 104;
			x = 0.615467 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1205: Swag_RscButton
		{
			idc = 105;
			x = 0.696369 * safezoneW + safezoneX;
			y = 0.466138 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1206: Swag_RscButton
		{
			idc = 106;
			x = 0.368352 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1207: Swag_RscButton
		{
			idc = 107;
			x = 0.450724 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1208: Swag_RscButton
		{
			idc = 108;
			x = 0.532361 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1209: Swag_RscButton
		{
			idc = 109;
			x = 0.615468 * safezoneW + safezoneX;
			y = 0.571631 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		class Rscbtn_1211: Swag_RscButton
		{
			idc = 110;
			x = 0.69637 * safezoneW + safezoneX;
			y = 0.57163 * safezoneH + safezoneY;
			w = 0.0510157 * safezoneW;
			h = 0.0687132 * safezoneH;
		};
		
		class RscCombo_2100: RscCombo
		{
			idc = 21009;
			x = 0.219051 * safezoneW + safezoneX;
			y = 0.114498 * safezoneH + safezoneY;
			w = 0.113531 * safezoneW;
			h = 0.0304443 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 15009;
			x = 0.225672 * safezoneW + safezoneX;
			y = 0.294225 * safezoneH + safezoneY;
			w = 0.103968 * safezoneW;
			h = 0.274488 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 10009;
			x = 0.226408 * safezoneW + safezoneX;
			y = 0.606795 * safezoneH + safezoneY;
			w = 0.0833762 * safezoneW;
			h = 0.0335493 * safezoneH;
			text = "1";
		};
		class RscButton_1611: Swag_RscButton
		{
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			idc = 16009;
			x = 0.223465 * safezoneW + safezoneX;
			y = 0.666704 * safezoneH + safezoneY;
			w = 0.0995563 * safezoneW;
			h = 0.0322468 * safezoneH;
		};
		class RscButton_1612: Swag_RscButton
		{
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			idc = 16019;
			x = 0.223464 * safezoneW + safezoneX;
			y = 0.700566 * safezoneH + safezoneY;
			w = 0.0995563 * safezoneW;
			h = 0.0335492 * safezoneH;
		};
		class RscButton_1613: Swag_RscButton
		{
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			idc = 16029;
			x = 0.218316 * safezoneW + safezoneX;
			y = 0.738333 * safezoneH + safezoneY;
			w = 0.100292 * safezoneW;
			h = 0.0335493 * safezoneH;
		};
	};
};