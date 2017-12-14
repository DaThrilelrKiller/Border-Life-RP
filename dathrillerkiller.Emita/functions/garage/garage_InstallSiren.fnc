private ["_camera"];
/* _camera = call garage_cam; */

titleText [format ["Siren %1 had been installed",((_this select 0) call config_displayname)], "PLAIN"];


(_this select 1) addWeapon (_this select 0);
