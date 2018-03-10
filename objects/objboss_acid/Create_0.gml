/// @description Insert description here
// You can write your code in this editor
speed=7;

if(instance_exists(objPlayer))

{
 move_towards_point(objPlayer.x,objPlayer.y,speed)
 direction= point_direction(x,y,objPlayer.x,objPlayer.y)
 image_angle=direction;
 image_index=0;
	
}