/// @description move player to next room based on where the player collided with it.
//also move view to the next room

if(other.x < x){//if player above the door
	other.x	= other.x + 128;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+768, camera_get_view_y(view_camera[0]));
}else if(other.x > x){//if player is below the door
	other.x	= other.x - 128;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-768, camera_get_view_y(view_camera[0]));
}
