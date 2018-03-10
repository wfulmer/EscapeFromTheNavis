/// @description use health power up
	if(objPlayer.hp >= 70){
		objPlayer.hp = 100;
		audio_play_sound(soundusepowerup,0,false);
	}else{
		objPlayer.hp= objPlayer.hp+30;
		audio_play_sound(soundusepowerup,0,false);
	}	
	

				