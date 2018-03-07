if(instance_exists(objPlayer))
{
	newPath= path_add();
	
	if mp_grid_path(objBoss.search, newPath, x, y, objPlayer.x, objPlayer.y, 0)
    { 	
		path_start(newPath,10, path_action_stop, 0);
		
	}     
}


