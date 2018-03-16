//move  player right
 /// @description Insert description here
// You can write your code in this editor
shootingL=keyboard_check(vk_left)|| gamepad_button_check(0,gp_padl) ||gamepad_axis_value(0,gp_axislh)==-.25 ;
shootingR=keyboard_check(vk_right)|| gamepad_button_check(0,gp_padr) ||gamepad_axis_value(0,gp_axislh)==.25 ;
shootingU=keyboard_check(vk_up)||gamepad_axis_value(0,gp_axislv)==-.25|| gamepad_button_check(0,gp_padu);
shootingD=keyboard_check(vk_down)||gamepad_axis_value(0,gp_axislv)==-.25|| gamepad_button_check(0,gp_padd);
if(!shootingD&&!shootingL&&!shootingR&&!shootingU)
{
	switch (objHUD.protagonistState)
	{
		
	case state.suit:
	{
	sprite_index=sprSUITRIGHTHURT

	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerHurtRight
	
	break;
	}
	}
}

if(place_empty(x+objHUD.curr_movement,y)||!instance_place(x+objHUD.curr_movement,y,objblock)&&
!instance_place(x+objHUD.curr_movement,y,obj_block_hdoor) && !instance_place(x+objHUD.curr_movement,y,obj_block_vdoor))
{
	x=x+objHUD.curr_movement	
	
}