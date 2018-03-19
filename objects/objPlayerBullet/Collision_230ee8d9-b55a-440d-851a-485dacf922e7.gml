/// @description deal damage to shadow boss
with(other)
{
	boss_shadow_hp=boss_shadow_hp-(objPlayerBullet.bulletDamage);
	
	if(boss_shadow_hp<=0){ 
		objHUD.curr_score = objHUD.curr_score + 20;
		instance_destroy();
			}
	
}
instance_destroy()