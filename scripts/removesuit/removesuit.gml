// remove suit
/// @description Insert description here
// You can write your code in this editor
switch protagonistState
{
	
		case state.suit:
	 {
		 
		 protagonistState=state.human
		
		 audio_play_sound(soundleavesuit,0,false);
		 curr_firerate=fireRate;
		 curr_bulletspeed=bulletspeed;
		 curr_movement=movement;
		 sprite_index=sprPlayerDown
		 image_index=0
		 
		 if(!suitHealth<=0)instance_create_layer(x,y-25,"Instances",objSuit);
		break;	 
	 } 
	 
	 }