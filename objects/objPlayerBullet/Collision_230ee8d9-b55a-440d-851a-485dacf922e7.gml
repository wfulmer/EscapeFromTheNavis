/// @description Insert description here
// You can write your code in this editor
with(other)
{
	boss_shadow_hp=boss_shadow_hp-(objPlayerBullet.bulletDamage);
	
	if(boss_shadow_hp<=0){ 
		instance_destroy();
			}
	
}
instance_destroy()