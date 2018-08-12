/// @description

var key_goto_next = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);

if(!_snd_music)
{
	_snd_music = audio_play_sound(snTheme, 1, true);
	audio_sound_gain(_snd_music, 0, 0);
}

if (_snd_music_muted == 0)
{
	_snd_music_muted = audio_play_sound(snThemeMuted, 1, true);	
}

if (room == rTitle)
{

}
else
{
	if (_snd_music_muted != 0)
	{
		//audio_sound_gain(_snd_music_muted, 0, 0);
	}
}

if (room == rTitle && key_goto_next)
{
	room_goto_next();
	_state = GameState.RUN;
	audio_sound_set_track_position(_snd_music, audio_sound_get_track_position(_snd_music_muted));
	
	//audio_stop_sound(_snd_music_muted);
	
	audio_sound_gain(_snd_music, 1, 500);
	audio_sound_gain(_snd_music_muted, 0, 500);
	//var mus = audio_play_sound(snTheme, 1, true);
	//audio_sound_gain(mus, 0,0);
	//audio_sound_gain(mus, 1.0,1000);
	
	audio_play_sound(snStart, 1, false);

}

if (keyboard_check_pressed(vk_return) || gamepad_button_check_pressed(0, gp_start))
{
	audio_stop_sound(_snd_music);
	audio_stop_sound(_snd_music_muted);
	
	
	event_perform(ev_create, 0);
	room_goto_previous();
}