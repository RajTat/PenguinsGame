/// @description updates the tile highlight
function mouse_enter(argument0) {

	me = argument0; //must be a tile

	//if the game has started, and a selection is active...
	//highlight based on move validity
	if (instance_exists(GamePlay) && GamePlay.selected != noone) {
		if (validMove(me)) me.image_index = 2;
		else				 me.image_index = 1;
	}

	//if the game has started, and there is a penguin on the tile...
	//highlight validity based on player turn
	else if (instance_exists(GamePlay) && me.piece != noone) {
		// invalid if there aren't any possible moves
		if (unMoveable(me)) me.image_index = 1; //invalid because the piece has no legal moves
		else if ((GamePlay.current == 1 && me.piece.object_index == BluePeng)   ||
		    (GamePlay.current == 2 && me.piece.object_index == RedPeng)    ||
			(GamePlay.current == 3 && me.piece.object_index == OrangePeng) ||
			(GamePlay.current == 4 && me.piece.object_index == GreenPeng))
			{me.image_index = 2;} //valid to move because it is your piece
		else me.image_index = 1;  //invalid because it's not your piece
	}

	//if the game has started...
	else if (instance_exists(GamePlay)) {
		me.image_index = 1; //invalid because there's no piece to move
	}

	//if the game hasn't started aka placement mode, and there's no piece placed there...
	//highlight for being a one-fish
	else {
		if (me.fish == 1 && me.piece == noone) image_index = 2;
		else								me.image_index = 1; //you can only place on one-fish pieces
	}


}
