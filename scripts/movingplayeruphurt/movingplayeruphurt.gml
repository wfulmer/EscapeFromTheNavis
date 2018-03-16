// move player up

	 /// @description Insert description here
// You can write your code in this editor
shootingL=keyboard_check(vk_left)|| gamepad_button_check(0,gp_padl) ||gamepad_axis_value(0,gp_axislh)==-.25 ;
shootingR=keyboard_check(vk_right)|| gamepad_button_check(0,gp_padr) ||gamepad_axis_value(0,gp_axislh)==-.25 ;
shootingU=keyboard_check(vk_up)||gamepad_axis_value(0,gp_axislv)==-.25|| gamepad_button_check(0,gp_padu);
shootingD=keyboard_check(vk_down)||gamepad_axis_value(0,gp_axislv)==-.25|| gamepad_button_check(0,gp_padd);
if(!shootingD&&!shootingL&&!shootingR&&!shootingU)
{
	switch (objHUD.protagonistState)
	{
		
	case state.suit:
	{
	sprite_index=sprSuitUPHURT
	
	break;
	}
	case state.human:
	{
	sprite_index=sprPlayerHurtUP
	
	break;
	}
	}
}
if(place_empty(x,y-objHUD.curr_movement)||!instance_place(x,y-objHUD.curr_movement,objblock)&&
!instance_place(x,y-objHUD.curr_movement,obj_block_hdoor) && !instance_place(x,y-objHUD.curr_movement,obj_block_vdoor))
{
	y=y-objHUD.curr_movement	
	
}
 