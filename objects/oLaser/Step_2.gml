/// @description

var list = ds_list_create();
var cols = collision_rectangle_list(x,y-_width, room_width, y+_width, oFoeBase, false, true, list, false);

for (var i = 0; i < ds_list_size(list); i++)
{
	hurt(4, list[| i]);
}

ds_list_destroy(list);