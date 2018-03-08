/// @description update where they face
// You can write your code in this editor
//if(instance_exists(objPlayer))image_angle=point_direction(x,y,objPlayer.x,objPlayer.y)
if(instance_exists(objPlayer)){
	if(objPlayer.x >= x){
		image_xscale = 1;
	}else if(objPlayer.x < x){
		image_xscale = -1;
	}else{
		image_xscale = 1;	
	}
}