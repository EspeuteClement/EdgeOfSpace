/// @description

var key_goto_next = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);

if (room == rTitle && key_goto_next)
{
	room_goto_next();
	_state = GameState.RUN;
	var mus = audio_play_sound(snTheme, 1, true);
	audio_sound_gain(mus, 0,0);
	audio_sound_gain(mus, 1.0,1000);

}