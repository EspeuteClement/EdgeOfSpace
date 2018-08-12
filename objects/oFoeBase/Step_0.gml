/// @description

if (oGameManager._state == GameState.PAUSE)
	return;

if (path_index == -1)
{
	//(_path, 1.0, path_action_stop, false);
	//path_speed = _speed;
}

_path_pos = clamp(_path_pos + _path_speed, 0.0, 1.0);
var _nx = path_get_x(_path, _path_pos);
var _ny = path_get_y(_path, _path_pos);

var _dx = _nx - _prev_px;
var _dy = _ny - _prev_py;

x += _dx;
y += _dy;

_prev_px = _nx;
_prev_py = _ny;

if (_life < 0)
	instance_destroy();

if (bbox_right < oWall.x - 16)
{
	instance_destroy(self, false);
	oWall.x ++;
}

// can be true because the value is clamped
if (_path_pos == 1.0)
{
	instance_destroy(self,false);	
}

hurt_update();