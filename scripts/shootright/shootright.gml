//shoot right
/// @description Insert description here
// You can write your code in this editor
if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	sprite_index=sprPlayerSuitRight
	image_index=0
	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerRight
	image_index=0
	break;
	}
	
	}
	
bulletPath=0
instance_create_layer(x+42,y,"Instances",objPlayerBullet)

cooldown=fireRate;
}
	 
