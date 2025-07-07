event_inherited();

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
	case "idle":
	{
		//comportamento
		sprite_index = sprite_idle;
		
		
		if(vida <= 0)
		{
			estado = "die";	
			audio_play_sound(sd_animals_hit, 1, 0);	
		}
		
	break
	}
	case "atk":
	{
		
		//COMPORTAMENTO
		sprite_index = sprite_atk;
		
		if(direc_sapo == 0)
		{
			ladin = -25;
			image_xscale = -1;
			
		} else if(direc_sapo == 1)
		{
			ladin = 25;
			image_xscale = 1;	
		}
		
		//condição de troca
		if(image_index > image_number - 1)
		{
			alarm[0] = 5;
		}
		
		if(vida <= 0)
		{
			estado = "die";	
		}
	
	break
	}
	case "die":
	{
		y += kforce;
		
	}
	break	
	}









