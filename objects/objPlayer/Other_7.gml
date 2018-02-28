/// @description Insert description here
// You can write your code in this editor
if(hp<=0)instance_destroy();

switch (protagonistState)
{
	case state.suit:
	{
		movement=16;
		bulletspeed=26;
		fireRate=4.5;	
		break;
	}
	
	case state.human:
	{
		movement=10;
		bulletspeed=16;
		fireRate=9;	
		break;
	}
	
}