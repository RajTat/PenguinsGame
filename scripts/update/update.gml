/// @description makes a move official and updates the game
function update(argument0) {

	me = argument0; //must be a tile

	//move the selected penguin to this tile
	GamePlay.selected.x = me.x;
	GamePlay.selected.y = me.y;

	//the tile's piece becomes the selected piece
	me.piece = GamePlay.selected;

	//keep track of the tile
	//(necessary because the piece will be destroyed soon)
	temp = me.piece.tile;

	//destroy the piece
	resetSelection(me);

	//destroy the object and surrounding references to it
	if (temp.ur != noone) temp.ur.ll = noone;
	if (temp.mr != noone) temp.mr.ml = noone;
	if (temp.lr != noone) temp.lr.ul = noone;
	if (temp.ul != noone) temp.ul.lr = noone;
	if (temp.ml != noone) temp.ml.mr = noone;
	if (temp.ll != noone) temp.ll.ur = noone;
	instance_destroy(temp);



	//update the score
	GamePlay.scores[GamePlay.current] += me.fish;

	//increment the player
	//skip players without any moves remaining
	guy = GamePlay.current;
	nextPlayer();
	while (!movesLeft() && instance_exists(Penguin)) {
		nextPlayer();

		//end the game
		if (guy = GamePlay.current && !movesLeft()) {
			GamePlay.winner = getWinner();
			with (Penguin) {
				
				noob = instance_create_depth(self.x,self.y,1,Icon);
				if (self.object_index = BluePeng) {
					if (GamePlay.winner = 1) noob.sprite_index = blueWin;
					else			noob.sprite_index = blueLoss;
				}
				else if (self.object_index = RedPeng) {
					if (GamePlay.winner = 2) noob.sprite_index = redWin;
					else			noob.sprite_index = redLoss;
				}
				else if (self.object_index = OrangePeng) {
					if (GamePlay.winner = 3) noob.sprite_index = orangeWin;
					else			noob.sprite_index = orangeLoss;
				}
				else if (self.object_index = GreenPeng) {
					if (GamePlay.winner = 4) noob.sprite_index = greenWin;
					else			noob.sprite_index = greenLoss;
				}
				
				instance_destroy(self)
			}
			with (Tile) piece = noone;
			instance_create_depth(810,25,0,PlayAgain);
			instance_destroy(Restart); //gets replaced with play again
			instance_destroy(question);
			audio_stop_all();
			audio_play_sound(victory,1,0);
			//game has ended
		} //end checking for current player's ability to move
	} //end checking for next player's ability to move



}
