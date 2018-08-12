/// @description

other._current_weapon = _weapon;

instance_destroy();

with(instance_create_depth(x,y-16, depth, oCrateMessage))
{
	_message = "HEAVY GUN";	
}