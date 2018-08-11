/// @description

// Inherit the parent event
event_inherited();

if (oGameManager._state != GameState.RUN)
	return;
	
if (_fire_delay <= 0)
{
	with(instance_create_depth(x,y,depth,oFoeBulletBase))
	{
		var vx = oShip.x - x;
		var vy = oShip.y - y;
		var len = sqrt(vx*vx + vy*vy);
		vx = vx / len;
		vy = vy / len;
		
		_vx = vx * 2.5;
		_vy = vy * 2.5;
	}
	_fire_delay = _fire_rate;
}
else
{
	_fire_delay --;	
}