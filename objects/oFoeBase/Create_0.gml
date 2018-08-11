/// @description

_life = _life_max;

_vx = 0;
_vy = 0;
_wall_push = 1;
_fire_delay = (irandom(_fire_rate-1));

if(variable_global_exists("parent"))
{
	_path = global.parent._path;
	_fire_rate = global.parent._fire_rate;
}


_iframes = 0;
_iframes_max = 5;

