///grid_place_meeting(x,y)
var xx = argument [0];
var yy = argument [1];

//remember our position
var xp = x;
var yp = y;

//update the position for the collision calculations
x = xx;
y = yy;

//check for an x meeting
var x_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) ||
				(Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);
				
var y_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) ||
				(Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);
				
var center_meeting = Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;
//move back
x = xp;
y = yp;

return x_meeting || y_meeting || center_meeting;