var _dialogo;
var _a, _d, _l, _space, _j, _esc , _h
_a = keyboard_check_pressed(ord("A"));
_d = keyboard_check_pressed(ord("D"));
_l = keyboard_check_pressed(ord("L"));
_space = keyboard_check_pressed(vk_space);
_j = keyboard_check_pressed(ord("J"));
_esc = keyboard_check_pressed(vk_escape);

if(distance_to_object(obj_yanomae) <= 35)
{	
	if(_a or _d or _l or _space or _j or _esc )
	{
		global.tutorial = true;
	_dialogo = instance_create_layer(0,0,"Instances_1",obj_dialogo)	
	for(var _i =0 ; _i < array_length(texto); _i++){
	array_push(_dialogo.texto,texto[_i]);
	}
	}
}




















