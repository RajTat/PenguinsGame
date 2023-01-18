/// @description checks valid move for selected tile
function validMove(argument0) {

	targ = argument0;
	original = GamePlay.selected.tile;

	//checking left and right
	if (original.y == targ.y) {
		if (original.x < targ.x) {
			if (original.mr == noone) return false;
			else if (original.mr.piece != noone) return false;
			temp = original.mr;
			while (temp != targ) {
				if (temp.mr == noone) return false
				else if (temp.mr.piece != noone) return false;
				temp = temp.mr;
			}
			if (temp.mr == noone || temp.mr.piece != noone) return true;
			else return false;
		}
		else {
			if (original.ml == noone) return false;
			else if (original.ml.piece != noone) return false;
			temp = original.ml;
			while (temp != targ) {
				if (temp.ml == noone) return false;
				else if (temp.ml.piece != noone) return false;
				temp = temp.ml;
			}
			if (temp.ml == noone || temp.ml.piece != noone) return true;
			else return false;
		}
	}

	else {
		//check lower right
		temp = original.lr;
	
		//there needs to be a tile with no penguins
		if (temp != noone && temp.piece == noone) {
		
			//are we there yet?
			if (temp == targ) {
				//if so, check if this is a valid stopping point:
				//valid move if it is, not valid if it's not
				if (temp.lr == noone || temp.lr.piece != noone) return true;
				else return false;
			}
		
			//keep going if we haven't found our target, until we have
			while (temp != targ && temp != noone && temp.piece == noone) {
				temp = temp.lr;
				//same checks as before
				if (temp == targ && temp.piece == noone) {
					if (temp.lr == noone || temp.lr.piece != noone) return true;
					else return false;
				}		
			}
		}
		//check lower left
		//same checks as above
		temp = original.ll;
		if (temp != noone && temp.piece == noone) {
			if (temp == targ) {
				if (temp.ll == noone || temp.ll.piece != noone) return true;
				else return false;
			}
			while (temp != targ && temp != noone && temp.piece == noone) {
				temp = temp.ll;
				if (temp == targ && temp.piece == noone) {
					if (temp.ll == noone || temp.ll.piece != noone) return true;
					else return false;
				}
			}
		}
		//check upper left
		temp = original.ul;
		if (temp != noone && temp.piece == noone) {
			if (temp == targ) {
				if (temp.ul == noone || temp.ul.piece != noone) return true;
				else return false;
			}
			while (temp != targ && temp != noone && temp.piece == noone) {
				temp = temp.ul;
				if (temp == targ && temp.piece == noone) {
					if (temp.ul == noone || temp.ul.piece != noone) return true;
					else return false;
				}
			}
		}
		//check upper right
		temp = original.ur;
		if (temp != noone && temp.piece == noone) {
			if (temp == targ) {
				if (temp.ur == noone || temp.ur.piece != noone) return true;
				else return false;
			}
			while (temp != targ && temp != noone && temp.piece == noone) {
				temp = temp.ur;
				if (temp == targ && temp.piece == noone) {
					if (temp.ur == noone || temp.ur.piece != noone) return true;
					else return false;
				}
			}
		}
	}
	return false;



}
