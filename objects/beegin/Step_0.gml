/// @description switch sound
// more consistent this way

if (!audio_is_playing(opn) && !audio_is_playing(bgin)) {
	audio_play_sound(bgin,1,1);
	audio_sound_gain(bgin,1,0);
}