/// @description Insert description here
// You can write your code in this editor
with(other) 
{
	//hp =hp-15
	switch protagonistState 
	{
		case state.human:
		{
			hp=hp-objEnemyBase.enemy_base_damage;
			break;
		}
		case state.suit:
		{
			suitHealth=suitHealth-10;
			break;	
		}
	}
}