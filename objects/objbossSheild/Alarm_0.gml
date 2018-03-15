/// @description Insert description here
with(objbossHud)
{
if(objbossHud.boss_hp<=objbossSheild.starting_point+10)boss_hp=boss_hp+1.5;
}

if(count!=objbossHud.boss_spawners)
{
	alarm[0]=30*1.5;	
	instance_create_layer(x+irandom(150),y+irandom(150),"Instances",objbabyboss)
	count++
	
}



