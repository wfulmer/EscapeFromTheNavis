/// @description create the level
randomize();//randomize so it isn't the same pattern each time

//layouts: I hard code each one into a grid for use later
lay_grid = ds_grid_create(9,1);

temp_layout = ds_grid_create(MROOM_WIDTH+2,MROOM_HEIGHT+2);

for(var j = 0; j<MROOM_HEIGHT+2; j++){ //fill with void cells
	for(var i = 0; i<MROOM_WIDTH+2; i++){
		temp_layout[# i,j] = VOID;
		if( j == 3 && i>0 && i<10){//then insert the layout
			temp_layout[# i, j] = OBSTACLE;
		}
		if(i == 5 && j>0 && j<6){
			temp_layout[# i, j] = OBSTACLE;
		}
	}
}
lay_grid[# 0, 0] = temp_layout;
temp_layout = ds_grid_create(MROOM_WIDTH+2,MROOM_HEIGHT+2);
for(var j = 0; j<MROOM_HEIGHT+2; j++){ //fill with void cells
	for(var i = 0; i<MROOM_WIDTH+2; i++){
		temp_layout[# i,j] = VOID;
		if( (j <2 && i<4) || (j<2 && i>6)){//then insert the layout
			temp_layout[# i, j] = OBSTACLE;
		}
		if((j>4 && i<4) || (j>4 && i>6)){
			temp_layout[# i, j] = OBSTACLE;	
		}
	}
}
lay_grid[# 1,0] = temp_layout;

//set the grid width and height
var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;

//create grids
grid = ds_grid_create(width,height);
room_grid = ds_grid_create(9,9);
var mroom = 5;
var void = 6;
var smroom = 7;
var bmroom = 8;
//Fill the grid with the void
ds_grid_set_region(grid,0,0,width-1, height-1,VOID);


//"create" the controller in the center of the grid
var cx = width div 2;
var cy = height div 2;

//create the player
instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2,cy*CELL_HEIGHT+CELL_HEIGHT/2,"Instances",objPlayer);


//determine where the rooms will be

//start from initial room
var rx = 4;
var ry = 4;
room_grid[# rx, ry] = smroom;

//determine how many rooms per branch
var branches = irandom_range(2,3);
var b1_rooms = 0;
var b2_rooms = 0;
var b3_rooms = 0;
if(branches == 2){
	var diff = irandom_range(5,10);
	b1_rooms = TOTAL_ROOMS - diff;
	b2_rooms = diff;
}else if(branches ==3){//something is wrong with the math here but whatever
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

	var curr_rooms = 0;
	//make sure branches don't get the same initial direction
	var bup = false;
	var bright = false;
	var bdown = false;
	var bleft = false;
	var bdirposs = true;
	
	while(bdirposs){//this makes it so there aren't repeats, but is inefficient
		var bdir = irandom_range(0,3);
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
	
	//set up a "tries" system
	var tries = 100;
	var j = 0;
	
	do{//create the branch
		var rdir = irandom_range(0,3);
		if(curr_rooms == 0){
			rdir = bdir;
		}
		
			if(rdir == 0 && up == false && ry != 0 && room_grid[# rx, ry-1] != mroom && room_grid[# rx, ry-1] != smroom){
				room_grid[# rx, ry-1] = mroom;
				up = false;
				right = false;
				down = true;
				left = false;
				ry--;
				curr_rooms++;
				j = 0;
			}else if(rdir == 1 && right == false && rx != 8 && room_grid[# rx+1, ry] != mroom && room_grid[# rx+1, ry] != smroom){
				room_grid[# rx+1, ry] = mroom;
				up = false;
				right = false;
				down = false;
				left = true;
				rx++;
				curr_rooms++;
				j = 0;
			}else if(rdir == 2 && down == false && ry != 8 && room_grid[# rx, ry+1] != mroom && room_grid[# rx, ry+1] != smroom){
				room_grid[# rx, ry+1] = mroom;
				up = true;
				right = false;
				down = false;
				left = false;
				curr_rooms++;
				ry++;
				j = 0;
			}else if(rdir == 3 && left == false && rx != 0 && room_grid[# rx-1, ry] != mroom && room_grid[# rx-1, ry] != smroom){
				room_grid[# rx-1, ry] = mroom;
				up = false;
				right = true;
				down = false;
				left = false;
				curr_rooms++;
				rx--;
				j = 0;
			}else{
				j++;	
			}
	}until(curr_rooms == curr_limit || j == tries)
}

//check if the layout is less than TOTAL_ROOMS, if so need to restart room
var tot_rooms = 0;
for(var i = 0; i<9; i++){
	for(var j = 0; j<9; j++){
		if(room_grid[# j, i] == mroom){
			tot_rooms++;
		}
	}
}

if(tot_rooms < TOTAL_ROOMS){
	room_restart();
}
var adj_rooms = 0;
var low_room_x = 0;
var low_room_y = 0;
var low_room_count = 0;
//TODO: assign boss room
for(var i = 0; i<9; i++){//iterate through room grid.
	for(var j = 0; j<9; j++){
		if(room_grid[# j, i] == mroom){//for each room besides the starting room
			//check how many adjacent rooms there are
			if(j>0 && room_grid[# j-1, i] == mroom || room_grid[# j-1, i] == smroom){//room to right?
				adj_rooms++;
			}
			if(j<8 && room_grid[# j+1, i] == mroom || room_grid[# j+1, i] == smroom){//room to left?
				adj_rooms++;
			}
			if(i>0 && room_grid[# j, i-1] == mroom || room_grid[# j, i-1] == smroom){//room above?
				adj_rooms++;
			}
			if(i<8 && room_grid[# j, i+1] == mroom || room_grid[# j, i+1] == smroom){//room below?
				adj_rooms++;
			}
			if(low_room_count == 0){//grab the first room
				low_room_x = j;
				low_room_y = i;
				low_room_count = adj_rooms;
			}
			//update lowest room
			if(adj_rooms <= low_room_count){
				if(adj_rooms < low_room_count){//if there are less connections
					low_room_x = j;
					low_room_y = i;
					low_room_count = adj_rooms;
				}else if(abs(4-low_room_x + 4-low_room_y) < abs(4-j + 4-i)){//if its the same amount of connections, but farther away from the initial room
					low_room_x = j;
					low_room_y = i;
					low_room_count = adj_rooms;
				}
			}
			adj_rooms = 0;
		}
	}
}
//definitely needs testing!!!
room_grid[# low_room_x, low_room_y] = bmroom; //set the room with least connections as the boss room
//(later) make sure the room has no obstacles and spawn the boss there?

for(var i = 0; i<9; i++){//iterate through room_grid to draw rooms and doors
	for(var j = 0; j<9; j++){
		
		var x_off = j*(MROOM_WIDTH+1)+1;
		var y_off = i*(MROOM_HEIGHT+1)+1;
		cx = x_off;
		cy = y_off;
		if(room_grid[# j, i] == mroom || room_grid[# j, i] == smroom || room_grid[# j, i] == bmroom){
			var temp = lay_grid[# irandom(1), 0];//get a random layout
			for(var ry = 0; ry <MROOM_HEIGHT; ry++){
				for(var rx = 0; rx <MROOM_WIDTH; rx++){
					//grid[# cx, cy] = FLOOR;
					if(ry == 0 && rx == 0 && room_grid[# j, i] == mroom){//if in top left corner of room and you aren't in initial room
						instance_create_layer(cx*CELL_WIDTH,cy*CELL_HEIGHT,"Instances", obj_mroom_spawner);//place spawner in top left corner of each room
						//show_debug_message("spawner made");
					}else if (ry == 3 && rx == 4 && room_grid[# j, i] == smroom){
						instance_create_layer(cx*CELL_WIDTH,cy*CELL_HEIGHT,"Instances", obj_tut_writer);//place spawner in top left corner of each room	
					}else if (ry == 0 && rx == 0 &&  room_grid[# j, i] == bmroom){//if top left corner of room and this is boss room 
						instance_create_layer(cx*CELL_WIDTH, cy*CELL_HEIGHT, "Instances", obj_boss_spawner);
					}

					
					if(temp[# rx, ry] == OBSTACLE){ //if its an obstacle, set it as such
						grid[# cx,cy] = OBSTACLE;	
					} else if(temp[# rx, ry] == VOID){ //if it isn't, set it as a floor tile
						grid[# cx, cy] = FLOOR;
					}
					if(room_grid[# j, i] == smroom || room_grid[# j, i] == bmroom){//if starting room
						grid[# cx,cy] = FLOOR;
					}
					cx++;
				}
			cx = cx-MROOM_WIDTH;
			cy++;
			}
			cy= cy - (MROOM_HEIGHT); //cx cy are now back to top left corner of room
			
			//if there is a room above
			if(i != 0 && (room_grid[# j, i-1] == mroom || room_grid[# j, i-1] == smroom)){
				grid[# cx+5, cy-1] = VDOOR;//make hallway was FLOOR
			}
			//if there is a room to the right
			if(j!= 8 && (room_grid[# j+1, i] == mroom || room_grid[# j+1, i] == smroom)){
				grid[# cx+MROOM_WIDTH, cy+(MROOM_HEIGHT div 2)] = HDOOR;//make hallway
			}
			//if there is a room below
			if(i != 8 && (room_grid[# j, i+1] == mroom || room_grid[# j, i+1] == smroom)){
				grid[# cx+(MROOM_WIDTH div 2), cy+MROOM_HEIGHT] = VDOOR;//make hallway
			}
			//if there is a room to the left
			if(j != 0 && (room_grid[# j-1, i] == mroom || room_grid[# j-1, i] == smroom)){
				grid[# cx-1, cy+(MROOM_HEIGHT div 2)] = HDOOR;//make hallway
			}
			//add boss room doors here
		}
	}
}



for(var ry = 1; ry<height-1; ry++){//iterate through entire grid except the 1 tile outside border to add walls
	for(var rx = 1; rx<width-1; rx++){
		
		if(grid[# rx, ry] == FLOOR){//check if surrounding tiles are void, if so set as wall
			if(grid[# rx+1, ry] != FLOOR && grid[# rx+1, ry] != VDOOR && grid[# rx+1, ry] != HDOOR && grid[# rx+1, ry] != OBSTACLE) grid[# rx+1, ry] = WALL;//could have 4 wall constants for each wall tile type
			if(grid[# rx-1, ry] != FLOOR && grid[# rx-1, ry] != VDOOR && grid[# rx-1, ry] != HDOOR && grid[# rx-1, ry] != OBSTACLE) grid[# rx-1, ry] = WALL;
			if(grid[# rx, ry+1] != FLOOR && grid[# rx, ry+1] != VDOOR && grid[# rx, ry+1] != HDOOR && grid[# rx, ry+1] != OBSTACLE) grid[# rx, ry+1] = WALL;
			if(grid[# rx, ry-1] != FLOOR && grid[# rx, ry-1] != VDOOR && grid[# rx, ry-1] != HDOOR  && grid[# rx, ry-1] != OBSTACLE) grid[# rx, ry-1] = WALL;
			if(grid[# rx+1, ry+1] != FLOOR && grid[# rx+1, ry+1] != VDOOR && grid[# rx+1, ry+1] != HDOOR && grid[# rx+1, ry+1] != OBSTACLE) grid[# rx+1, ry+1] = WALL;
			if(grid[# rx-1, ry-1] != FLOOR && grid[# rx-1, ry-1] != VDOOR && grid[# rx-1, ry-1] != HDOOR && grid[# rx-1, ry-1] != OBSTACLE) grid[# rx-1, ry-1] = WALL;
			if(grid[# rx+1, ry-1] != FLOOR && grid[# rx+1, ry-1] != VDOOR && grid[# rx+1, ry-1] != HDOOR && grid[# rx+1, ry-1] != OBSTACLE) grid[# rx+1, ry-1] = WALL;
			if(grid[# rx-1, ry+1] != FLOOR && grid[# rx-1, ry+1] != VDOOR && grid[# rx-1, ry+1] != HDOOR && grid[# rx-1, ry+1] != OBSTACLE) grid[# rx-1, ry+1] = WALL;
		}
	}
}

global.back_layer = layer_create(2);
global.back_tilemap = layer_tilemap_create(global.back_layer,0,0,tileset1,room_width,room_height);

for(var ry = 0; ry<height; ry++){//iterate through entire grid to draw tiles
	for(var rx = 0; rx<width; rx++){
		if(grid[# rx,ry] == FLOOR){
			tilemap_set_at_pixel(global.back_tilemap,4,rx*CELL_WIDTH,ry*CELL_HEIGHT);
		}else if (grid[# rx, ry] == WALL){
			tilemap_set_at_pixel(global.back_tilemap,1,rx*CELL_WIDTH,ry*CELL_HEIGHT);
			instance_create_layer(rx*CELL_WIDTH+CELL_WIDTH/2,ry*CELL_HEIGHT+CELL_HEIGHT/2,"Obstacles",objblock);//add a block object
		}else if (grid[# rx, ry] == VDOOR){
			tilemap_set_at_pixel(global.back_tilemap,10,rx*CELL_WIDTH,ry*CELL_HEIGHT);
			instance_create_layer(rx*CELL_WIDTH+CELL_WIDTH/2,ry*CELL_HEIGHT+CELL_HEIGHT/2,"Obstacles",obj_vdoor);//add a door object	
		}else if (grid[# rx, ry] == HDOOR){
			tilemap_set_at_pixel(global.back_tilemap,11,rx*CELL_WIDTH,ry*CELL_HEIGHT);
			instance_create_layer(rx*CELL_WIDTH+CELL_WIDTH/2,ry*CELL_HEIGHT+CELL_HEIGHT/2,"Obstacles",obj_hdoor);//add a door object	
		}else if (grid[# rx, ry] == OBSTACLE){
			//tilemap_set_at_pixel(global.back_tilemap,12,rx*CELL_WIDTH,ry*CELL_HEIGHT);
			instance_create_layer(rx*CELL_WIDTH+CELL_WIDTH/2,ry*CELL_HEIGHT+CELL_HEIGHT/2,"Instances",objblock);
		}
	}
}
//create the camera
//view_camera[0] = camera_create_view(3072,2048,832,576,0,0,-1,-1,190,90)
ds_grid_destroy(room_grid);
ds_grid_destroy(grid);
//Set global variables????
global.islocked = true;