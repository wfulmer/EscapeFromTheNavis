/// @description Insert description here
// You can write your code in this editor

audio_play_sound(soundbullet,-1,false);

speed=objPlayer.curr_bulletspeed;
direction=objPlayer.bulletPath;
image_angle=direction;

switch objPlayer.protagonistState
{
	case state.human:
	{
		bulletDamage=10;
		break;
	}
	
	case state.suit:
	{
		bulletDamage=20;
		break;
	}
	
	
	
}