/// @description

x += _vx;
y += _vy;

var player = instance_place(x,y,oShip);
var dmg = _damage;
if (player)
{
	hurt(_damage, player);
	camera_shake(6,6,0.5);
	instance_destroy();
}
