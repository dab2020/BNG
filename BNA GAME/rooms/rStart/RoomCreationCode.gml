if (!audio_is_playing(sndMusic)){
	audio_play_sound(sndMusic, 1, true);
}



layer_create(-10000, "Textbox");

global.paused = false;