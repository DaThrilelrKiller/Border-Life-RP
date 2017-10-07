
{
	if (!isNil format["%1_handleDamage",_x])then {
		call call compile format["%1_handleDamage",_x];
	};
}count dtk_active_modules;