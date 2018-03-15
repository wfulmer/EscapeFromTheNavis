/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(objbabyboss) && count==objbossHud.boss_spawners)
{
	instance_change(objBoss,true);
	with(objbossHud)
	{
		switch(boss_status)
	{
		
		case pattern.somewhat_healthy:
		{
			with(objBoss)
			{
				
				
				timeline_index=time_somewhat_healthy;
				timeline_position=91;
				timeline_running=true;
				timeline_loop=true;
				
			}
			init=pattern.somewhat_healthy;
			break;
		}
		
		case pattern.low_health:
		{
		with(objBoss)
			{
				
				
				timeline_index=time_low_health;
				timeline_position=91;
				timeline_running=true;
				timeline_loop=true;
				
			}
			init=pattern.low_health;
			break;
		}
		
		case pattern.deseperate_health:
		{
			with(objBoss)
			{
				
				
				timeline_index=time_desperate_health;
				timeline_position=91;
				timeline_running=true;
				timeline_loop=true;
				
			}
			init=pattern.deseperate_health;
			break;
		}
		
		
	}
		
	}
}