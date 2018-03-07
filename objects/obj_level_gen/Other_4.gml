/// @description generate the list of possible layouts for each room
lay_list = ds_list_create();

var temp = ds_grid_create(MROOM_WIDTH,MROOM_HEIGHT);

for(var j = 0; j<MROOM_HEIGHT; j++){ //fill with void cells
	for(var i = 0; i<MROOM_HEIGHT; i++){
		temp[# i,j] = VOID;
		if( j == 3){//then insert the layout
			temp[# i, j] = OBSTACLE;
		}
		if(i == 4){
			temp[# i, j] = OBSTACLE;
		}
	}
}
ds_list_add(lay_list,temp);




