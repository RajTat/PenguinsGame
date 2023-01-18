/// @description Insert description here
// You can write your code in this editor

if (instance_exists(GamePlay)) {
	if (GamePlay.current == 1) {
		with (BluePeng) {
			if (!unMoveable(tile)) instance_create_depth(x, y, 0, reminder);
		}
	}
	else if (GamePlay.current == 2) {
		with (RedPeng) {
			if (!unMoveable(tile)) instance_create_depth(x,y,0, reminder);	
		}
	}
	else if (GamePlay.current == 3) {
		with (OrangePeng) {
			if (!unMoveable(tile)) instance_create_depth(x,y,0,reminder);	
		}
	}
	else {
		with (GreenPeng) {
			if (!unMoveable(tile)) instance_create_depth(x,y,0,reminder);	
		}
	}
}
else {
	with (TileOne) {
		if (piece == noone) instance_create_depth(x,y,0,minder);	
	}
}