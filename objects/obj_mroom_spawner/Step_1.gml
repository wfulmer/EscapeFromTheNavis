/// @description if player is within mroom, spawn some enemies.
//coords are assuming this object is in the top left
if(instance_exists(objPlayer) && spawn_active && objPlayer.x < x + CELL_WIDTH*11 && objPlayer.x> x-CELL_WIDTH && objPlayer.y > y-CELL_HEIGHT && objPlayer.y < y+CELL_HEIGHT*7 ){ //if player is in this room
	global.islocked = true;
	i = 0;
	while(i < tot_enemy){//check if can spawn there
		spawn_x = x+irandom_range(1,9)*CELL_WIDTH;
		spawn_y = y+irandom_range(1,5)*CELL_HEIGHT;
		if(place_free(spawn_x,spawn_y) && point_distance(spawn_x,spawn_y,objPlayer.x,objPlayer.y) > 2*CELL_WIDTH){
			instance_create_layer(spawn_x,spawn_y,"Instances",objEnemyBase);//spawn enemies randomly
			i++;
		}
	}

spawn_active = false;//make sure this isn't repeated or maybe just delete this object instead?
}