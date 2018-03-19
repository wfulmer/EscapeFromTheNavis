/// @description move player to next room based on where the player collided with it.
//also move view to the next room

if(!global.islocked && other.x < x){//if player is left of the door
	other.x	= other.x + 110;
	objHUD.x = objHUD.x + 768;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+768, camera_get_view_y(view_camera[0]));
}else if(!global.islocked && other.x > x){//if player is right of the door
	other.x	= other.x - 110;
	objHUD.x = objHUD.x - 768;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-768, camera_get_view_y(view_camera[0]));
}
