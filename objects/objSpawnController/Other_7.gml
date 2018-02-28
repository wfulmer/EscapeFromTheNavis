/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer))
 {
	 search=mp_grid_create(0,0,room_width/64,room_height/64,64,64)
	 
	 
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
	  
	 
	 
	 
	  
	 
 }