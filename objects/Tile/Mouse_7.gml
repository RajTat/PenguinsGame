/// @description trying to move a piece


if (instance_exists(GamePlay) && !GamePlay.paused) {
	//check:
	//game has started
	//nothing is selected
	//there are no penguins at your selection
	//it is a valid move
	if (instance_exists(GamePlay)
	&& GamePlay.piece != noone
	&& !instance_position(mouse_x, mouse_y, Penguin)
	&& validMove(self)) {
	
		audio_play_sound(slip2,1,0);
	
		ani = instance_create_depth(GamePlay.selected.x,GamePlay.selected.y,0,animated);
		ani.tx = x;
		ani.ty = y;
		ani.target = self;
		if		(GamePlay.current == 1) {
			if (ani.y == ani.ty) {
				if (ani.x > ani.tx) ani.sprite_index = bFlopL;
				else				ani.sprite_index = bFlopR;
			}
			else if (ani.y > ani.ty) ani.sprite_index = bFlopU;
			else					 ani.sprite_index = bFlopD;
		}
		else if (GamePlay.current == 2) {
			if (ani.y == ani.ty) {
				if (ani.x > ani.tx) ani.sprite_index = rFlopL;
				else				ani.sprite_index = rFlopR;
			}
			else if (ani.y > ani.ty) ani.sprite_index = rFlopU;
			else					 ani.sprite_index = rFlopD;
			
		}
		else if (GamePlay.current == 3) {
			if (ani.y == ani.ty) {
				if (ani.x > ani.tx) ani.sprite_index = oFlopL;
				else				ani.sprite_index = oFlopR;
			}
			else if (ani.y > ani.ty) ani.sprite_index = oFlopU;
			else					 ani.sprite_index = oFlopD;
		}
		else {
			if (ani.y == ani.ty) {
				if (ani.x > ani.tx) ani.sprite_index = gFlopL;
				else				ani.sprite_index = gFlopR;
			}
			else if (ani.y > ani.ty) ani.sprite_index = gFlopU;
			else					 ani.sprite_index = gFlopD;
		}
		
		//high number image_speed is faster
		//high number distance needs to go slower
		ani.image_speed = 2000/(sqrt(((ani.x-ani.tx) * (ani.x-ani.tx)) + ((ani.y-ani.ty) * (ani.y-ani.ty))));
		if (ani.y != ani.ty) ani.image_speed *= .5;
		
		GamePlay.paused = true;
	}
}