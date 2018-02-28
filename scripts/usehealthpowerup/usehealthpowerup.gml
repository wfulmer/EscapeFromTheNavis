// use health power up

/// @description Insert description here
// You can write your code in this editor
if(inventory[?"healthup"]>=1)
			{
				hp=hp+30;
				audio_play_sound(soundusepowerup,0,false)
				inventory[?"healthup"]=inventory[?"healthup"]-1;
				
			} 