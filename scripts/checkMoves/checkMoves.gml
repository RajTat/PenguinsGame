/// @description to see if there is at least one valid move that can be made
function checkMoves(argument0) {

	guy = argument0.tile; //must be a tile

	if (invalid(guy.ul) &&
		invalid(guy.ml) &&
		invalid(guy.ll) &&
		invalid(guy.ur) &&
		invalid(guy.mr) &&
		invalid(guy.lr)) {
			return false;
		}
	return true;


}
