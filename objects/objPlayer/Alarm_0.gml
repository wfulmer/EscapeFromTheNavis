/// @description Insert description here
// You can write your code in this editor
if((instance_exists(objEnemyBase) || instance_exists(objBoss))&& protagonistState==state.suit){//if enemy is within the room you are in suit ticks down
	suitHealth=suitHealth-suit_tickdown;
}

if(suitHealth<=35) {audio_play_sound(soundwarning,2,false); }
if(suitHealth<=0) 
{
	suitHealth=0;
	removesuit()	
}

switch protagonistState
{
case state.suit	:
 {
	 alarm[0] = 30*1;
	 break;
 }
 

}

