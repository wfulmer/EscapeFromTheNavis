/// @description Insert description here
// You can write your code in this editor


movement=10; //speed of player
cooldown=0; // cooldown controller of bullet
hp=100;
bulletPath =0; // direction of bullet controller
suitHealth=30;
bulletspeed=16;
fireRate=9;

inventory = ds_map_create();

inventory[? "healthup"]=0;
inventory[? "suitup"]=0;

enum state { 
	
	human,
	suit	
}
protagonistState= state.human
