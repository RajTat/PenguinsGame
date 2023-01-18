/// @description place initial pengs

tile = instance_position(mouse_x, mouse_y,Tile);
if (tile != noone && tile.fish == 1 && tile.piece == noone) {
	if (piece.sprite_index == BluePengSprite) {
		placer = BluePeng;
		newpiece = RedPengSprite;
	}
	else if (piece.sprite_index == RedPengSprite) {
		placer = RedPeng;
		if (global.players == 3 || global.players == 4) newpiece = OrangePengSprite;
		else newpiece = BluePengSprite;
	}
	else if (piece.sprite_index == OrangePengSprite) {
		placer = OrangePeng;
		if (global.players == 4) newpiece = GreenPengSprite;
		else newpiece = BluePengSprite;
	}
	else {
		placer = GreenPeng;
		newpiece = BluePengSprite;
	}

	tile.piece = instance_create_depth(tile.x, tile.y, 1, placer);
	tile.piece.tile = tile;
	piece.sprite_index = newpiece;
	
	if (((global.players == 4 || global.players == 2) && instance_number(Penguin) == 8)
		 || ((global.players == 3) && (instance_number(Penguin) == 9))) {
		instance_destroy(piece);
		instance_create_depth(0,0,0,GamePlay);
		instance_destroy(self);
	}
	audio_play_sound(plop,1,0);
}
