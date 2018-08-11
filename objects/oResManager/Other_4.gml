/// @description Set Camera

view_enabled		= true
view_camera[0]		= camera_create_view(0,0,_BaseWidth, _BaseHeight);
view_visible[0]		= true;

if (surface_exists(_TargetSurface))
{
	view_set_surface_id(0,_TargetSurface);
}