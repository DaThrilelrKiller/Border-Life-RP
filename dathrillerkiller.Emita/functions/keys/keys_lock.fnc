private ["_vcl"];
_vcl = dtk_keychainarray select (lbCurSel 1);
 if (locked _vcl) then 
 {
	 systemChat "Vehicle Unlocked";
	[_vcl,[_vcl,false],'network_lock',false,true]call network_MPExec;
 }
 else
 {
	  systemChat "Vehicle Locked";
	  [_vcl,[_vcl,true],'network_lock',false,true]call network_MPExec;
 };
 
