/// @description

if (oGameManager._state != GameState.RUN)
	return;
	
if (ds_list_size(_wave_queue) <= 0)
{
	ds_list_copy(_wave_queue, _waves);
	ds_list_shuffle(_wave_queue);
}

_delay = max(0, _delay-1);
if (_delay <= 0 && instance_number(oFoeBase) <= 0)
{
	var _layer = _wave_queue[|0];
	ds_list_delete(_wave_queue, 0);
	
	spawn_wave(_layer);
}