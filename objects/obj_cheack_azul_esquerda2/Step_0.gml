//SISTEMA DE PAUSE
if(global.pause){
	//parando animações
	image_speed = 0;
	exit;
} else{ 
	//retornando animações
	image_speed = 1;
	}

if(obj_sapo_azul2.estado == "die")
{
	instance_destroy();	
}
else if(instance_exists(obj_sapo_azul2) and obj_sapo_azul2.estado != "die")
{
	if(place_meeting(x,y,obj_parente_personagens))
	{
	
		obj_sapo_azul2.estado = "atk";
		obj_sapo_azul2.direc_sapo = 1;

	}	
}













