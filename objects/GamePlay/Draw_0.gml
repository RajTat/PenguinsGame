/// @description update score

p1scale = 4;
p2scale = 4;
p3scale = 4;
p4scale = 4;

if (!object_exists(Penguin)) current = getWinner;
if      (current == 1) {
	p1scale = 8;
	//draw_circle_color(940,190,60,c_white,c_white,true);
}else if (current == 2) {
	p2scale = 8;
	//draw_circle_color(940,315,60,c_white,c_white,true);
}else if (current == 3) {
	p3scale = 8;
	//draw_circle_color(940,440,60,c_white,c_white,true);
}else if (current == 4) {
	p4scale = 8;
	//draw_circle_color(940,565,60,c_white,c_white,true);
}



draw_text_transformed_color(900,place1,scores[1],p1scale,p1scale,0,c_blue,c_blue,c_blue,c_blue,1);
draw_text_transformed_color(900,place2,scores[2],p2scale,p2scale,0,c_red,c_red,c_red,c_red,1);
if (global.players > 2) {
draw_text_transformed_color(900,place3,scores[3],p3scale,p3scale,0,c_orange,c_orange,c_orange,c_orange,1);}
if (global.players > 3) {
draw_text_transformed_color(900,place4,scores[4],p4scale,p4scale,0,c_green,c_green,c_green,c_green,1);}
