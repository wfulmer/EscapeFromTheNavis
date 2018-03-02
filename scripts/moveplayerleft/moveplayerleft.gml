// moveplayer left
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
	sprite_index=sprPlayerSuitLeft
	image_index=0
	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerLeft
	image_index=0
	break;
	}}
}

if(place_empty(x-curr_movement,y)||!instance_place(x-curr_movement,y,objblock) || 
(global.islocked == false && instance_place(x-curr_movement,y,obj_hdoor)))
{
	
	x=x-curr_movement
	
}