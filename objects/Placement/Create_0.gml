/// @description create an initial icon

piece = instance_create_depth(mouse_x, mouse_y, 0, Icon);

instance_create_depth(825,25,0,Restart);

audio_stop_all();
audio_play_sound(snowsong,1,1);