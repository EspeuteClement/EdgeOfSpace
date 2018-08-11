/// @description

if (oGameManager._state != GameState.RUN)
	return;

if (path_index == -1)
{
	path_start(_path, 1.0, path_action_stop, false);
	path_speed = _speed;
}

if (_life < 0)
	instance_destroy();


hurt_update();