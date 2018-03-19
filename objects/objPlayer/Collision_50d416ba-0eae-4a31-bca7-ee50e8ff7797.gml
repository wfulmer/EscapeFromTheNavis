/// @description increase health by 30

with(objHUD){
	if(hp< 100){
	usehealthpowerup();
	with(objhealthup) instance_destroy();
}

}