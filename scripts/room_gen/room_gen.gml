
room_grid = ds_grid_create(9,9);
var mroom = 5;
var void = 6;
//start from initial room
rx = 5;
ry = 5;

room_grid[# rx, ry] = mroom;

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
	while(curr_rooms < curr_limit){
		var rdir = irandom_range(0,3);
		if(rdir == 0 && up == false){
			room_grid[# rx, ry-1] = mroom;
			up = false;
			right = false;
			down = true;
			left = false;
			curr_rooms++;
		}else if(rdir == 1 && right == false){
			room_grid[# rx+1, ry] = mroom;
			up = false;
			right = false;
			down = false;
			left = true;
			curr_rooms++;
		}else if(rdir == 2 && down == false){
			room_grid[# rx, ry+1] = mroom;
			up = true;
			right = false;
			down = false;
			left = false;
			curr_rooms++;
		}else if(rdir == 3 && left == false){
			room_grid[# rx-1, ry] = mroom;
			up = false;
			right = true;
			down = false;
			left = false;
			curr_rooms++;
		}
	}
}