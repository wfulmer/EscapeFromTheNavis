/// @description Insert description here
/*
if (instance_exists(objPlayer))
 {
	 search=mp_grid_create(0,0,room_width/64,room_height/64,64,64);//change this to mroom?

	 with(objblock)
	 {
		 mp_grid_add_instances(objSpawnController.search,self,true);
	 }
	  with(objhealthup)
	 {
		mp_grid_add_instances(objSpawnController.search,self,true);
	 }
	  with(objSuitUp)
	 {
		 mp_grid_add_instances(objSpawnController.search,self,true);
	 }
	 with(obj_vdoor){
		mp_grid_add_instances(objSpawnController.search,self,true);
	 }
	 with(obj_hdoor){
		mp_grid_add_instances(objSpawnController.search,self,true);
	 }
 }
/*