/// @description

var _x = 32 + camera_get_view_x(view_camera[0]);
var _y = 8 //+ camera_get_view_y(view_camera[0]);
var _w = 128;
var _h = 16;

var _life = 0;
var _life_max = 1;

with(oShip)
{
	_life = self._life;
	_life_max = self._life_max;
}



if (_life > 0)
{
	draw_set_color(c_white);
	draw_rectangle(_x+1, _y+1, _x + _w + 1, _y + _h + 1, false);
	draw_set_color(c_black);
	draw_rectangle(_x, _y, _x + _w, _y + _h, false);

	draw_set_color(c_white);
	draw_set_font(fDebug);

	draw_text(_x+1, _y+1, "hp:");
	var _x_offset = 18;
	var _bar_w = (_w-_x_offset) * (_player_life_prev / _life_max);
	draw_set_color(c_gray);
	draw_rectangle(_x+_x_offset, _y+1, _x + _x_offset + _bar_w - 1, _y + _h - 1, false);
	
	draw_set_color(c_white);
	_bar_w = (_w-_x_offset) * (_life / _life_max);
	draw_rectangle(_x+_x_offset, _y+1, _x + _x_offset + _bar_w - 1, _y + _h - 1, false);
	
	_x += _w + 8;
	
	draw_text_outline(_x, _y, "Score : " + string_format(_score,6,0), c_black, c_white);
}
else
{
	draw_set_halign(fa_center);
	//draw_text(_x+_w/2, _y+1, " --- GAME OVER --- ");
	
	draw_set_valign(fa_center);
	draw_set_font(fTitle);
	
	draw_set_color(c_white);
	draw_text(room_width/2+1, room_height/2, "GAME OVER");
	draw_text(room_width/2-1, room_height/2, "GAME OVER");
	draw_text(room_width/2, room_height/2+1, "GAME OVER");
	draw_text(room_width/2, room_height/2-1,"GAME OVER");

	draw_set_color(c_black);
	draw_text(room_width/2, room_height/2, "GAME OVER");
	
	draw_set_font(fSubTitle);
	
	draw_text_outline(room_width/2, room_height * 2/3, "Score : " + string(_score), c_white, c_black);
	draw_set_font(fDebug);
	if(current_second mod 2)
	{
		draw_text_outline(room_width/2, room_height * 4/5, "--- Press Enter or Start to restart ---", c_white, c_black);	
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

draw_set_color(c_white);

// Debug text
_y = room_height - 16 + camera_get_view_y(view_camera[0]);

//draw_set_color(c_black);
//draw_rectangle(_x,_y,_x+_w,_y+16, false);
//draw_set_color(c_white);
//draw_text(_x,_y, "debug -- hp:" + string(_life) + ", fps:"+string(fps));