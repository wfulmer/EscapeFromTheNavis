/// @description Insert description here
// You can write your code in this editor
protagonistState=objHUD.protagonistState;

	if(/*protagonistState==state.suit &&*/ (instance_exists(objEnemyBase) || instance_exists(objBoss))){//if enemy is within the room you are in suit ticks down
	objHUD.suitHealth=objHUD.suitHealth-objHUD.suit_tickdown;


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

	}