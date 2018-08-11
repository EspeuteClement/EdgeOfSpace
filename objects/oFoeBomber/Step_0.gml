/// @description

// Inherit the parent event
event_inherited();

if (oGameManager._state != GameState.RUN)
	return;
	
if (_fire_delay <= 0)
{
	with(instance_create_depth(x,y,depth,oFoeBomb))
	{

	}
	_fire_delay = _fire_rate;
}
else
{
	_fire_delay --;	
}