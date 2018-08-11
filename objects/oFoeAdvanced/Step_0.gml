/// @description

// Inherit the parent event
event_inherited();

if (oGameManager._state != GameState.RUN)
	return;
	
if (_fire_delay <= 0)
{
	if (_burst_frames == 0)
	{
		_burst_frames = _burst_frames_max;
		var vx = oShip.x - x;
		var vy = oShip.y - y;
		var len = sqrt(vx*vx + vy*vy);
		vx = vx / len;
		vy = vy / len;
		
		_lock_x = vx;
		_lock_y = vy;	
	}

		
	if (_burst_frames % _burst_frames_delay == 0)
	{
		with(instance_create_depth(x,y,depth,oFoeBulletBase))
		{
			_vx = other._lock_x * 3;
			_vy = other._lock_y * 3;
		}
		_lock_x*=1.45;
		_lock_y*=1.45;
	}
	
	_burst_frames --;
	if (_burst_frames == 0)
	{
		_fire_delay = _fire_rate;
	}
}
else
{
	_fire_delay --;	
}