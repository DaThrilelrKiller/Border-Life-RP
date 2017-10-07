class AR_GiveTicket
{
	idd = 1602;
	movingEnable = false;
	objects[] = {};
	onLoad = "";
	class controls
	{	
		class backgroundblack: RscBackground
		{
			idc = -1;
			x = 0.124999;
			y = 0.225;
			w = 0.747729;
			h = 0.458585;
		};
		class background: RscFrame
		{
			idc = -1;
			x = 0.124999;
			y = 0.225;
			w = 0.747729;
			h = 0.458585;
		};
		class lable: RscStructuredText
		{
			idc = -1;
			x = 0.124999;
			y = 0.220202;
			w = 0.75;
			h = 0.05;
			colorBackground[] = {0.5098,0.0000,0.0000,1.0000};
		};
		class reason: RscEdit
		{
			idc = 1400;
			text = "Fine Reason";
			x = 0.140625;
			y = 0.3;
			w = 0.71875;
			h = 0.275;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			text = "Fine Price";
			x = 0.140625;
			y = 0.6;
			w = 0.296875;
			h = 0.05;
		};
		class Close: RscButton
		{
			idc = -1;
			text = "Close";
			action = "closeDialog 0;";	
			x = 0.671875;
			y = 0.6;
			w = 0.183333;
			h = 0.0545455;
		};
		class Give: RscButton
		{
			idc = -1;
			text = "Give Fine";
			action = "call ticket_giveTicket; closeDialog 0;";	
			x = 0.46875;
			y = 0.6;
			w = 0.183333;
			h = 0.0545455;
		};
	};
};

class AR_GetTicket
{
	idd = 1603;
	movingEnable = false;
	objects[] = {};
	class controls
	{	
		class backgroundblack: RscBackground
		{
			idc = -1;
			x = 0.124999;
			y = 0.225;
			w = 0.747729;
			h = 0.458585;
		};
		class background: RscFrame
		{
			idc = -1;
			x = 0.124999;
			y = 0.225;
			w = 0.747729;
			h = 0.458585;
		};
		class lable: RscStructuredText
		{
			idc = -1;
			x = 0.124999;
			y = 0.220202;
			w = 0.75;
			h = 0.05;
			colorBackground[] = {0.5098,0.0000,0.0000,1.0000};
		};
		class reason: RscEdit
		{
			idc = 1400;
			x = 0.140625;
			y = 0.3;
			w = 0.71875;
			h = 0.275;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			x = 0.140625;
			y = 0.6;
			w = 0.296875;
			h = 0.05;
		};
		class Deny: RscButton
		{
			idc = -1;
			text = "Deny Fine";
			action = "AR_Action = ''; closeDialog 0;";	
			x = 0.671875;
			y = 0.6;
			w = 0.183333;
			h = 0.0545455;
		};
		class pay: RscButton
		{
			idc = -1;
			text = "Pay Fine";
			action = "AR_Action = 'pay'; closeDialog 0;";	
			x = 0.46875;
			y = 0.6;
			w = 0.183333;
			h = 0.0545455;
		};

	};
};
