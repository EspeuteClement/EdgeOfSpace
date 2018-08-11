/// @description

if (oGameManager._state != GameState.RUN)
	return;
	
_k_left		= keyboard_check(vk_left);
_k_right	= keyboard_check(vk_right);
_k_up		= keyboard_check(vk_up);
_k_down		= keyboard_check(vk_down);
_k_fire		= keyboard_check(vk_space);
_k_action	= keyboard_check(vk_lshift);


_vx = (_k_right - _k_left)	* _speed_x;
_vy = (_k_down - _k_up)		* _speed_y;

if (_fire_timer <= 0)
{
	if (_k_fire)
	{
		instance_create_depth(x + 16, y, depth, oBullet);	
		_fire_timer = _fire_rate;
	}
}
else
{
	_fire_timer --;	
}

x += _vx;
y += _vy;
