/// @description

if (oGameManager._state == GameState.PAUSE)
	return;

var deadzone = 0.2;

if (oGameManager._state == GameState.RUN)
{
	_k_left		= keyboard_check(vk_left)	|| gamepad_axis_value(0, gp_axislh) < - deadzone;
	_k_right	= keyboard_check(vk_right)	|| gamepad_axis_value(0, gp_axislh) > deadzone;
	_k_up		= keyboard_check(vk_up)		|| gamepad_axis_value(0, gp_axislv) < - deadzone;
	_k_down		= keyboard_check(vk_down)	|| gamepad_axis_value(0, gp_axislv) > deadzone;
	_k_fire		= keyboard_check(vk_space)	|| gamepad_button_check(0, gp_face1);
	_k_action	= keyboard_check(vk_lshift);
}
else
{
	_k_left		= false;
	_k_right	= false;
	_k_up		= false;
	_k_down		= false;
	_k_fire		= false;
	_k_action	= false;
}



_vx = (_k_right - _k_left);
_vy = (_k_down - _k_up);

var _tmp_speed = _speed;
if (_k_fire)
{
	_tmp_speed =  _speed_fire;
}

_vx = (_k_right - _k_left) * _tmp_speed;
_vy = (_k_down - _k_up) * _tmp_speed;


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


switch (_current_weapon)
{
	case WeaponType.SMALL:
	{
		if (_fire_timer <= 0)
		{
			if (_k_fire)
			{
				instance_create_depth(x + 16, y, depth, oBullet);	
				_fire_timer = _fire_rate;
				var snd = audio_play_sound(snBlaster, 0.1, false);
				audio_sound_pitch(snd, random_range(0.90,1.10));
			}
		}
		else
		{
			_fire_timer --;	
		}
	}break;
	case WeaponType.BIG:
	{
		if (_fire_timer <= 0)
		{
			if (_k_fire)
			{
				instance_create_depth(x + 16, y, depth, oBulletBig);	
				_fire_timer = _fire_rate*1.2;
				var snd = audio_play_sound(snBigFire, 0.1, false);
				audio_sound_pitch(snd, random_range(0.90,1.10));
			}
		}
		else
		{
			_fire_timer --;	
		}
	} break;
	
	case WeaponType.TRIPLE:
	{
		if (_fire_timer <= 0)
		{
			if (_k_fire)
			{
				instance_create_depth(x + 16, y, depth, oBulletTriple);
				
				with(instance_create_depth(x + 16, y, depth, oBulletTriple))
				{
					var spd = _vx;
					_vx = lengthdir_x(spd, 30);
					_vy = lengthdir_y(spd, 30);
				}
				
				with(instance_create_depth(x + 16, y, depth, oBulletTriple))
				{
					var spd = _vx;
					_vx = lengthdir_x(spd, -30);
					_vy = lengthdir_y(spd, -30);
				}
				
				_fire_timer = _fire_rate*1.1;
				var snd = audio_play_sound(snBlaster, 0.1, false);
				audio_sound_pitch(snd, random_range(0.90,1.10));
			}
		}
		else
		{
			_fire_timer --;	
		}
	} break;
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
	camera_shake(20,20,0.4);
	instance_destroy();
	audio_play_sound(snExplose___Ship, 1, false);
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
