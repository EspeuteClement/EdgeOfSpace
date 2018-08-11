/// @description

_depth = random_range(0.15,1)*random_range(0.15,1);

depth = -floor((_depth*100)) + 100;

x = room_width;
y = irandom(room_height-1);
_length = irandom_range(4,32)*_depth;
_width = ceil(_depth * 2);
_vx = -(_depth * 5 + 2.5);
_color = make_color_hsv(0,0,255*_depth);
