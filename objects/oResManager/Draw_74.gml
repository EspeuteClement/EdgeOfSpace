/// @description Draw TargetSurface

var _x = (surface_get_width(application_surface) - _TargetWidth) / 2;
var _y = (surface_get_height(application_surface) - _TargetHeight) / 2;

//draw_clear(make_color_rgb(34,32,52));
draw_clear(make_color_rgb(16,16,16));
shader_set(shCurve);
draw_surface_stretched(_TargetSurface, _x,_y, _TargetWidth, _TargetHeight);
shader_reset();