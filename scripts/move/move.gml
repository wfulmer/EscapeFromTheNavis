//move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

//horizontal collisions
if(grid_place_meeting(x+hspd, y)){
	while(!grid_place_meeting(x+sign(hspd), y)){
		x+=sign(hspd);	
	}
	hspd = 0;
}
//move horizontally
x+= hspd;


//vertical collisons
if(grid_place_meeting(x, y+hspd)){
	while(!grid_place_meeting(x, y+sign(hspd))){
		y+=sign(hspd);	
	}
	vspd = 0;
}
//move vertically
y+=vspd;