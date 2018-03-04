/// @description check if all enemies are dead and unlock doors if true.

if (!instance_exists(objEnemyBase)){
	global.islocked	= false;
	if(spawn_active == false && reward == false && r_chance = 9){
	spawn_x = x+irandom_range(1,9)*CELL_WIDTH;
	spawn_y = y+irandom_range(1,5)*CELL_HEIGHT;
	if(place_free(spawn_x,spawn_y)){
		instance_create_layer(spawn_x, spawn_y,"Instances",objSuitUp);	
	}
	reward = true;
	}
}
