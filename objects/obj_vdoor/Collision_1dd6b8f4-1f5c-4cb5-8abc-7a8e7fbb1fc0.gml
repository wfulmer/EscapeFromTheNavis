/// @description move player to next room based on where the player collided with it.
//also move view to the next room

if(other.y < y){//if player above the door
	other.y	= other.y + 128;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+512);
}else if(other.y > y){//if player is below the door
	other.y	= other.y - 128;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])-512);
}
