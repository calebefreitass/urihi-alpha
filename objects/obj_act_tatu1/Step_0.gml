if(place_meeting(x,y,obj_parente_personagens))
{
	
	obj_tatu1.estado = "vb";
	obj_tatu1.direc = 1;
	instance_destroy();	
}

if(!instance_exists(obj_tatu1))
{
		instance_destroy();
}
	





