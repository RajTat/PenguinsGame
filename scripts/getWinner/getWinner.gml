/// @description who won the game?
function getWinner() {

	winners[1] = 1;
	winners[2] = 2;
	winners[3] = 3;
	winners[4] = 4;
	winning = GamePlay.scores[1];
	if (                      GamePlay.scores[2] > winning) {
		winners[2] = 1;
		winners[1] = 2;
		winning = GamePlay.scores[1];}
	if (global.players > 2 && GamePlay.scores[3] > winning) {
		winners[3] = winners[2];
		winners[2] = winners[1];
		winners[1] = 3;
		winning = GamePlay.scores[3];}
	if (global.players > 3 && GamePlay.scores[4] > winning) {
		winners[4] = winners[3];
		winners[3] = winners[2];
		winners[2] = winners[1];
		winners[1] = 4;
		winning = GamePlay.scores[3];}
	
	reOrder();
	return winners[1];




}
