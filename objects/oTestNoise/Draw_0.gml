/// @description

for (var _y = 0; _y < 100; _y++)
{
	for (var _x = 0; _x < 100; _x ++)
	{
		var c = make_color_hsv(0,0,noise_smooth_2d(_x,_y,25)*255);
		draw_point_color(_x,_y,c);
	}
	
}
