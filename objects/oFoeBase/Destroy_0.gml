/// @description

var push = _wall_push;
with(oWall)
{
	x -= push;
}

camera_shake(3,3,0.5);

instance_create_depth(x,y,depth, oExplosion);