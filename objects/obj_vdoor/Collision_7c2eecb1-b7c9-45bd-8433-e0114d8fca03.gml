/// @description move player to next room based on where the player collided with it.
//also move view to the next room

if(other.y < y){//if player above the door
	other.y	= other.y + 128;
}else if(other.y > y){//if player is below the door
	other.y	= other.y - 128;
}