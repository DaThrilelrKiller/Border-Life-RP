private ["_playerWeapon","_Weapon","_picure","_name","_isPistol"];
_playerWeapon = _this select 0;
if (_playerWeapon == "")then 
{
	_Weapon  = call compile (_this select 1);
	
	if (_Weapon == "")exitWith
	{
	hintSilent parsetext  "<t size='1.5' color='#FF0000'>You have no weapons in you holster";
	};
	
	player addWeapon _Weapon;
	player selectWeapon _Weapon;
	
	call compile format["%1 = '';", (_this select 1)];
	
	 if ( (primaryWeapon player) != "") then
	 {
		   private['_type', '_muzzles'];
		 
		   _type = primaryWeapon player;
		   _muzzles = getArray(configFile >> "cfgWeapons" >> _type >> "muzzles");
		 
		   if (count _muzzles > 1) then
		   {
				player selectWeapon (_muzzles select 0);
		   }
		   else
		   {
				player selectWeapon _type;
		   };
	 };
}
else
{
	/*holster*/
	_isPistol = _playerWeapon call Main_isPistol;
	_picure = getText (configFile >> "cfgWeapons" >> 	_playerWeapon >> "picture");
	_name = getText (configFile >> "cfgWeapons" >> _playerWeapon >> "displayName");

	if (_isPistol)then
	{
		if (ARHP == "")then
		{
			ARHP = _playerWeapon;
			player removeWeapon _playerWeapon;
		}
		else
		{	

		};
	}
	else
	{
		if (ARHR == "")then
		{
			ARHR = _playerWeapon;
			player removeWeapon _playerWeapon;
		}
		else
		{
			
		};
	};
};

