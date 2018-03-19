/// @description handles restarting the run
if (keyboard_check_pressed(ord("R"))){
	//room_goto(r_menu);
	game_restart();
	game_over = false;
}