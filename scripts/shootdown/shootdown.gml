//shootdown
 /// @description Insert description here
// You can write your code in this editor

if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	sprite_index=sprPlayerSuitDown
	image_index=0
	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerDown
	image_index=0
	break;
	}
	
	}
bulletPath=270
instance_create_layer(x,y+42,"Instances",objPlayerBullet)

cooldown=fireRate;
}
