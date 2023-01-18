/// @description fade

if (beegin.ready) {
	image_alpha -= .01;
	audio_sound_gain(bgin, audio_sound_get_gain(bgin)-.004, 0);
	audio_sound_gain(opn, audio_sound_get_gain(opn)-.004, 0);
}
