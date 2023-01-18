/// @description destroy the piece/icon and clear all references to it
function resetSelection(argument0) {

	me = argument0;

	instance_destroy(GamePlay.piece);
	GamePlay.piece = noone;
	temp.piece = noone;
	//!!!
	GamePlay.selected.tile = me;
	GamePlay.selected = noone;



}
