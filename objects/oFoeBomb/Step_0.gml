/// @description

// Inherit the parent event
event_inherited();


if (abs(_vx) < 0.02 && abs(_vy) < 0.02)
{
	instance_destroy();	
}


_vx *=0.95;
_vy *=0.95;