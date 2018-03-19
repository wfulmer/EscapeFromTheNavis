/// @description 
// You can write your code in this editor
with(other)
{

	switch objHUD.protagonistState 
	{
		case state.human:
		{
		objHUD.hp=objHUD.hp-objEnemyBase.enemy_base_damage;
		instance_change(obj_player_hurt,true);
		
		
		
	break;
	}
	
	case state.suit:
	{
			objHUD.suitHealth=objHUD.suitHealth-10;
			instance_change(obj_player_hurt,true);
			break;	
	}
	
	}
	 
	
}
