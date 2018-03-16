/// @description Insert description here
// You can write your code in this editor
if(hp<=0) 
{
	instance_destroy(objPlayer);
	instance_destroy(obj_player_hurting);
}
if(!instance_exists(objPlayer)&&!instance_exists(obj_player_hurting) )
{
	game_over=true;
}