/// @description

if (oGameManager._state != GameState.RUN)
	return;

if (_life < 0)
	instance_destroy();
	
