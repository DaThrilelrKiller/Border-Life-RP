if (!alive player)exitwith{}; 

isstunned=true;

systemChat  "You Have Been Ziptied!"; 
waituntil {(animationstate player != "civilsitting" and animationstate player != "civilsitting03" and animationstate player != "civilsitting02" and animationstate player != "civilsitting01")};
	
if(animationstate player == "civilsitting" or animationstate player == "civilsitting03" or animationstate player == "civilsitting02" or animationstate player == "civilsitting01")then

	{

	systemChat  "You Managed To Free Yourself!"; 
	['ALL',[player,"boundCaptive_unaErc"],'network_SwitchMove',false,true]call network_MPExec;

	};

isstunned=false;
StunActiveTime=0;

