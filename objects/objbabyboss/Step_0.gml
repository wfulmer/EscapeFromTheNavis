/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
	move_towards_point(objPlayer.x,objPlayer.y,6);
	if(instance_exists(objPlayer)){
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
	}
}