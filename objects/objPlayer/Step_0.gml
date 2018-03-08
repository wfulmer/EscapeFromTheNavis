/// @description Insert description here
// You can write your code in this editor
cooldown=cooldown-1;
// code for left movement with gamepad
 if(!keyboard_check(ord("A")) && gamepad_button_check(0,gp_padl))
 {
	 moveplayerleft();
 }
 else if(!keyboard_check(ord("A")) && gamepad_axis_value(0,gp_axislh)<=-.25)
 {
	moveplayerleft()
 }
 
 //code for game pad right

 
 if(!keyboard_check(ord("D")) && gamepad_button_check(0,gp_padr))
 {
	moveplayerright()
 }
 else if(!keyboard_check(ord("D")) && gamepad_axis_value(0,gp_axislh)>=.25)
 {
	moveplayerright()
 }
 
 //code for up
 if(!keyboard_check(ord("W")) && gamepad_button_check(0,gp_padu))
 {
	moveplayerup()
 }
 else if(!keyboard_check(ord("W")) && gamepad_axis_value(0,gp_axislv)<=-.25)
 {
	moveplayerup()
 }
 // code for S movemment down
 
 if(!keyboard_check(ord("S")) && gamepad_button_check(0,gp_padd))
 {
	 moveplayerdown()
 }
 else if(!keyboard_check(ord("S")) && gamepad_axis_value(0,gp_axislv)>=.25)
 {
	moveplayerdown()
 }
 
 // shoting left
 if(!keyboard_check(vk_left) && gamepad_axis_value(0,gp_axisrh)<=-1)
 {
	 shootleft()
 }
 
 //shooting right
  if(!keyboard_check(vk_right) && gamepad_axis_value(0,gp_axisrh)>=.99)
 {
	shootright(); 
 }
 
 // shooting up
  if(!keyboard_check(vk_up) && gamepad_axis_value(0,gp_axisrv)<=-.99)
 {
	 
	 shootup()
 }
 // shooting down
  if(!keyboard_check(vk_left) && gamepad_axis_value(0,gp_axisrv)>=1)
 {
	shootdown()	 
 }
  // equip suit
 if(!keyboard_check(ord("E")) && gamepad_button_check_pressed(0,gp_face3))
 {
	 equipsuit()
 }
 //remove suit
  if(!keyboard_check(ord("R")) && gamepad_button_check_pressed(0,gp_face4))
 {
	  removesuit()
 }
 
 //use suit poweruup
 /*
  if(!keyboard_check(ord("Z")) && gamepad_button_check_pressed(0,gp_shoulderr))
 {
	 usesuitpowerup() 
	 
 }*/
 
 //use healthpowerup
 /*
  if(!keyboard_check(ord("X")) && gamepad_button_check_pressed(0,gp_shoulderrb))
 {
	usehealthpowerup();
 }
 */
if(hp<=0){
	objHUD.game_over = true;
	instance_destroy();
}

switch (protagonistState)
{
	case state.suit:
	{
		curr_movement = suit_movement;
		curr_bulletspeed = suit_bspeed;
		curr_firerate = suit_frate;
		break;
	}
	
	case state.human:
	{
		curr_movement = movement;
		curr_bulletspeed = bulletspeed;
		curr_firerate = fireRate;	
		break;
	}
	
}
