// use suit power up

/// @description Insert description here
// You can write your code in this editor
 switch protagonistState
 {
	 case state.human:
	 
	 {
		if(instance_place(x,y,objSuitUp))
		{
				suitHealth = 100;
				audio_play_sound(soundusepowerup,0,false)
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
	