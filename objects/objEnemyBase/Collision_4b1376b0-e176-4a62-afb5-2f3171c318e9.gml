/// @description TODO don't destroy itself on contact
// You can write your code in this editor
with(other)
{

	switch protagonistState 
	{
		case state.human:
		{
		hp=hp-objEnemyBase.enemy_base_damage;
		if (hp<=0) 
		{ 
			instance_destroy();
			audio_play_sound(playerdies,0,false);
			instance_destroy(objEnemyBase);
		}
		
	break;
	}
	
	case state.suit:
	{
			suitHealth=suitHealth-10;
			break;	
	}
	
	}
	 
	
}
with(self) instance_destroy();