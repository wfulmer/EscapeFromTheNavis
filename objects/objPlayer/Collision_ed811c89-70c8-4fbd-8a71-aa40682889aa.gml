/// @description Insert description here
// You can write your code in this editor
//inventory[?"suitup"]=inventory[?"suitup"]+1;
switch protagonistState
 {
	 case state.human:
	 
	 {
		if(suitHealth < 100)
		{
				suitHealth = 100;
				audio_play_sound(soundusepowerup,0,false)
				with(other) instance_destroy();
				//inventory[?"suitup"]=inventory[?"suitup"]-1;
				
		}
		break;
	 }
	 /*case state.suit:
	 {
		if(inventory[?"suitup"]>=1)
			{
				suitHealth=suitHealth+70;	
				audio_play_sound(soundusepowerup,0,false)
				inventory[?"suitup"]=inventory[?"suitup"]-1;
			}	 
			break;
	 }*/
	 
 }
//audio_play_sound(soundgetpowerup,0,false)
//with(other) instance_destroy();