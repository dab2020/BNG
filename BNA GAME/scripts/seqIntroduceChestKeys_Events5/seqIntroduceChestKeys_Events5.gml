// Auto-generated stubs for each available event.

function gobacktogamefromchest()
{
	room_goto_previous()
	spawn_x = 3400;
	spawn_y = 250;
	oPlayer.x = spawn_x; // Directly update oPlayer's x
	oPlayer.y = spawn_y; // Directly update oPlayer's y
	if (!audio_is_playing(sndMusic)){
		audio_play_sound(sndMusic, 1, true);
		}
}