

class StatsThing
{
	idd = -1;
	movingEnable = true;
	controls[] = {RscCombo_2100,PlayerList};
	controlsBackground[] = {background};
	onLoad = "[]spawn Chief_StatCheckerOpen; ['adminlevel4 or adminlevel3 or adminlevel2 or SwagDevs','D0004']spawn ANTIHACK_DialogCheck;";

class Background: RscPicture
{
	idc = -1;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.367787 * safezoneW + safezoneX;
	y = 0.382489 * safezoneH + safezoneY;
	w = 0.264426 * safezoneW;
	h = 0.21152 * safezoneH;
	colorText[] = {0,0,0,1};
};
class RscCombo_2100: RscCombo
{
	idc = 12222;
	x = 0.422876 * safezoneW + safezoneX;
	y = 0.429493 * safezoneH + safezoneY;
	w = 0.154248 * safezoneW;
	h = 0.0235023 * safezoneH;
};
class PlayerList: RscButton
{
	idc = -1;
	text = "Get Info";
	x = 0.444911 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.104541 * safezoneW;
	h = 0.0394063 * safezoneH;
	action = "call Chief_StatCheckerStats";
};
};
