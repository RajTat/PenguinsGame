/// @description checks to see if a tile is either nonexistant or if it already has a penguin on it
function invalid(argument0) {

	temp = argument0; //tile

	if (temp != noone) {
		if (temp.piece != noone) return true;
	}
	else {
		return true;
	}

	return false;


}
