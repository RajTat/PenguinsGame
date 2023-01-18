/// @description cancelling

if (instance_exists(GamePlay) && !GamePlay.paused) {
	//if you're selecting a move and you have clicked on the original penuine...
	//cancel your move
	if (instance_exists(GamePlay) && GamePlay.piece != noone && GamePlay.selected == self) {
		instance_destroy(GamePlay.piece);
		GamePlay.piece = noone;
		GamePlay.selected = noone;
	}
}