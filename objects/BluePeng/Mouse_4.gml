/// @description create an icon

event_inherited();

if (instance_exists(GamePlay) && !GamePlay.paused) {
	//if the game has started and it is player 1's turn and no penguin has been selected...
	//make an icon, set it's sprite, and select the piece as ready to move
	if (instance_exists(GamePlay) && GamePlay.current == 1 && GamePlay.piece == noone) {
		GamePlay.piece = instance_create_depth(mouse_x, mouse_y, 0, Icon);
		GamePlay.piece.sprite_index = BluePengSprite;
		GamePlay.selected = self;
	}
}