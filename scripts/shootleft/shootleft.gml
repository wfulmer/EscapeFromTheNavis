//shoot left

	 /// @description Insert description here
// You can write your code in this ed
if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	sprite_index=sprPlayerSuitLeft
	image_index=0
	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerLeft
	image_index=0
	break;
	}
	
	}
bulletPath=180
instance_create_layer(x-42,y,"Instances",objPlayerBullet)

cooldown=fireRate;
}