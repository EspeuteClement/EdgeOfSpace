/// @description

// Inherit the parent event
event_inherited();

var dir = random_range(-7,7);
var spd = 10;
_vx = lengthdir_x(spd, dir);
_vy = lengthdir_y(spd, dir);

x += irandom_range(-1,1);