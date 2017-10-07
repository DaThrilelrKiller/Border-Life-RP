
{ 
	if (_x call TFAR_fnc_isRadio)then {
	AR_Radios set [count AR_Radios, _x];
	};
	nil
}count (weapons player);