/// @description

//if (oGameManager._state != GameState.RUN)
//	return;

if (oGameManager._state == GameState.PAUSE)
	return;

if (oGameManager._state == GameState.GAME_OVER)
{
	_vx +=0.1;	
}
else if (oGameManager._state == GameState.RUN)
{
	_vx = approach(_vx, 0.1 + (x/room_width) * 0.5, 1);

	if (x/room_width > 0.60)
	{
		_vx = 2;
	}
}
else
{
	_vx = 0;	
}

x = clamp(x,0,room_width);

x += _vx;