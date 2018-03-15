/// @description use health power up
	if(objHUD.hp >= 70){
		objHUD.hp = 100;
		audio_play_sound(soundusepowerup,0,false);
	}else{
		objHUD.hp= objHUD.hp+30;
		audio_play_sound(soundusepowerup,0,false);
	}	
	

				