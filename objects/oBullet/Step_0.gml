/// @description

if (oGameManager._state == GameState.PAUSE)
	return;
	
// Fix web spawn tick
if (!_is_active)
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
		x += 2;
	}
	instance_destroy(self);
	camera_shake(2,2,0.5);
	var sn = audio_play_sound(snHurt, 0, false);
	audio_sound_pitch(sn, random_range(0.8,1.2));
}

x += _vx;
y += _vy;