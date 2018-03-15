//shoot up
/// @description Insert description here
// You can write your code in this editor
with(objHUD){
	if(cooldown<=0){
	switch (protagonistState)
	{
		
	case state.suit:
	{
	with(objPlayer){sprite_index=sprPlaySuitUp
	image_index=0}
	break;
	}
	case state.human:
	{
	with(objPlayer){sprite_index=sprPlayerUp
	image_index=0}
	break;
	}
	
	}
bulletPath=90
instance_create_layer(objPlayer.x-8,objPlayer.y,"Instances",objPlayerBullet)

cooldown=curr_firerate;
}
}