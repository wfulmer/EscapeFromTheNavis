if(boss_cooldown<=0)
{
instance_create_layer(x,y,"Lower",objboss_acid);
boss_cooldown=boss_spit_rate;
}
