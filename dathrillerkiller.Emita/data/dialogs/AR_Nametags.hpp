
class AR_Nametags
{
	idd = -1;
	Access = ReadAndWrite;
	movingEnable = false;
	fadein = 0.5;
	duration = 1e+1000;
	fadeout = 0;
	name = "AR_Nametags";
	onLoad = "_this spawn names_init;";
	controlsBackground[] = {};
	objects[] = {};

	class controls
	{
		class NT_BASIC
		{
			idc = 100;
			type = 13;
			style = 16 + 0x200;
			x = -1;
			y = -1;
			w = 0.4;
			h = 0.1;
			sizeEx = 0.025;
			size = 0.025;
			font = "Zeppelin32";
			linespacing = 1;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			shadow = true;
			text = "";
		};

		class NT1 : NT_BASIC
		{
				idc = 100;
		};

		class NT2 : NT_BASIC
		{
				idc = 101;
		};

		class NT3 : NT_BASIC
		{
				idc = 102;
		};

		class NT4 : NT_BASIC
		{
				idc = 103;
		};

		class NT5 : NT_BASIC
		{
				idc = 104;
		};

		class NT6 : NT_BASIC
		{
				idc = 105;
		};

		class NT7 : NT_BASIC
		{
				idc = 106;
		};

		class NT8 : NT_BASIC
		{
				idc = 107;
		};

		class NT9 : NT_BASIC
		{
				idc = 108;
		};

		class NT10 : NT_BASIC
		{
				idc = 109;
		};

		class NT11 : NT_BASIC
		{
				idc = 110;
		};

		class NT12 : NT_BASIC
		{
				idc = 111;
		};

		class NT13 : NT_BASIC
		{
				idc = 112;
		};

		class NT14 : NT_BASIC
		{
				idc = 113;
		};

		class NT15 : NT_BASIC
		{
				idc = 114;
		};

		class NT16 : NT_BASIC
		{
				idc = 116;
		};

		class NT17 : NT_BASIC
		{
				idc = 117;
		};

		class NT18 : NT_BASIC
		{
				idc = 118;
		};

		class NT19 : NT_BASIC
		{
				idc = 119;
		};

		class NT20 : NT_BASIC
		{
				idc = 120;
		};

		class NT21 : NT_BASIC
		{
				idc = 121;
		};

		class NT22 : NT_BASIC
		{
				idc = 122;
		};

		class NT23 : NT_BASIC
		{
				idc = 123;
		};

		class NT24 : NT_BASIC
		{
				idc = 124;
		};

		class NT25 : NT_BASIC
		{
				idc = 125;
		};

		class NT26 : NT_BASIC
		{
				idc = 126;
		};

		class NT27 : NT_BASIC
		{
				idc = 127;
		};

		class NT28 : NT_BASIC
		{
				idc = 128;
		};

		class NT29 : NT_BASIC
		{
				idc = 129;
		};

