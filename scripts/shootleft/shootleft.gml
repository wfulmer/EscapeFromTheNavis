//shoot left

	 /// @description Insert description here
// You can write your code in this ed
with(objHUD){if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	with(objPlayer){sprite_index=sprPlayerSuitLeft
	image_index=0}
	break;
	}
	case state.human:
	{
	with(objPlayer){sprite_index=sprPlayerLeft
	image_index=0}
	break;
	}
	
	}
bulletPath=180
instance_create_layer(objPlayer.x-25,objPlayer.y+14,"Instances",objPlayerBullet)

cooldown=curr_firerate;
}
}