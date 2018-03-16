// equip suit
 /// @description Insert description here
// You can write your code in this editor
switch objHUD.protagonistState
 {
	 case state.human:
	 
	 {
		if(instance_place(x,y,objSuit))
		{
		objHUD.protagonistState=state.suit
		audio_play_sound(soundsuiton,0,false);
		sprite_index=sprPlayerSuitDown;
		image_index=0;
		objHUD.alarm[0]=30*1.5;
		objHUD.curr_firerate=objHUD.suit_frate;
		objHUD.curr_bulletspeed=objHUD.suit_bspeed;
		objHUD.curr_movement=objHUD.suit_movement;
		
		instance_destroy(objSuit);
		
		}
		break;
	 }
	 
 }
	 
	 
	 
	 
 