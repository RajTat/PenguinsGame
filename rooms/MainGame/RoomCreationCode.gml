
obj = ds_list_create();
for (i = 0; i < 10; i++) {
	ds_list_add(obj, TileThree);
}
for (i = 0; i < 20; i++) {
	ds_list_add(obj, TileTwo);
}
for (i = 0; i < 30; i++) {
	ds_list_add(obj, TileOne);
}

randomize();
ds_list_shuffle(obj);

n = 0;
for (i = 0; i < 4; i++) {
	for (j = 0; j < 8; j++) {
		instance_create_depth((j*100)+50,((i*117)*1.4)+60,2,ds_list_find_value(obj,n++))
	}
}

for (i = 0; i < 4; i++) {
	for (j = 0; j < 7; j++) {
		instance_create_depth((j*100)+100,((i*117)*1.4)+117+60-35,2,ds_list_find_value(obj,n++))
	}
}

n = 0;
for (i = 0; i < 60; i++) {
	temp = ds_list_find_index(obj, n++)
	with temp {
		place = instance_position(x-50,y-60,Tile);
		if (place != noone) ul = place;
		place = instance_position(x - 75, y, Tile);
		if (place != noone) ml = place;
		place = instance_position(x-50,y+60,Tile);
		if (place != noone) ll = place;
		place = instance_position(x+50,y-60,Tile);
		if (place != noone) ur = place;
		place = instance_position(x+75,y,Tile);
		if (place != noone) mr = place;
		place = instance_position(x+50,y+60,Tile);
		if (place != noone) lr = place;
	}
}

instance_create_depth(0,0,0,Placement);
