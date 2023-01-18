/// @description setup for players

current = 1; //the player whose turn it is
piece = noone; //the icon representing the piece you selected
selected = noone; //the penguine you wish to move

scores[1] = 4;
scores[2] = 4;
if (global.players > 2) {
	scores[3] = 3;
	scores[1]--;
	scores[2]--;
}
if (global.players > 3) {
	scores[4] = 2;
	scores[1]--;
	scores[2]--;
	scores[3]--;
}

instance_create_depth(room_width/2, room_height/2,0,Beginner);

paused = false;


place1 = 130;
place2 = 265;
place3 = 380;
place4 = 495;

unearthed = ds_list_create();