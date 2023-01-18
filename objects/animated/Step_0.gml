/// @description updates pos


dist = 10;
if (y != ty) dist = 6; // slower going diagonal
diffx = tx - x;
diffy = ty - y;

//record positive difference in x and y vector
if (diffx != 0) xdir = abs(diffx)/diffx;
else xdir = 0;

if (diffy != 0) ydir = abs(diffy)/diffy;
else ydir = 0;

//update pos
x += xdir*dist;
y += round(ydir*sqrt(3)*dist);

//if we're close enough, finish moving
//move the piece, unpause, self destruct
if (close()) {
	update(target);
	GamePlay.paused = false;
	temp = instance_position(mouse_x,mouse_y,Tile);
	
	//if the tile we left behind is alone, get rid of it
	if (temp != noone) mouse_enter(temp);
	with (Tile) {
			if (y > 300 && y < 400) instance_destroy(self);
	}
	with (Tile) {
		if (alone() && instance_exists(Penguin)) instance_destroy(self);
		else {
			ds_list_clear(GamePlay.unearthed);
			ds_list_add(GamePlay.unearthed, self);
			if (!searchParty(self)) {
				ds_list_clear(GamePlay.unearthed);
				destroyIslands(self);
			}
		}
	}
	audio_play_sound(boing,1,0);
	instance_destroy(self);
}
