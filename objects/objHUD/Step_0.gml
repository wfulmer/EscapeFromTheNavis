/// @description Insert activate objects around the current room and update orientation
if(instance_exists(objPlayer))
{
 player_oreientation= objPlayer.sprite_index;	
	
}
//deactivate objects outside radius and activate objects within it. Radius is one room radius around current room
//instance_deactivate_region(x-(MROOM_WIDTH*CELL_WIDTH),y-(MROOM_HEIGHT*CELL_HEIGHT),MROOM_WIDTH*3*CELL_WIDTH,MROOM_HEIGHT*3*CELL_HEIGHT,false,true);
instance_activate_region(x-(MROOM_WIDTH*CELL_WIDTH),y-(MROOM_HEIGHT*CELL_HEIGHT),MROOM_WIDTH*3*CELL_WIDTH,MROOM_HEIGHT*3*CELL_HEIGHT,true);