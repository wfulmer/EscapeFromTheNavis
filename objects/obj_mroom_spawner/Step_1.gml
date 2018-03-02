/// @description if player is within mroom, spawn some enemies.
//coords are assuming this object is in center of room
if(spawn_active && objPlayer.x < x + CELL_WIDTH*5 && objPlayer.x> x-CELL_WIDTH *5 && objPlayer.y > y-CELL_HEIGHT*3 && objPlayer.y < y+CELL_HEIGHT*3 ){ //if player is in this room

instance_create_layer(x,y,"Instances",objEnemyBase);//spawn enemies

spawn_active = false;//make sure this isn't repeated or maybe just delete this object instead?
}