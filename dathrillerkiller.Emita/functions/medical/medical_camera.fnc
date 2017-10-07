private ["_corps","_pos","_camera"];

_pos = _this;
medical_cam = "camera" camCreate [(_pos select 0), (_pos select 1), ((_pos select 2) + 3)];
	
showCinemaBorder false;
medical_cam camPrepareTarget _corps;
medical_cam cameraEffect ["Internal", "LEFT"];
medical_cam camPreparePos [(_pos select 0), (_pos select 1), ((_pos select 2) + 40)];
medical_cam camPrepareFOV 1;
	
if (not(sunOrMoon > 0)) then {
	camUseNVG true;
};

medical_cam camCommitPrepared 5;