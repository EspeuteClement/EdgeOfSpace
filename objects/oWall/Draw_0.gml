/// @description

/*for (var _y = -1; _y <= room_height ; _y += irandom_range(8,32))
{
	for (var _x = -1; _x < x ; _x += irandom_range(8,32))
	{
		var cx  = _x  + irandom_range(-1,1);
		var cy  = _y + irandom_range(-1,1);
		
		var r = irandom_range(8,sprite_width);
		
		var c = make_color_hsv(0,0,irandom_range(127,168));
		draw_circle_color(cx,cy,r, c, c, false);
	}
}*/


var alpha = (1 - clamp(_vx, -1, 0) / -1);

var amt = 0.25;

var c = make_color_hsv(0,0,255 * (1-amt + amt*alpha));
draw_set_color(c);
draw_rectangle(-15,-15,x, room_height+15, false);

var time = get_timer()/10000;
for (var _y = -1; _y <= room_height div 32; _y ++)
{

		var cx  = x + noise_smooth_2d(time, _y*32, 10)*16 - 16;
		var cy  = _y * 32 + noise_smooth_2d(time, _y*32, 5)*16;
		
		var r = 32;
		
		
		draw_circle_color(cx,cy,r, c, c, false);
}



draw_set_color(c_white);
