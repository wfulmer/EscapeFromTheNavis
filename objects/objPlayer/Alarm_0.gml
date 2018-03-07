/// @description Insert description here
// You can write your code in this editor

suitHealth=suitHealth-suit_tickdown;

if(suitHealth<=35) {audio_play_sound(soundwarning,2,false); }
if(suitHealth<=0) 
{
	suitHealth=0;
	removesuit()
		 instance_create_layer(x,y+25,"Instances",objSuit);
	
	
}

switch protagonistState
{
case state.suit	:
 {
	 alarm[0] = 30*3;
	 break;
 }
 

}

