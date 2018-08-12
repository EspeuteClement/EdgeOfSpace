/// @description

if ( (_timer < 30 || (_timer_max - _timer < 30)) &&  (_timer div 4) mod 2 == 0)
	return;

var str = string_copy(_message,0,min(_timer div 3, string_length(_message)));

draw_set_font(fDebug);
draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(x+1,y,str);
draw_text(x-1,y,str);
draw_text(x,y+1,str);
draw_text(x,y-1,str);

draw_set_color(c_white);
draw_text(x,y,str);

draw_set_halign(fa_left);