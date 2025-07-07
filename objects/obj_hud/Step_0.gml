if(instance_exists(obj_yanomae) or instance_exists(obj_ninan))
{
	
	if(global.personagem == obj_yanomae)
	{
		x = (obj_yanomae.x - (obj_cam.cam_largura / 2));
		y = (obj_yanomae.y - (obj_cam.cam_altura / 2));

		x = clamp(x, 0, room_width - obj_cam.cam_largura)+20;
		y = clamp(y, 0, room_height - obj_cam.cam_altura)+20;

		camera_set_view_pos(view_camera[0], x, y);
	}
	else if(global.personagem == obj_ninan)
	{
		x = obj_ninan.x - (obj_cam.cam_largura / 2);
		y = (obj_ninan.y - (obj_cam.cam_altura / 2));

		x = clamp(x, 0, room_width - obj_cam.cam_largura)+20;
		y = clamp(y, 0, room_height - obj_cam.cam_altura)+20;	
		
		camera_set_view_pos(view_camera[0], x, y);
	}
}













