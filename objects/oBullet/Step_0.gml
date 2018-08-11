/// @description

if (oGameManager._state != GameState.RUN || !_is_active)
	return;
	
if (bbox_left > room_width)
	instance_destroy(self, false);

if (image_index > (image_number - 1))
	image_speed = 0.0;
	
var col = instance_place(x,y, oFoeBase)
if (col)
{
	var dmg = _dammage;
	with(col)
	{
		_life -= dmg;
	}	
	instance_destroy(self);
}

x += _vx;