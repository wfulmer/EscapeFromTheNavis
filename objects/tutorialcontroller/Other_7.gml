/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check_pressed(0,gp_select))
{
 for (i=0;i<5;i++)
 {
instance_create_layer(random_range(74,room_width-74),random_range(74,room_height-74),"Instances",objBaseSpawner);
	
 }
}

if (gamepad_button_check_pressed(0,gp_start)) 
{
	room_goto_next()
	
	
}