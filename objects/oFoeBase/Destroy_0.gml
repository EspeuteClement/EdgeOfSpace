/// @description

var push = _wall_push;
wall_kick(-_wall_push);

camera_shake(3,3,0.5);

audio_play_sound(choose(snExplose___1, snExplose___2, snExplose___3, snExplose___4), 0, false);

instance_create_depth(x,y,depth, oExplosion);