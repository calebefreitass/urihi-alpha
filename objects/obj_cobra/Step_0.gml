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
		//COMPORTAMENTO
		sprite_index = spr_cobra_idle;
		
		//CONDIÇÃO DE TROCA
		if(vida <= 0)
		{
		estado = "die";
		image_index = 0;
		}
		break
	}
case "atk":
	{
		//COMPORTAMENTO
		sprite_index = spr_cobra_atk;
		
	
		if(place_meeting(x, y, obj_parede))
		{
			if(direc == 0)
			{
				direc = 1;	
			} else if(direc == 1)
			{
				direc = 0;	
			}
		}
		
		if(direc == 0)
		{
			image_xscale = -1;
			x += hspd;
			
		} else if(direc == 1)
		{
			image_xscale = 1;
			x -= hspd;	
		}
		
		//CONDIÇÃO DE TROCA
		if(vida <= 0)
		{
		estado = "die";
		audio_play_sound(sd_animals_hit,1,0);
		image_index = 0;
		}
		
		
	break
	}
	case "die":
	{
		y += kforce;
		
	break	
	}
}

		
		
