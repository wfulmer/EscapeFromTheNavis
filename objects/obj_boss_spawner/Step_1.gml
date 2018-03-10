/// @description spawn boss object
if(instance_exists(objPlayer) && bspawn_active && objPlayer.x < x + CELL_WIDTH*11 && objPlayer.x> x-CELL_WIDTH && objPlayer.y > y-CELL_HEIGHT && objPlayer.y < y+CELL_HEIGHT*7 ){ //if player is in this room
	instance_create_layer(x,y,"Instances", objbossHud);
	instance_create_layer(x+((MROOM_WIDTH div 2)*CELL_WIDTH), y+CELL_HEIGHT,"Instances", objBoss)
	bspawn_active = false;
}