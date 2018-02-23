/// @description movement, shooting


if (keyboard_check(ord("W"))&& place_free(x,y-player_speed)) y = y-player_speed;//instead of place_free try instance_place
if (keyboard_check(ord("A"))&& place_free(x-player_speed,y)) x = x-player_speed;
if (keyboard_check(ord("S"))&& place_free(x+player_speed,y)) y = y+player_speed;
if (keyboard_check(ord("D"))&& place_free(x,y+player_speed)) x = x+player_speed;



//shooting
if (mouse_check_button(mb_left)) && (cooldown < 1){
	instance_create_layer(x,y,layer,obj_bullet);//create a bullets layer?
	cooldown = fire_rate;
}

cooldown = cooldown -1;
