/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(objPlayer)&&life>0)
{
	instance_create_layer(room_width/2,room_height/2,"Instances",objPlayer);
	if(!instance_exists(objSuit))instance_create_layer(objPlayer.x,objPlayer.y+25,"Instances",objSuit); 
	life=life-1;
}
else
{
	
}