		class NT30 : NT_BASIC
		{
				idc = 130;
		};
		class NT31 : NT_BASIC
		{
				idc = 131;
		};
		class NT32 : NT_BASIC
		{
				idc = 132;
		};
		class NT33 : NT_BASIC
		{
				idc = 133;
		};
		class NT34 : NT_BASIC
		{
				idc = 134;
		};
		class NT35 : NT_BASIC
		{
				idc = 135;
		};
		class NT36 : NT_BASIC
		{
				idc = 136;
		};
		class NT37 : NT_BASIC
		{
				idc = 137;
		};
		class NT38 : NT_BASIC
		{
				idc = 138;
		};
		class NT39 : NT_BASIC
		{
				idc = 139;
		};
		class NT40 : NT_BASIC
		{
				idc = 140;
		};
		class NT41 : NT_BASIC
		{
				idc = 141;
		};
		class NT42 : NT_BASIC
		{
				idc = 142;
		};
		class NT43 : NT_BASIC
		{
				idc = 143;
		};
		class NT44 : NT_BASIC
		{
				idc = 144;
		};
		class NT45 : NT_BASIC
		{
				idc = 145;
		};
		class NT46 : NT_BASIC
		{
				idc = 146;
		};
		class NT47 : NT_BASIC
		{
				idc = 147;
		};
		class NT48 : NT_BASIC
		{
				idc = 148;
		};
		class NT49 : NT_BASIC
		{
				idc = 149;
		};
		class NT50 : NT_BASIC
		{
				idc = 150;
		};
		class NT51 : NT_BASIC
		{
				idc = 151;
		};
		class NT52 : NT_BASIC
		{
				idc = 152;
		};
		class NT53 : NT_BASIC
		{
				idc = 153;
		};
		class NT54 : NT_BASIC
		{
				idc = 154;
		};
		class NT55 : NT_BASIC
		{
				idc = 155;
		};
		class NT56 : NT_BASIC
		{
				idc = 156;
		};
		class NT57 : NT_BASIC
		{
				idc = 157;
		};
		class NT58 : NT_BASIC
		{
				idc = 158;
		};
		class NT59 : NT_BASIC
		{
				idc = 159;
		};
		class NT60 : NT_BASIC
		{
				idc = 160;
		};
		class NT61 : NT_BASIC
		{
				idc = 161;
		};
		class NT62 : NT_BASIC
		{
				idc = 162;
		};
		class NT63 : NT_BASIC
		{
				idc = 163;
		};
		class NT64 : NT_BASIC
		{
				idc = 164;
		};
		class NT65 : NT_BASIC
		{
				idc = 165;
		};
		class NT66 : NT_BASIC
		{
				idc = 166;
		};
		class NT67 : NT_BASIC
		{
				idc = 167;
		};
		class NT68 : NT_BASIC
		{
				idc = 168;
		};
		class NT69 : NT_BASIC
		{
				idc = 169;
		};
		class NT70 : NT_BASIC
		{
				idc = 170;
		};
		class NT71 : NT_BASIC
		{
				idc = 171;
		};
		class NT72 : NT_BASIC
		{
				idc = 172;
		};
		class NT73 : NT_BASIC
		{
				idc = 173;
		};
		class NT74 : NT_BASIC
		{
				idc = 174;
		};
		class NT75 : NT_BASIC
		{
				idc = 175;
		};
		class NT76 : NT_BASIC
		{
				idc = 176;
		};
		class NT77 : NT_BASIC
		{
				idc = 177;
		};
		class NT78 : NT_BASIC
		{
				idc = 178;
		};
		class NT79 : NT_BASIC
		{
				idc = 179;
		};
		class NT80 : NT_BASIC
		{
				idc = 180;
		};
		class NT81 : NT_BASIC
		{
				idc = 181;
		};

	};
};

class ar_namereq
{
	idd = -1;
	Access = ReadAndWrite;
	movingEnable = false;
	fadein = 0.5;
	duration = 1e+1000;
	fadeout = 0;
	name = "ar_namereq";
	onLoad = "";
	controlsBackground[] = {};
	objects[] = {};

	class controls
	{
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			x = 0.3125;
			y = 0.475;
			w = 0.296875;
			h = 0.05;
			colorText[] = {0,0.47,0.77,1};
			colorBackground[] = {0,0.47,0.77,1};
			colorBackgroundActive[] = {0,0.47,0.77,1};
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			x = 0.3125;
			y = 0.525;
			w = 0.296875;
			h = 0.3;
			colorText[] = {0,0,0,0.5};
			colorBackground[] = {0,0,0,0.5};
			colorBackgroundActive[] = {0,0,0,0.5};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "No";
			x = 0.5;
			y = 0.825;
			w = 0.109375;
			h = 0.05;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0.47,0.77,1};
			colorBackgroundActive[] = {0,0.47,0.77,1};
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Yes";
			x = 0.375;
			y = 0.825;
			w = 0.109375;
			h = 0.05;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0.47,0.77,1};
			colorBackgroundActive[] = {0,0.47,0.77,1};
		};
		class RscStructuredText_1102: RscStructuredText
		{
			idc = 1102;
			x = 0.328125;
			y = 0.55;
			w = 0.265625;
			h = 0.25;
			colorText[] = {1,1,1,1};
			colorBackground[] = {1,1,1,0};
			colorBackgroundActive[] = {1,1,1,0};
		};
	};
};