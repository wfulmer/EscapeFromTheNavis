/// @description Insert description here
// You can write your code in this editor
with(other)
{
	objbossHud.boss_hp=objbossHud.boss_hp-objPlayerBullet.bulletDamage;
	
	if(objbossHud.boss_hp<=0) instance_destroy();
	
	
}
instance_destroy()