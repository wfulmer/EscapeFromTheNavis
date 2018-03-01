/// @description Insert description here
// You can write your code in this editor

//human stats
movement=4; //speed of player
cooldown=0; // cooldown controller of bullet
hp=100;
bulletPath =0; // direction of bullet when spawned
bulletspeed=6;
fireRate=20;

//suit stats
suitHealth=0;
suit_movement = movement*2;
suit_bspeed = bulletspeed*1.5;
suit_frate = fireRate - (fireRate div 2);
suit_tickdown = 15;

//current stats
curr_movement = movement;
//curr_cooldown = cooldown;
curr_bulletspeed = bulletspeed;
curr_firerate = fireRate;


inventory = ds_map_create();

inventory[? "healthup"]=0;
inventory[? "suitup"]=0;

enum state { 
	
	human,
	suit	
}
protagonistState= state.human
