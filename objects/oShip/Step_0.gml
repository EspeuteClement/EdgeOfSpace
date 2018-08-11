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

if (_vy != 0)
{
	_turn_timer = min(_turn_timer + 1, _turn_timer_rate * image_number-1);	
	if (_vy > 0)
	{
		_turn_facing = -1;
	}
	else
	{
		_turn_facing = 1;
	}
}
else
{
	_turn_timer = max(_turn_timer - 1, 0);	
}

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

// Check wall

if (bbox_left < oWall.bbox_right)
{
	hurt(1,self);
	camera_shake(7,7,0.5);
}

// Check life
if (_life <= 0)
{
	oGameManager._state = GameState.GAME_OVER;
	instance_destroy();
}

x += _vx;
y += _vy;

x = clamp(x, 8, room_width - 8);
y = clamp(y, 8, room_height - 8);

hurt_update();

_boost_frame += 1/_boost_speed;
if (_boost_frame > sprite_get_number(_boost_image))
{
	_boost_frame -= sprite_get_number(_boost_image);
};
