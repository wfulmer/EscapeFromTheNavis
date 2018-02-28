// remove suit
/// @description Insert description here
// You can write your code in this editor
switch protagonistState
{
	
		case state.suit:
	 {
		 protagonistState=state.human
		 audio_play_sound(soundleavesuit,0,false);
		 sprite_index=sprPlayerDown
		 image_index=0;
		 instance_create_layer(x-74,y-74,"Instances",objSuit);
		break;	 
	 } 
	 
	 }