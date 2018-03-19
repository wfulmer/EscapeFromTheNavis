/// @description teleport to boss cheat code
if (keyboard_check_pressed(ord("T"))){
	objPlayer.x = obj_boss_spawner.x+CELL_WIDTH;
	objPlayer.y = obj_boss_spawner.y+CELL_HEIGHT;
	camera_set_view_pos(view_camera[0],obj_boss_spawner.x-CELL_WIDTH, obj_boss_spawner.y-CELL_HEIGHT);
}