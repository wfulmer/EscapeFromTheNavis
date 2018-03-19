/// @description check if all enemies are dead and unlock doors if true.
//also spawns a reward depending on the chance
if (!instance_exists(objEnemyBase) && !instance_exists(objBoss) && !instance_exists(objbossSheild)){
	global.islocked	= false;
	if(spawn_active == false && reward == false){
	objHUD.curr_score = objHUD.curr_score + 20;
	spawn_x = x+irandom_range(1,9)*CELL_WIDTH;
	spawn_y = y+irandom_range(1,5)*CELL_HEIGHT;
		if(place_free(spawn_x,spawn_y) && r_chance == 4){
			instance_create_layer(spawn_x, spawn_y,"Drops",objSuitUp);
			reward = true;
		} else if(place_free(spawn_x,spawn_y) && r_chance == 5){
			instance_create_layer(spawn_x, spawn_y,"Drops",objhealthup);
			reward = true;
		}
		instance_destroy();
	}
}
