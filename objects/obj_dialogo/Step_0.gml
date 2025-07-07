if(keyboard_check_pressed(vk_enter))
{
	index++;
	if(index >= array_length(texto)){
		global.tutorial = false;
		instance_destroy();	
		instance_destroy(inst_59702425);
	}
}









