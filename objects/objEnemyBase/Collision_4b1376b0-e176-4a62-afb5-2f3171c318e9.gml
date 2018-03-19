/// @description deal damage to player and enable player's Invinvibility frames
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
