/// @description kill boss if its health is 0, otherwise deal damage and destroy itself
with(other)
{
	objbossHud.boss_hp=objbossHud.boss_hp-(objPlayerBullet.bulletDamage div 3);
	
	if(objbossHud.boss_hp<=0){ 
		audio_play_sound(boss_death,3,false);
		instance_create_layer(x,y,"Drops",obj_Transporter);
		instance_destroy();
		instance_destroy(objbossHud);
		instance_destroy(obj_shadow_boss);
		instance_destroy(objboss_acid);
		instance_destroy(objboss_radialattck);
		instance_destroy(objbabyboss);
		global.islocked = false;
	}
	
}
instance_destroy()