// move player down

/// @description Insert description here
// You can write your code in this editor
shootingL=keyboard_check(vk_left);
shootingR=keyboard_check(vk_right);
shootingU=keyboard_check(vk_up);
shootingD=keyboard_check(vk_down);
if(!shootingD&&!shootingL&&!shootingR&&!shootingU)
{
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
}
if(place_empty(x,y+movement)||!instance_place(x,y+movement,objblock))
{
	y=y+movement
	
}