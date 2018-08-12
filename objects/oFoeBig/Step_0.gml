/// @description

// Inherit the parent event
event_inherited();

if (oGameManager._state == GameState.PAUSE)
	return;

if (x < room_width - 32)
{
	_timeline++;
}

if (_timeline >= 0 && _timeline <= 180)
{
	if (_timeline mod 10 == 0)
	{
		foe_sound_fire(1.0);
		var dir = 180 + _timeline;
		with(instance_create_depth(x,y,depth,oFoeBulletBase))
		{
			_vx = lengthdir_x(3,dir);
			_vy = lengthdir_y(3, dir);
		}
		
		var dir = 180 - _timeline;
		with(instance_create_depth(x,y,depth,oFoeBulletBase))
		{
			_vx = lengthdir_x(3,dir);
			_vy = lengthdir_y(3, dir);
		}
	}
}

if (_timeline == 200)
{
	foe_sound_fire(0.6);

	with(instance_create_depth(x,y,depth,oFoeBomb))
	{
		_vy = 3;
	}
		
	with(instance_create_depth(x,y,depth,oFoeBomb))
	{
		_vy = -3;
	}

}

if (_timeline == 260)
{
	_timeline = 0;	
}