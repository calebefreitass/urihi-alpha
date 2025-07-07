if(place_meeting(x,y,obj_parente_personagens))
{
	
	obj_tatu2.estado = "vb";
	obj_tatu2.direc = 1;
	instance_destroy();	
}

if(!instance_exists(obj_tatu2))
{
		instance_destroy();
}
	





