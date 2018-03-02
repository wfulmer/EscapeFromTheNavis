/// @description Insert description here
// You can write your code in this editor

	with(other)
{
	enemy_base_health=enemy_base_health-objPlayerBullet.bulletDamage;
	objHUD.scoresofarfar=objHUD.scoresofarfar+1;
	
	if (enemy_base_health<=0) 
	{
		instance_destroy();
		audio_play_sound(soundenemydies,0,false);
		objHUD.scoresofarfar=objHUD.scoresofarfar+5;
	}
}
instance_destroy();
