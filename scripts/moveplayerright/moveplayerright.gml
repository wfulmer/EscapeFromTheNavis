//move  player right
 /// @description Insert description here
// You can write your code in this editor
shootingL=keyboard_check(vk_left);
shootingR=keyboard_check(vk_right);
shootingU=keyboard_check(vk_up);
shootingD=keyboard_check(vk_down);
if(!shootingD&&!shootingL&&!shootingR&&!shootingU)
{
	switch (objHUD.protagonistState)
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
}

if(place_empty(x+objHUD.curr_movement,y)||!instance_place(x+objHUD.curr_movement,y,objblock)&&
!instance_place(x+objHUD.curr_movement,y,obj_block_hdoor) && !instance_place(x+objHUD.curr_movement,y,obj_block_vdoor))
{
	x=x+objHUD.curr_movement	
	
}