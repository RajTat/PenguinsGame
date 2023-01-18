/// @description checks for stuck Penguins
function unMoveable(argument0) {

	me = argument0; //must be a tile

	if ((me.ul == noone || me.ul.piece != noone) &&
		(me.ml == noone || me.ml.piece != noone) &&
		(me.ll == noone || me.ll.piece != noone) &&
		(me.ur == noone || me.ur.piece != noone) &&
		(me.mr == noone || me.mr.piece != noone) &&
		(me.lr == noone || me.lr.piece != noone)
	) return true;


}
