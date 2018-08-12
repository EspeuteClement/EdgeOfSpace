/// @description Enum and init

enum GameState
{
	PAUSED,
	RUN,
	PAUSE,
	GAME_OVER,
};

_snd_music_muted = 0;
_snd_music = 0;


_state = GameState.PAUSE;
