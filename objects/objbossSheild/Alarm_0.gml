/// @description Insert description here
with(objbossHud)
{
if(objbossHud.boss_hp<=objbossSheild.starting_point+15)boss_hp=boss_hp+3;
}

if(count!=objbossHud.boss_spawners)
{
	alarm[0]=30*1.5;	
	instance_create_layer(x+irandom(20),y+irandom(20),"Instances",objbabyboss)
	count++
	
}



