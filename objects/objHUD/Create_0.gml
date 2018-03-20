/// @description music, player attributes, set state
persistent=true;

game_over = false;
audio_play_sound(soundmusic,-2,true);

//human stats
movement=4; //speed of player
cooldown=0; // cooldown controller of bullet
hp=100;
bulletPath =0; // direction of bullet when spawned
bulletspeed=8;
fireRate=10;
human_damage=8;
suit_damage=12;


suitHealth=0;
suit_movement = movement + movement/2;
suit_bspeed = bulletspeed*1.5;
suit_frate = (fireRate/3)*2;

suit_tickdown = 10;

//current stats
curr_movement = movement;

curr_bulletspeed = bulletspeed;
curr_firerate = fireRate;
curr_damage=human_damage;
curr_score = 0;

enum state { 
	
	human,
	suit	
}
protagonistState= state.human
//instance_deactivate_region(x-(MROOM_WIDTH*CELL_WIDTH),y-(MROOM_HEIGHT*CELL_HEIGHT),MROOM_WIDTH*3*CELL_WIDTH,MROOM_HEIGHT*3*CELL_HEIGHT,false,true);