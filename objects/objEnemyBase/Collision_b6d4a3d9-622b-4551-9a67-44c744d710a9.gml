/// @description jostle eachother- doesn't seem to do anything
var push = 1;
if(instance_exists(objPlayer) && place_free(x-push,y-push))
{
	//distance they will push eachother.
x -= lengthdir_x(push,point_direction(x,y,other.x,other.y));
y -= lengthdir_y(push,point_direction(x,y,other.x,other.y));
}