//shoot up
/// @description Insert description here
// You can write your code in this editor
if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	sprite_index=sprPlaySuitUp
	image_index=0
	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerUp
	image_index=0
	break;
	}
	
	}
bulletPath=90
instance_create_layer(x-8,y,"Instances",objPlayerBullet)

cooldown=fireRate;
}