/// @description

var layers = layer_get_all();

for (var i = 0; i < array_length_1d(layers); ++i) {
    var _layer = layers[i];
	
	var name = layer_get_name(_layer);
	show_debug_message(name);
	name = string_lower(name);
	if (string_count("wave", name) > 0)
	{
		instance_deactivate_layer(_layer);
	}
}
