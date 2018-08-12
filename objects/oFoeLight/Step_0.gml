/// @description

// Inherit the parent event
event_inherited();

if (oGameManager._state == GameState.PAUSE)
	return;
	
if (_fire_delay <= 0)
{
	with(instance_create_depth(x,y,depth,oFoeBulletBase))
	{
		_vx = lengthdir_x(3.5, 180);
		_vy = lengthdir_y(3.5, 180);
	}
	
	with(instance_create_depth(x,y,depth,oFoeBulletBase))
	{
		_vx = lengthdir_x(3.5, 150);
		_vy = lengthdir_y(3.5, 150);
	}
	
	with(instance_create_depth(x,y,depth,oFoeBulletBase))
	{
		_vx = lengthdir_x(3.5, 210);
		_vy = lengthdir_y(3.5, 210);
	}
	
	foe_sound_fire(1.2);

	
	with(oFoeBasic)
	{
		_fire_delay += 5;	
	}
	_fire_delay = _fire_rate;
	
	
}
else
{
	_fire_delay --;	
}