/// @description Insert description here
// You can write your code in this editor

suitHealth=suitHealth-suit_tickdown;

if(suitHealth<=35) { hp=hp-15; audio_play_sound(soundwarning,2,false); }
if(suitHealth<=0) 
{
	protagonistState=state.human
		 audio_play_sound(soundleavesuit,0,false);
		 sprite_index=sprPlayerDown
		 image_index=0;
		 instance_create_layer(x,y+25,"Instances",objSuit);
	suitHealth=0;
	
}

switch protagonistState
{
case state.suit	:
 {
	 alarm[0] = 30*3;
	 break;
 }
 

}

