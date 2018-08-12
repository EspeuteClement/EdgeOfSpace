/// @description

instance_create_depth(x,y,depth, oExplosion);

for (var i = 0; i < 16; i++)
{
	with(instance_create_depth(x,y,depth, oFoeBulletBase))
	{
		_vx = lengthdir_x(3, i * 360/16);
		_vy = lengthdir_y(3, i * 360/16);	
	}
}

var snd = audio_play_sound(snExplose___4, 0.5, false);
audio_sound_pitch(snd, 1.4);