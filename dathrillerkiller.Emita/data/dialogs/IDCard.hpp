
class IDCard
{
	idd = -1;
	fadeout=1;
	fadein=1;
	duration = 7;
	name= "IDCard";
	onLoad = "uiNamespace setVariable ['IDCard', _this select 0]";
	objects[] = {};
	controls[] = {};
	class controlsBackground 
	{	
		class Background: RscPicture
		{
			idc = 1201;
			text = "sfg_textures\Faces\CIVID.paa";
			x = -0.101719 * safezoneW + safezoneX;
			y = -0.292222 * safezoneH + safezoneY;
			w = 0.597187 * safezoneW;
			h = 1.02644 * safezoneH;
		};
		class face: RscPicture
		{
			idc = 1202;
			text = "sfg_textures\Faces\face01.pac";
			x = 0.0323437 * safezoneW + safezoneX;
			y = 0.112222 * safezoneH + safezoneY;
			w = 0.104687 * safezoneW;
			h = 0.173444 * safezoneH;
		};
		class Text_Name: RscText
		{
			idc = 1400;
			x = 0.206094 * safezoneW + safezoneX;
			y = 0.104 * safezoneH + safezoneY;
			w = 0.137657 * safezoneW;
			h = 0.0246667 * safezoneH;
			colorText[]       = {0, 0, 0, 1};
			sizeEx = 0.055;
		};
		class Text_IDnum: RscText
		{
			idc = 1402;
			x = 0.206094 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.137657 * safezoneW;
			h = 0.0246667 * safezoneH;
			colorText[]       = {0, 0, 0, 1};
			sizeEx = 0.055;
		};
		class Text_Rank: RscText
		{
			idc = 1403;
			x = 0.206094 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.137657 * safezoneW;
			h = 0.0246667 * safezoneH;
			colorText[]       = {0, 0, 0, 1};
			sizeEx = 0.055;
		};
		class Text_DOB: RscText
		{
			idc = 1401;
			x = 0.206094 * safezoneW + safezoneX;
			y = 0.137 * safezoneH + safezoneY;
			w = 0.137657 * safezoneW;
			h = 0.0246667 * safezoneH;
			colorText[]       = {0, 0, 0, 1};
			sizeEx = 0.055;
		};
	};
};
