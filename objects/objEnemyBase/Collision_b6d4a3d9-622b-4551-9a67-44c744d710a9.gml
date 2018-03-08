/// @description jostle eachother- doesn't seem to do anything
var push = 5;//distance they will push eachother.
x -= lengthdir_x(push,point_direction(x,y,other.x,other.y));
y -= lengthdir_y(push,point_direction(x,y,other.x,other.y));