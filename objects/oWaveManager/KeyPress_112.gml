/// @description

var layer_id = irandom(ds_list_size(_waves)-1);
var _layer = _waves[|layer_id];
	
spawn_wave(_layer);