/// @description if player is within mroom, spawn some enemies.
//coords are assuming this object is in the top left
if(instance_exists(objPlayer) && spawn_active && objPlayer.x < x + CELL_WIDTH*10 && objPlayer.x> x-CELL_WIDTH && objPlayer.y > y-CELL_HEIGHT && objPlayer.y < y+CELL_HEIGHT*6 ){ //if player is in this room
	global.islocked = true;
	i = 0;
	while(i < tot_enemy){
		spawn_x = x+irandom_range(1,9)*CELL_WIDTH;
		spawn_y = y+irandom_range(1,5)*CELL_HEIGHT;
		if(position_empty(spawn_x,spawn_y)){
			instance_create_layer(spawn_x,spawn_y,"Instances",objEnemyBase);//spawn enemies randomly
			i++;
		}
	}

spawn_active = false;//make sure this isn't repeated or maybe just delete this object instead?
}