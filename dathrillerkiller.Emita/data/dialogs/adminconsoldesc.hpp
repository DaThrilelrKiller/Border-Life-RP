class RscBgFrame
{
	type=0;
	idc=-1;
	style=64;
	colorBackground[]={0, 0, 1, 0.5};
	colorText[]={1, 1, 1, 1};
	font="TahomaB";
	SizeEX=0.025;
	text="";
};

class Main
{
	name=Main;
	idd=-1;
	movingEnable=1;
	controlsBackground[]={adminconsol_background};
	objects[]={};
	controls[]={adminconsol_options, adminconsol_activate, adminconsol_frame};
	onLoad = "[]spawn admin_fillmenu; ['adminlevel4 or adminlevel3 or adminlevel2 or SwagDevs','D0002']spawn ANTIHACK_DialogCheck;";

	class adminconsol_options:RscListBox
	{
		idc=1000;
		x=0.355555555555556;
		y=0.213333333333333;
		w=0.311111111111111;
		h=0.497777777777778;
	};

	class adminconsol_activate:RscButton
	{
		idc=-1;
		text="Activate Command";
		action="[]call admin_exec";
		x=0.4;
		y=0.746666666666667;
		w=0.222222222222222;
		h=0.0711111111111111;
	};

	class adminconsol_frame:RscBgFrame
	{
		idc=-1;
		x=0.288888888888889;
		y=0.106666666666667;
		w=0.422222222222222;
		h=0.746666666666667;
	};

	class adminconsol_background:RscBackground
	{
		idc=-1;
		x=0.288888888888889;
		y=0.106666666666667;
		w=0.422222222222222;
		h=0.746666666666667;
	};
};