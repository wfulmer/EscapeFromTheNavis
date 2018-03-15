//shootdown
 /// @description Insert description here
// You can write your code in this editor

with(objHUD){
	if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	with(objPlayer){sprite_index=sprPlayerSuitDown
	image_index=0}
	break;
	}
	case state.human:
	{
	with(objPlayer){sprite_index=sprPlayerDown
	image_index=0}
	break;
	}
	
	}
bulletPath=270
instance_create_layer(objPlayer.x+8,objPlayer.y+16,"Instances",objPlayerBullet)

cooldown=curr_firerate;
}
}
