/// @description

var _sx = irandom_range(-1,1);
var _sy = irandom_range(-2,2);

draw_set_color(c_white);
draw_circle(x,y,irandom_range(8,12),false);
draw_rectangle(x+_sx,y-_width+_sy, x+room_width, y+_width+_sy, false);

instance_destroy();