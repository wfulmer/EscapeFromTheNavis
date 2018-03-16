// remove suit
/// @description Insert description here
// You can write your code in this editor

	switch objHUD.protagonistState
{
	
		case state.suit:
	 {
		 
		 objHUD.protagonistState=state.human
		
		 audio_play_sound(soundleavesuit,0,false);
		 objHUD.curr_firerate=objHUD.fireRate;
		 objHUD.curr_bulletspeed=objHUD.bulletspeed;
		 objHUD.curr_movement=objHUD.movement;
		 sprite_index=sprPlayerDown
		 image_index=0
		 
		 instance_create_layer(x,y+25,"Drops",objSuit);
		break;	 
	 } 
	 
	 }
	 
