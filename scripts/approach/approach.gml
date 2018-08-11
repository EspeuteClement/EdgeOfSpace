/// @function approach(current, target, speed)
/// @description 
/// @param {real} current
/// @param {real} target
/// @param {real} speed

var _current = argument0;
var _target = argument1;
var _speed = argument2;

if (_current > _target)
{
	return max(_current - _speed, _target);
}
else
{
	return min(_current + _speed, _target);
}
