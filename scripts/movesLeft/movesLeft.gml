/// @description checkMoves() for the current player
function movesLeft() {

	if (GamePlay.current == 1) {
		with (BluePeng) {
			if (checkMoves(self) == true) return true;
		}
	}
	else if (GamePlay.current == 2) {
		with (RedPeng) {
			if (checkMoves(self) == true) return true;
		}
	}
	else if (GamePlay.current == 3) {
		with (OrangePeng) {
			if (checkMoves(self) == true) return true;
		}
	}
	else {
		with (GreenPeng) {
			if (checkMoves(self) == true) return true;
		}
	}
	return false;



}
