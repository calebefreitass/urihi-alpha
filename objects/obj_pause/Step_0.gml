
if(keyboard_check_pressed(vk_escape))
{
	global.pause = !global.pause;
	audio_pause_sound(sd_fase_1)
	
	if(global.pause)
	{
	audio_play_sound(sd_pause_game, 1, 0);	
	} else{
	audio_play_sound(sd_resume_game, 1, 0);	
	audio_resume_sound(sd_fase_1);
	}
}


/*
if( keyboard_check_pressed(vk_escape))
{
	if(room != rm_pause){
		if(instance_exists(obj_yanomae))
		{
			obj_yanomae.persistent = false;
			global.pause = true;
			instance_activate_all();
	
	}
	else if(instance_exists(obj_ninan))
		{
			obj_ninan.persistent = false;
			global.pause = true;
			instance_activate_all();
	
	}
	room_previous(room);
	room_goto(rm_pause);
} else {
	room_goto_previous();
	instance_deactivate_all(true);
}
}
	
*/
	










