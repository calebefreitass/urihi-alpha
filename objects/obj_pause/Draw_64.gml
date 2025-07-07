var _gui_w, _gui_h;
_gui_w = display_get_gui_width();
_gui_h = display_get_gui_height();


if(global.pause)
{
	//posso desenhar a interface de pause
	draw_set_alpha(.8);
	draw_set_color(c_black);
	draw_rectangle(0,0,_gui_w,_gui_h,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	if(keyboard_check_pressed(ord("F")))
	{
		room_goto(rm_menu);	
	}
	
}	







