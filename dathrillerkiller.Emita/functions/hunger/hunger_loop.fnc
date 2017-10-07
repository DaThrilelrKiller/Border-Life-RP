

if (dtk_hunger < 100) then 
{
	dtk_hunger = dtk_hunger + (dtk_hunger_time*15);

	if (dtk_hunger > 90)then {
		titleText ["You are starving","plain"];
	};
}
else
{
	titleText ["You are starving to death, your body is begining to shutdown", "plain"];
	player setDamage ((damage player) + (dtk_hunger_damage*15));
	dtk_hunger = 100;
};