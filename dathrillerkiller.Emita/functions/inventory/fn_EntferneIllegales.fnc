private["_Fhasnvgoogles", "_Fhasbinoculars"];
   _Fhasnvgoogles  = 0;
   if (player hasWeapon "NVGoggles") then {_Fhasnvgoogles = 1; };
   _Fhasbinoculars = 0;
   if (player hasWeapon "Binocular") then {_Fhasbinoculars = 1;};
   REMOVEALLWEAPONS player;
   player REMOVEMAGAZINES "Handgrenade";
   player REMOVEMAGAZINES "Pipebomb";
   player REMOVEMAGAZINES "Mine";
   ["INV_InventarArray", "weapon"] call INV_StorageRemoveKindOf;
   ["INV_InventarArray", "Magazin"] call INV_StorageRemoveKindOf;
   player removeAction unholsterPistol;
   saveWeaponPistol set [1,false];
	saveWeaponRifle = ["",false,false];
   If (_Fhasnvgoogles == 1)  then {player addWeapon "NVGoggles";};
   If (_Fhasbinoculars == 1) then {player addWeapon "Binocular";};
   {
      if ( ([player,(_x select 0)] call storage_amount) > 0) then 
      {
         if ((_x select 0) call INV_getitemIsIllegal) then {
		 [player,(_x select 0),0]call storage_setAmount;
		 };
      };
   }
   count INV_InventarArray;