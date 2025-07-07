//SISTEMA DE PAUSE
if(global.pause){
	//parando animações
	image_speed = 0;
	exit;
} else{ 
	//retornando animações
	image_speed = 1;
	}

switch(estado)
{
	
	case "consumivel":
	{
		sprite_index = spr_tucuma;
		
		
	break
	}
	case "consumida":
	{
		sprite_index = spr_tucuma_eat;
		
		if(image_index > image_number - 1)
		{	
			//	destruindo a instancia do personagem atual
			instance_destroy();	
		}
	
	break
	}
}








