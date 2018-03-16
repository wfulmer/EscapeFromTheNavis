/// @description Insert description here
// You can write your code in this editor
if(boss_hp>=60 && boss_hp<=80) boss_status=pattern.somewhat_healthy;
if(boss_hp>=40 && boss_hp<60) boss_status=pattern.low_health;
if(boss_hp<40) boss_status=pattern.deseperate_health;

if(init!=boss_status)
{
	switch(boss_status)
	{
		
		case pattern.somewhat_healthy:
		{
			with(objBoss)
			{
				
				
				timeline_index=time_somewhat_healthy;
				timeline_position=0;
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
				timeline_position=0;
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
				timeline_position=0;
				timeline_running=true;
				timeline_loop=true;
				
			}
			init=pattern.deseperate_health;
			break;
		}
		
		
	}
}

alarm[0]=30*2;