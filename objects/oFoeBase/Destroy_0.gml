/// @description

var push = _wall_push;
wall_kick(-_wall_push);

camera_shake(3,3,0.5);

instance_create_depth(x,y,depth, oExplosion);


if (!global._exploded_on_this_frame)
{
	audio_play_sound(choose(snExplose___1, snExplose___2, snExplose___3, snExplose___4), 0, false);

	global._exploded_on_this_frame = true;
}

var _scr = _score;
with(oShip)
{
	_score += _scr;	
}