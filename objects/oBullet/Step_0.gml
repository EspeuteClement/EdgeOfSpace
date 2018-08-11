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
	var dmg = _damage;
	hurt(dmg, col);
	with(col)
	{
		x += 4;
	}
	instance_destroy(self);
	camera_shake(2,2,0.5);
}

x += _vx;