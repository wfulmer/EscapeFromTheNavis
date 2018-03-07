/// @description Insert description here
// You can write your code in this editor
enum pattern{  //states that control the boss pattern
healthy,
somewhat_healthy,
low_health,
deseperate_health
}
boss_hp=100; // health
boss_spawners=5; // how many spawners can the boss make



boss_status=pattern.healthy
if (instance_exists(objPlayer))
 {
	 search=mp_grid_create(0,0,room_width/64,room_height/64,64,64);

	 with(objblock)
	 {
		 mp_grid_add_instances(objbossHud.search,self,true);
	 }
	  with(objhealthup)
	 {
		mp_grid_add_instances(objbossHud.search,self,true);
	 }
	  with(objSuitUp)
	 {
		 mp_grid_add_instances(objbossHud.search,self,true);
	 }
	 with(obj_vdoor){
		mp_grid_add_instances(objbossHud.search,self,true);
	 }
	 with(obj_hdoor){
		mp_grid_add_instances(objbossHud.search,self,true);
	 }
 }
 
 
objBoss.timeline_index=time_healthy;
objBoss.timeline_running=true;
objBoss.timeline_loop=true;