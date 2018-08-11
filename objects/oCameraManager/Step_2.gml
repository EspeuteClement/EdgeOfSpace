/// @description

var _x = x + irandom_range(-_shake_x, _shake_x);
var _y = y + irandom_range(-_shake_y, _shake_y);

if (random(1) < 0.1)
{
	_x += irandom_range(-1,1);
	_y += irandom_range(-1,1);
}

camera_set_view_pos(view_camera[0], _x , _y);

_shake_x = approach(_shake_x, 0, _falloff);
_shake_y = approach(_shake_y, 0, _falloff);
