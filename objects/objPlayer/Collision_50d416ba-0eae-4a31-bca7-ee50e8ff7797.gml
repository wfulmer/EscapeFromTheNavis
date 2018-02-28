/// @description Insert description here
// You can write your code in this editor
inventory[?"healthup"]=inventory[?"healthup"]+1;
audio_play_sound(soundgetpowerup,0,false)
with(other) instance_destroy();