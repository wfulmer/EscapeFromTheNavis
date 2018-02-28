/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space))
{
 for (i=0;i<5;i++)
 {
instance_create_layer(random_range(74,room_width-74),random_range(74,room_height-74),"Instances",objBaseSpawner);
	
 }
}

if (keyboard_check_pressed(vk_enter)) room_goto(room0);