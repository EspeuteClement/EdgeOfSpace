/// @function hurt(damage, target)
/// @description 
/// @param {real} damage
/// @param {id} target

with(argument1)
{
	if (_iframes <= 0)
	{
		_life -= argument0;
		_iframes = _iframes_max;
		
		if (object_index == oShip)
		{
			audio_play_sound(snHurtShip, 1, false);
		}
	}
}