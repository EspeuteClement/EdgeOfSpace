/// @description Draw TargetSurface

var _x = (surface_get_width(application_surface) - _TargetWidth) / 2;
var _y = (surface_get_height(application_surface) - _TargetHeight) / 2;

draw_surface_stretched(_TargetSurface, _x,_y, _TargetWidth, _TargetHeight);