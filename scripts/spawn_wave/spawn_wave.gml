
with(oWaveManager)
{
	var _layer = argument0;
	var _current_layer = layer_get_id("Instances");

	// Copy all instances to current layer

	var _elements = layer_get_all_elements(_layer);
	for (var i = 0; i < array_length_1d(_elements); i++)
	{
	    if (layer_get_element_type(_elements[i]) == layerelementtype_instance)
	    {
	    var _layerelement = _elements[i];
	    var _inst = layer_instance_get_instance(_layerelement);
		
		instance_activate_object(_inst);
		with(_inst)
		{
			global.parent = id;
			with(instance_create_layer(x,y, _current_layer, object_index))
			{	

			}
			global.parent = noone;
		}
		instance_deactivate_object(_inst);
	    }
	}
}
