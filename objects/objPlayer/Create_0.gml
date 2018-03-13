/// @description Insert description here
// You can write your code in this editor

//human stats
movement=4; //speed of player
cooldown=0; // cooldown controller of bullet
hp=100;
bulletPath =0; // direction of bullet when spawned
bulletspeed=6;
fireRate=10;
human_damage=5;
suit_damage=15;

//suit stats wont not need this

suitHealth=0;
suit_movement = movement + movement/2;
suit_bspeed = bulletspeed*1.5;
suit_frate = fireRate/2;

suit_tickdown = 10;

//current stats
curr_movement = movement;
//curr_cooldown = cooldown;
curr_bulletspeed = bulletspeed;
curr_firerate = fireRate;
curr_damage=human_damage;


inventory = ds_map_create();

inventory[? "healthup"]=0;
inventory[? "suitup"]=0;

enum state { 
	
	human,
	suit	
}
protagonistState= state.human
