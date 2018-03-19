/// @description handle suit tickdown if enemy is in room, handle suit falling off

	if((instance_exists(objEnemyBase) || instance_exists(objBoss))&& protagonistState){//if enemy is within the room you are in suit ticks down
	objHUD.suitHealth=objHUD.suitHealth-objHUD.suit_tickdown;
	}

if(objHUD.suitHealth<=35) {audio_play_sound(soundwarning,2,false); }
if(objHUD.suitHealth<=0) 
{
	objHUD.suitHealth=0;
	with(objPlayer)removesuit();
}

switch objHUD.protagonistState
{
case state.suit	:
 {
	 alarm[0] = 30*1.5;
	 break;
 }
}

