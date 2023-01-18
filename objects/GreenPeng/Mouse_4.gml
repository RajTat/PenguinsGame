/// @description create icon

event_inherited();

if (instance_exists(GamePlay) && !GamePlay.paused) {
	if (instance_exists(GamePlay) && GamePlay.current == 4 && GamePlay.piece == noone) {
		GamePlay.piece = instance_create_depth(mouse_x, mouse_y, 0, Icon);
		GamePlay.piece.sprite_index = GreenPengSprite;
		GamePlay.selected = self;
	}
}