/// @description make red

if (go){
	alph *= 1.03;
	draw_set_color(c_red);
	draw_set_alpha(alph);
	draw_roundrect(825, 25, 1025, 108, false);
}

draw_self();