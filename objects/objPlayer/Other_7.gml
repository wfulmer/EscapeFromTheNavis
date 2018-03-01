/// @description Insert description here
// You can write your code in this editor
if(hp<=0)instance_destroy();

switch (protagonistState)
{
	case state.suit:
	{
		curr_movement = suit_movement;
		curr_bulletspeed = suit_bspeed;
		curr_firerate = suit_frate;
		break;
	}
	
	case state.human:
	{
		curr_movement = movement;
		curr_bulletspeed = bulletspeed;
		curr_firerate = fireRate;	
		break;
	}
	
}
