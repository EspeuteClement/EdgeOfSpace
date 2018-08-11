/// @function camera_shake(x,y, falloff)
/// @description Shakes the camera
/// @param {real} x
/// @param {real} y
/// @param {real} falloff

with(oCameraManager)
{
	_shake_x = max(argument0, _shake_x);
	_shake_y = max(argument1, _shake_y);
	_falloff = argument2;
}