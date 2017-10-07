/********************************************************************************************************************
*  ______             _______          __      __   __   __                  ___ ___    __   __   __                
* |   _  \   .---.-. |       | .----. |  |--. |__| |  | |  | .-----. .----. |   Y   )  |__| |  | |  | .-----. .----.
* |.  |   \  |  _  | |.|   | | |   _| |     | |  | |  | |  | |  -__| |   _| |.  1  /   |  | |  | |  | |  -__| |   _|
* |.  |    \ |___._| `-|.  |-' |__|   |__|__| |__| |__| |__| |_____| |__|   |.  _  \   |__| |__| |__| |_____| |__|  
* |:  1    /           |:  |      Title: AntiHack/Cheat                     |:  |   \                               
* |::.. . /            |::.|      Version: 1.x.x.x                          |::.| .  )                              
* `------'             `---'      For: Pure Gaming Island Life A2           `--- ---'      
********************************************************************************************************************/ 
private ["_Condition","_CodeReport"];

_Condition = call compile (_This select 0);
_CodeReport = (_This select 1);

if !(_Condition)then 
{
		disableuserinput true;
		failMission "END1";
		["ALL",["dtk_client",format ["[SCREENSHOT] Report %1 to the Admins with code #%2",(name player),_CodeReport],2],"network_chat",false,true]call network_MPExec;
};