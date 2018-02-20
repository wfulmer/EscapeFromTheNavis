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


//determine where the rooms will be
room_grid = ds_grid_create(9,9);
var mroom = 5;
var void = 6;
//start from initial room
var rx = 4;
var ry = 4;

room_grid[# rx, ry] = mroom;
//determine how many rooms per branch
var branches = 2;//irandom_range(2,3)
var b1_rooms = 0;
var b2_rooms = 0;
var b3_rooms = 0;
if(branches == 2){
	var diff = irandom_range(5,10);
	b1_rooms = TOTAL_ROOMS - diff;
	b2_rooms = diff;
}else if(branches ==3){//something is wrong here as well
	var diff = irandom_range(5,7);
	b1_rooms = TOTAL_ROOMS - diff;
	b2_rooms = b1_rooms - diff;
	b3_rooms = TOTAL_ROOMS - b2_rooms;
}
var up = false;
var right = false;
var down = false;
var left = false;



for(var i = 0; i<branches; i++){//for each branch
	var curr_limit = 0;
	if(i == 0){
		curr_limit = b1_rooms;
	}else if(i == 1){
		curr_limit = b2_rooms;
	}else if(i == 2){
		curr_limit = b3_rooms;
	}
	rx = 4;
	ry = 4;
	var curr_rooms = 0;
	//make sure branches don't get the same initial direction
	var bup = false;
	var bright = false;
	var bdown = false;
	var bleft = false;
	var bdirposs = true;
	
	while(bdirposs){//this makes it so there aren't repeats, but is inefficient
		var bdir = irandom_range(0,3);//maybe could make this simpler by generating a random sequence?
		if(bdir == 0 && bup == false){
			bup = true;
			bdirposs = false;
		}else if(bdir == 1 && bright == false){
			bright = true;
			bdir = false;
		}else if(bdir == 2 && bdown == false){
			bdown = true;
			bdirposs = false;
		}else if(bdir == 3 && bleft == false){
			bleft = false;
			bdirposs = false;
		}
	}
	
	while(curr_rooms < curr_limit){//create the branch TODO: figure out what is causing the crashes!!!
		var rdir = irandom_range(0,3);
		if(curr_rooms == 0){
			rdir = bdir;
		}
		
			if(rdir == 0 && up == false && ry != 0 && room_grid[# rx, ry-1] != mroom){
				room_grid[# rx, ry-1] = mroom;
				up = false;
				right = false;
				down = true;
				left = false;
				ry--;
				curr_rooms++;
			}else if(rdir == 1 && right == false && rx != 8 && room_grid[# rx+1, ry] != mroom){
				room_grid[# rx+1, ry] = mroom;
				up = false;
				right = false;
				down = false;
				left = true;
				rx++;
				curr_rooms++;
			}else if(rdir == 2 && down == false && ry != 8 && room_grid[# rx, ry+1] != mroom){
				room_grid[# rx, ry+1] = mroom;
				up = true;
				right = false;
				down = false;
				left = false;
				curr_rooms++;
				ry++;
			}else if(rdir == 3 && left == false && rx != 0 && room_grid[# rx-1, ry] != mroom){
				room_grid[# rx-1, ry] = mroom;
				up = false;
				right = true;
				down = false;
				left = false;
				curr_rooms++;
				rx--;
			}
	}
}




for(var i = 0; i<9; i++){//iterate through room_grid to draw rooms and hallways
	for(var j = 0; j<9; j++){
		
		var x_off = j*12+1;
		var y_off = i*8+1;
		cx = x_off;
		cy = y_off;
		if(room_grid[# j, i] == mroom){
			for(var ry = 0; ry <MROOM_HEIGHT; ry++){
			for(var rx = 0; rx <MROOM_WIDTH; rx++){
				grid[# cx, cy] = FLOOR;
				cx++;
			}
			cx = cx-MROOM_WIDTH;
			cy++;
			}
			cy= cy - (MROOM_HEIGHT); //cx cy are now back to top left corner of room
			//make hallways MAKE SURE TO KEEP WITHIN BOUNDS OF GRID!
			//grid[# cx+5, cy+MROOM_HEIGHT] = FLOOR;//create a hallway
			//if there is a room above
			//if there is a room to the right
			//if there is a room below
			//if there is a room to the left
		}
	}
}



for(var yy = 1; yy<height-1; yy++){//iterate through entire grid except the 1 tile outside border to add walls
	for(var xx = 1; xx<width-1; xx++){
		
		if(grid[# xx, yy] == FLOOR){//check if surrounding tiles are void, if so set as wall
			if(grid[# xx+1, yy] != FLOOR) grid[# xx+1, yy] = WALL;//could have 4 wall constants for each wall tile type
			if(grid[# xx-1, yy] != FLOOR) grid[# xx-1, yy] = WALL;
			if(grid[# xx, yy+1] != FLOOR) grid[# xx, yy+1] = WALL;
			if(grid[# xx, yy-1] != FLOOR) grid[# xx, yy-1] = WALL;
			if(grid[# xx+1, yy+1] != FLOOR ) grid[# xx+1, yy+1] = WALL;
			if(grid[# xx-1, yy-1] != FLOOR) grid[# xx-1, yy-1] = WALL;
			if(grid[# xx+1, yy-1] != FLOOR) grid[# xx+1, yy-1] = WALL;
			if(grid[# xx-1, yy+1] != FLOOR) grid[# xx-1, yy+1] = WALL;
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

