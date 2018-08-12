/// @description

other._current_weapon = _weapon;

instance_destroy();

var ar = global.weapon_db[_weapon];
	
with(instance_create_depth(x,y-16, depth, oCrateMessage))
{

	_message = ar[WDB.TEXT];
}

audio_play_sound(snPowerUp, 0.5, false);