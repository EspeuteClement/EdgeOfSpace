/// @description

repeat(2)
{
	var _x = x + irandom_range(-5, 5);
	var _y = y + irandom_range(-5, 5);
	var _radius = irandom_range(4,24);

	draw_circle_color(_x,_y, _radius, c_gray, c_gray, false);
}
