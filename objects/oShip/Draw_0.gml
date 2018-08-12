/// @description

var turn_frame = _turn_timer div _turn_timer_rate;
turn_frame = min(turn_frame, image_number);

if (_iframes == 0 || ((_iframes div 5) mod 2) == 0)
{
	draw_sprite_ext(sprite_index, turn_frame, x,y, 1, _turn_facing, 0,c_white, 1);
}

draw_sprite(_boost_image, _boost_frame, x - 10 + irandom_range(-1,1), y + irandom_range(-1,1));