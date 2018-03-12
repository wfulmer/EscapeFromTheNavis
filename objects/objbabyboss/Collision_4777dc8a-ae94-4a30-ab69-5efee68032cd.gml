/// @description Insert description here
// You can write your code in this editor
with(other){ 
	switch protagonistState 
	{
		case state.human:
		{
			objPlayer.hp= objPlayer.hp-10;
			break;
		}
		case state.suit:
		{
			objPlayer.suitHealth= objPlayer.suitHealth-10;
			break;	
		}
	}	
}
instance_destroy();