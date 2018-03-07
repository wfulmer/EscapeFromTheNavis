/// @description Insert description here
// You can write your code in this editor
enum pattern{
healthy,
somewhat_healthy,
low_health,
deseperate_health
}

boss_status=pattern.healthy

timeline_index=time_healthy;
timeline_loop=true;
timeline_running=true;

if (instance_exists(objPlayer))
 {
	 search=mp_grid_create(0,0,room_width/64,room_height/64,64,64);

	 with(objblock)
	 {
		 mp_grid_add_instances(objBoss.search,self,true);
	 }
	  with(objhealthup)
	 {
		mp_grid_add_instances(objBoss.search,self,true);
	 }
	  with(objSuitUp)
	 {
		 mp_grid_add_instances(objBoss.search,self,true);
	 }
	 with(obj_vdoor){
		mp_grid_add_instances(objBoss.search,self,true);
	 }
	 with(obj_hdoor){
		mp_grid_add_instances(objBoss.search,self,true);
	 }
 }

