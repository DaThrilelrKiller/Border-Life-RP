if (ar_fac_workers < 10)then
{
	if ([player,"geld",-500] call storage_add)then 
	{
		ar_fac_workers = ar_fac_workers + 1;
		systemchat format ["you have hired another factory worker, you now have %1/10 workers",ar_fac_workers];
	}
	else
	{
		systemchat "you do not have enough money";
	};
}
else
{
	systemchat "Max factory workers reached";
};