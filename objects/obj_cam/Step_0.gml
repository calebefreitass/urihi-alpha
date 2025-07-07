if(instance_exists(obj_yanomae) or instance_exists(obj_ninan))
{
	
	if(global.personagem == obj_yanomae)
	{
		x = obj_yanomae.x - (cam_largura / 2);
		y = obj_yanomae.y - (cam_altura / 2);

		x = clamp(x, 0, room_width - cam_largura);
		y = clamp(y, 0, room_height - cam_altura);

		camera_set_view_pos(view_camera[0], x, y);
	}
	else if(global.personagem == obj_ninan)
	{
		x = obj_ninan.x - (cam_largura / 2);
		y = obj_ninan.y - (cam_altura / 2);

		x = clamp(x, 0, room_width - cam_largura);
		y = clamp(y, 0, room_height - cam_altura);	
		
		camera_set_view_pos(view_camera[0], x, y);
	}
}







