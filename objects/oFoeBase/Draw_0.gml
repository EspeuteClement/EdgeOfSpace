/// @description

var color = make_color_hsv(0,0, (0.25+0.75*(1.0 - _iframes / _iframes_max)) * 255 );
draw_sprite_ext(sprite_index, image_index, x, y, 1,1,0, color, 1.0);