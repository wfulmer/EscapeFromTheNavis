/// @description Insert description here
// You can write your code in this editor
enum pattern{  //states that control the boss pattern
healthy,
somewhat_healthy,
low_health,
deseperate_health,

}
boss_hp=150; // health
boss_spawners=5; // how many spawners can the boss make

boss_alive= instance_exists(objBoss)
boss_hiding= instance_exists(objbossSheild) 

boss_status= pattern.healthy
	with(objBoss)
	{
	timeline_index=time_healthy;
	timeline_running=true;
	timeline_loop=true;
	}

	init=pattern.healthy;
			

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
 

 init=false
 
 alarm[0]=30*2;