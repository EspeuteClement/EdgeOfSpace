/// @description

draw_set_halign(fa_center);
//draw_text(_x+_w/2, _y+1, " --- GAME OVER --- ");
	
draw_set_valign(fa_center);
draw_set_font(fTitle);

var pos =  room_height/4; 
var txt = "EDGE OF\nSPACE"
draw_set_color(c_black);
draw_text(room_width/2+1,pos, txt);
draw_text(room_width/2-1, pos, txt);
draw_text(room_width/2, pos+1, txt);
draw_text(room_width/2, pos-1,txt);

draw_set_color(c_white);
draw_text(room_width/2, pos, txt);

draw_set_font(fDebug);

if(current_second mod 2)
{
	draw_text_outline(room_width/2, room_height * 1/2, "--- Press Space or Start to play ---", c_black, c_white);	
}

draw_text_outline(room_width/2, room_height * 4/5, " Arrows/ESDF/Left Stick to move\nSpace/Button A to shoot", c_black, c_white);	

	
	
draw_set_font(fDebug);
draw_set_color(c_black);


draw_set_halign(fa_left);
draw_set_valign(fa_top);

