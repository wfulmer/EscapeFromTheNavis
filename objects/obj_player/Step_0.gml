/// @description Insert description here
var hspd = keyboard_check(vk_right) -keyboard_check(vk_left);
var vspd = keyboard_check(vk_down)-keyboard_check(vk_up);
move(hspd,vspd);

//image_angle = point_direction(x,y,mouse_x,mouse_y);
/*
//shooting
if (mouse_check_button(mb_left)) && (cooldown < 1){
	instance_create_layer(x,y,layer,obj_bullet);//create a bullets layer?
	cooldown = fire_rate;
}

cooldown = cooldown -1;
*/