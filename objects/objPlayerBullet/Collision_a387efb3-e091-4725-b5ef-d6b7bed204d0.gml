/// @description deal damage, destroy itself, and destroy enemy if lethal

	with(other)
{
	enemy_base_health=enemy_base_health-objPlayerBullet.bulletDamage;
	
	if (enemy_base_health<=0) 
	{
		instance_destroy();
		audio_play_sound(soundenemydies,0,false);
	}
}
instance_destroy();
