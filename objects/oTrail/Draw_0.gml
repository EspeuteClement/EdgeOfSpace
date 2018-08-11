/// @description

var _x = x + camera_get_view_x(view_camera[0])*_depth;
var _y = y + camera_get_view_y(view_camera[0])*_depth;
draw_rectangle_color(_x,_y,_x+_length, _y+_width, _color, _color, _color, _color, false);