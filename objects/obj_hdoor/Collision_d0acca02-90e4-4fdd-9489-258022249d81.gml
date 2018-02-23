/// @description move player to next room based on where the player collided with it.
//also move view to the next room

if(other.x < x){//if player above the door
	other.x	= other.x + 128;
}else if(other.x > x){//if player is below the door
	other.x	= other.x - 128;
}