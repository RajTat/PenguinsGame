function destroyIslands(argument0) {
	with (argument0) {
		ds_list_add(GamePlay.unearthed, self);
		if (ul != noone) {
			ul.lr = noone;
			if (ds_list_find_index(GamePlay.unearthed, ul) == -1) destroyIslands(ul);
		}
		if (ml != noone) {
			ml.mr = noone;
			if (ds_list_find_index(GamePlay.unearthed, ml) == -1) destroyIslands(ml);
		}
		if (ll != noone) {
			ll.ur = noone;
			if (ds_list_find_index(GamePlay.unearthed, ll) == -1) destroyIslands(ll);
		}
		if (ur != noone) {
			ur.ll = noone;
			if (ds_list_find_index(GamePlay.unearthed, ur) == -1) destroyIslands(ur);
		}
		if (mr != noone) {
			mr.lr = noone;
			if (ds_list_find_index(GamePlay.unearthed, mr) == -1) destroyIslands(mr);
		}
		if (lr != noone) {
			lr.ul = noone;
			if (ds_list_find_index(GamePlay.unearthed, lr) == -1) destroyIslands(lr);
		}
		instance_destroy(self);
	}


}
