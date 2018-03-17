/// @description Insert description here
// You can write your code in this editor
with(other)
{
	boss_shadow_hp=boss_shadow_hp-(objPlayerBullet.bulletDamage);
	
	if(boss_shadow_hp<=0){ 
		objHUD.curr_score = objHUD.curr_score + 20;
		instance_destroy();
			}
	
}
instance_destroy()