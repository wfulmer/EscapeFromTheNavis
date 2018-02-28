// equip suit
 /// @description Insert description here
// You can write your code in this editor
 switch protagonistState
 {
	 case state.human:
	 
	 {
		if(instance_place(x+movement,y,objSuit)||instance_place(x-movement,y,objSuit)||instance_place(x,y+movement,objSuit)||instance_place(x,y-movement,objSuit))
		{
		protagonistState=state.suit
		audio_play_sound(soundsuiton,0,false);
		sprite_index=sprPlayerSuitDown
		image_index=0;
		alarm[0]=30*3;
		instance_destroy(objSuit);
		}
		break;
	 }
	 
	 
	 
	 
 }