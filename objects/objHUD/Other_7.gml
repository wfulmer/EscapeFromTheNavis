/// @description destroys player and sets game over to true
if(hp<=0) 
{
	instance_destroy(objPlayer);
	instance_destroy(obj_player_hurt);
}
if(!instance_exists(objPlayer)&&!instance_exists(obj_player_hurt) )
{
	game_over=true;
}