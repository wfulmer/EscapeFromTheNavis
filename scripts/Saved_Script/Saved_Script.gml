/// @description create the level
//set the grid width and height
var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;

//create grid
grid = ds_grid_create(width,height);

//Fill the grid with the void
ds_grid_set_region(grid,0,0,width-1, height-1,VOID);//grid, two corners to fill: top left to bottom right.


//Randomize the world
randomize();

//"create" the controller in the center of the grid
var cx = width div 2;
var cy = height div 2;

//create the player
instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2,cy*CELL_HEIGHT+CELL_HEIGHT/2,"Instances",obj_player);

//create the initial room
cx = cx-5;
cy = cy-3;

var start_x = cx;//to be able to find starting room again
var start_y = cy;

for(var ry = 0; ry<MROOM_HEIGHT; ry++){
	for(var rx = 0; rx <MROOM_WIDTH; rx++){
		grid[# cx, cy] = FLOOR;
		cx++;
	}
	cx = cx-MROOM_WIDTH;
	cy++;
}
	cy= cy - (MROOM_HEIGHT);
	var rooms = 1;
//keep track of if the room has neighboring rooms
var up = false;
var right = false;
var left = false;
var down = false;

//pick how many branches there are and how many rooms each will have
var branches = irandom_range(2,3);
var b1_rooms = 0;
var b2_rooms = 0;
var b3_rooms = 0;
if(branches == 2){
	var diff = irandom_range(5,12);
	b1_rooms = TOTAL_ROOMS - diff;
	b2_rooms = diff;
}else if(branches ==3){
	var diff = irandom_range(5,8);
	b1_rooms = TOTAL_ROOMS - diff;
	b2_rooms = TOTAL_ROOMS - (2*diff);
	b3_rooms = TOTAL_ROOMS-b2_rooms;
}



do{
	//random side of this room
	//	0
	//3	  1
	//	2
	var cdir = irandom(3);

	//create a room
	if(cdir == 0 && up == false){
		up = false;
		right = false;
		left = false;
		down = true;
		//move controller to the top left of where the new miniroom will be
		cy = cy-(MROOM_HEIGHT+1); //move up 7 *2 +1 cells
		//create room
		for(var ry = 0; ry<MROOM_HEIGHT; ry++){
		for(var rx = 0; rx <MROOM_WIDTH; rx++){
			grid[# cx, cy] = FLOOR;
			cx++;
		}
		cx = cx-MROOM_WIDTH;
		cy++;
		}
		cy= cy - (MROOM_HEIGHT);
		grid[# cx+5, cy+MROOM_HEIGHT] = FLOOR;//create a hallway
		rooms++;
		
	}else if(cdir == 1 && right == false){
		up = false;
		right = false;
		left = true;
		down = false;
	
		cx = cx+MROOM_WIDTH+1;//move right 11 cells
		//create room
		for(var ry = 0; ry<MROOM_HEIGHT; ry++){
		for(var rx = 0; rx <MROOM_WIDTH; rx++){
			grid[# cx, cy] = FLOOR;
			cx++;
		}
		cx = cx-MROOM_WIDTH;
		cy++;
		}
		cy= cy - (MROOM_HEIGHT);
		grid[# cx-1, cy+3] = FLOOR;//create a hallway
		rooms++;
		
	}else if(cdir == 2 && down = false){
		up = true;
		right = false;
		left = false;
		down = false;
	
		cy = cy+ MROOM_HEIGHT +1; //move down 15
		//create room
		for(var ry = 0; ry<MROOM_HEIGHT; ry++){
		for(var rx = 0; rx <MROOM_WIDTH; rx++){
			grid[# cx, cy] = FLOOR;
			cx++;
		}
		cx = cx-MROOM_WIDTH;
		cy++;
		}
		cy= cy - (MROOM_HEIGHT);
		grid[# cx+5, cy-1] = FLOOR;//create a hallway
		rooms++;
		
	}else if(cdir == 3 && left == false){
		up = false;
		right = true;
		left = false;
		down = false;
	
		cx = cx- (MROOM_WIDTH+1);//move left 12 cells
		//create room
		for(var ry = 0; ry<MROOM_HEIGHT; ry++){
		for(var rx = 0; rx <MROOM_WIDTH; rx++){
			grid[# cx, cy] = FLOOR;
			cx++;
		}
		cx = cx-MROOM_WIDTH;
		cy++;
		}
		cy= cy - (MROOM_HEIGHT);
		grid[# cx+MROOM_WIDTH, cy+3] = FLOOR;//create a hallway
		rooms++;
		
	}
}until(rooms == TOTAL_ROOMS);

/*
var cdir = irandom(3);

//the odds variable for changing direction
var odds = 1;

//create the level using 1000 steps
repeat (1000){
	//place a floor tile at the controller's position using an accessor alternatively could use ds_grid_set(grid, cx, cy, FLOOR);
	grid[# cx, cy] = FLOOR;
	
	//Randomize direction of controller
	if(irandom(odds) == odds){
		cdir = irandom(3);	
	}
	
	//move the controller
	var xdir = lengthdir_x(1,cdir*90);//degree directions 0, 90, 180, 270
	var ydir = lengthdir_y(1,cdir*90);//degree directions
	
	cx += xdir;
	cy += ydir;
	
	//make sure we don't move outside the grid
	cx = clamp(cx, 1, width-2);
	cy = clamp(cy, 1, height-2);
}
*/
for(var yy = 1; yy<height-1; yy++){//iterate through entire grid except 1 tile outside border to add walls
	for(var xx = 1; xx<width-1; xx++){
		
		if(grid[# xx, yy] == FLOOR){//check if surrounding tiles are void, if so set as wall
			if(grid[# xx+1, yy] != FLOOR) grid[# xx+1, yy] = WALL;
			if(grid[# xx-1, yy] != FLOOR) grid[# xx-1, yy] = WALL;
			if(grid[# xx, yy+1] != FLOOR) grid[# xx, yy+1] = WALL;
			if(grid[# xx, yy-1] != FLOOR) grid[# xx, yy-1] = WALL;
		}
	}
}

global.back_layer = layer_create(1);
global.back_tilemap = layer_tilemap_create(global.back_layer,0,0,tileset1,room_width,room_height);

for(var yy = 0; yy<height; yy++){//iterate through entire grid to draw tiles
	for(var xx = 0; xx<width; xx++){
		if(grid[# xx,yy] == FLOOR){
			tilemap_set_at_pixel(global.back_tilemap,4,xx*CELL_WIDTH,yy*CELL_HEIGHT);//might need to multiply by cell width and height respectively.
			//consider also changing the constants to 128 by 128?
		}
		else if (grid[# xx, yy] == WALL){
			tilemap_set_at_pixel(global.back_tilemap,1,xx*CELL_WIDTH,yy*CELL_HEIGHT);
		}
	}
}

//ds_grid_destroy(grid);