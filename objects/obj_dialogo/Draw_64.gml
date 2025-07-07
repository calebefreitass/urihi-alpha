if(instance_exists(obj_dialogo))
{
var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();
var _xx = 0;
var _yy = _gui_altura - 200;


draw_set_alpha(.8);
draw_set_color(c_black);
draw_rectangle(_xx, _yy, _gui_largura, _gui_altura,0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(ft_Peaberry);
draw_text((_gui_largura/2) - string_width(texto[index]) / 2, _yy + 10, texto[index]);

}







