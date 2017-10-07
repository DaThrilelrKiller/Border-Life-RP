"PGRE" addPublicVariableEventHandler {call compile (_this select 1);};	

network_broadcast = 
{
if ((TypeName _this) == "STRING") then 
	{													
	PGRE = _this;									
	publicVariable "PGRE";																														
	call compile _this;
	
	["broadcast","#1101",_this]call AntiHack_LogToServer;
	} 
	else 
	{
						
	hint "Public Error: Expecting String.";		

	};

};
