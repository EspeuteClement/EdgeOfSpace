/// @description

// Inherit the parent event
event_inherited();

if (oGameManager._state == GameState.PAUSE)
	return;
	
if (_fire_delay <= 0 && instance_number(oShip) > 0)
{
	with(instance_create_depth(x,y,depth,oFoeBomb))
	{

	}
	foe_sound_fire(0.7);
	_fire_delay = _fire_rate;
}
else
{
	_fire_delay --;	
}