/// @description

_life = _life_max;
global._exploded_on_this_frame = false; 

_vx = 0;
_vy = 0;

_path_pos = 0;

_fire_delay = (irandom(_fire_rate-1));

if(variable_global_exists("parent"))
{
	if (global.parent)
	{
		_path = global.parent._path;
		_fire_rate = global.parent._fire_rate;
	}
}


_prev_px = path_get_x(_path, 0);
_prev_py = path_get_y(_path, 0);
_path_speed = _speed / path_get_length(_path);



_iframes = 0;
_iframes_max = 5;

