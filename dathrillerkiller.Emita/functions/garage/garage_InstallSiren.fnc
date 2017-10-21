private ["_camera"];
_camera = call garage_cam;

titleText ["Collecting the Payment", "PLAIN"];
sleep 3;
titleText ["Inspecting Vehicle", "PLAIN"];
sleep 3;
titleText ["Installing Siren 10%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 20%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 30%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 40%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 50%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 60%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 70%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 80%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 90%", "PLAIN"];
sleep 1;
titleText ["Installing Siren 100%", "PLAIN"];
sleep 1;
titleText [format ["Siren %1 had been installed",((_this select 0) call INV_getitemName)], "PLAIN"];


(_this select 1) addWeapon (_this select 0);

camDestroy _camera;
_camera cameraEffect ["terminate","back"];