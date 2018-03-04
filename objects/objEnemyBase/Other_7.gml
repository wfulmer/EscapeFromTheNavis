/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	newPath= path_add();	 
	if mp_grid_path(obj_mroom_spawner.search, newPath, x, y, objPlayer.x, objPlayer.y, 0)
    { 	
		path_start(newPath,enemy_base_speed, path_action_stop, 0);
	}     
}
//	else {
//	 move_towards_point(objPlayer.x,objPlayer.y,enemy_base_speed)	
//	}
	  
//	  }
	  
