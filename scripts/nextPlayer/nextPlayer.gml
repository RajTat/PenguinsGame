/// @description increments player by 1
function nextPlayer() {

	if		(GamePlay.current == 1) GamePlay.current = 2;
	else if (GamePlay.current == 2) {
		if  (global.players > 2)    GamePlay.current = 3;
		else						GamePlay.current = 1;
	}
	else if (GamePlay.current == 3) {
		if  (global.players > 3)    GamePlay.current = 4;
		else						GamePlay.current = 1;
	}
	else							GamePlay.current = 1;


}
