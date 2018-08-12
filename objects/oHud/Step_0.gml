/// @description

if (instance_number(oShip) > 0)
{
	var cur_life = oShip._life
	if (_player_last_live > cur_life)
	{
		var delta = abs(1.0 - (_player_life_prev - cur_life) / (ceil(_player_last_live) - cur_life)) * 0.25 + 0.001;
		_player_life_prev = approach(_player_life_prev, cur_life, delta);
		
		if (abs(_player_life_prev - cur_life) < 0.05)
		{
			_player_last_live = cur_life;
		}
	}
}