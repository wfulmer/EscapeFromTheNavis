/// @description updates the grid

if (instance_exists(objPlayer))
 {
	 search=mp_grid_create(0,0,room_width/CELL_WIDTH,room_height/CELL_HEIGHT,CELL_WIDTH,CELL_HEIGHT);

	 with(objblock)
	 {
		 mp_grid_add_instances(obj_mroom_spawner.search,self,true);
	 }
	  with(objhealthup)
	 {
		mp_grid_add_instances(obj_mroom_spawner.search,self,true);
	 }
	  with(objSuitUp)
	 {
		 mp_grid_add_instances(obj_mroom_spawner.search,self,true);
	 }
	 with(obj_vdoor){
		mp_grid_add_instances(obj_mroom_spawner.search,self,true);
	 }
	 with(obj_hdoor){
		mp_grid_add_instances(obj_mroom_spawner.search,self,true);
	 }
 }
