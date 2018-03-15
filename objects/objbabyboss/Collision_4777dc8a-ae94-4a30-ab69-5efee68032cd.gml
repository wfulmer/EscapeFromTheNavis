/// @description Insert description here
// You can write your code in this editor
with(other){ 
	switch objHUD.protagonistState 
	{
		case state.human:
		{
			objHUD.hp= objHUD.hp-10;
			instance_change(obj_player_hurting,true);
			break;
		}
		case state.suit:
		{
			objHUD.suitHealth= objHUD.suitHealth-10;
			instance_change(obj_player_hurting,true);
			break;	
		}
	}	
}
instance_destroy();