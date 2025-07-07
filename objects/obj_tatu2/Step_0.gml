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
		sprite_index = spr_tatu_idle;
		
		//CONDIÇÃO DE TROCA
		if (vida <= 0)
		{
			estado = "die";	
		audio_play_sound(sd_animals_hit,1,0);
		}
		
	break	
	}
	case "walk":
	{
		
		//COMPORTAMENTO
		sprite_index = spr_tatu_walk;
		
		//trocando direção do tatu ao colidir com a parede
		if(place_meeting(x, y, obj_parede_tatu2))
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
			image_xscale = 1;
			hspd = 2;
			
		} else if(direc == 1)
		{
			image_xscale = -1;
			hspd = -2;	
		}
		
		// condição de troca
		if (vida <= 0)
		{
			estado = "die";	
		audio_play_sound(sd_animals_hit,1,0);
		}
	break	
	}
	case "vb":
	{
		//COMPORTAMENTO
		hspd = 0;
		y -= 1;
		sprite_index = spr_tatu_vb;
		
		//CONDIÇÃO DE TROCA
		if(image_index > image_number - 1)
		{
			estado = "atk";
		} 
		else if (vida <= 0)
		{
			estado = "die";	
		audio_play_sound(sd_animals_hit,1,0);
		}
		
	break	
	}
	case "atk":
	{
		//COMPORTAMENTO
		sprite_index = spr_tatu_atk;
		
		
		//CONDIÇÃO DE TROCA
		//trocando direção do tatu ao colidir com a parede
		if(place_meeting(x, y, obj_parede_tatu2))
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
			image_xscale = 1;
			hspd = 10;
			
		} else if(direc == 1)
		{
			image_xscale = -1;
			hspd = -10;	
		}
		
		// condição de toca
		if (vida <= 0)
		{
			estado = "die";	
		audio_play_sound(sd_animals_hit,1,0);
		}
	break
	}
	case "db":
	{
		//COMPORTAMENTO
		sprite_index = spr_tatu_db;
		
		//CONDIÇÃO DE TROCA
		if (vida <= 0)
		{
			estado = "die";	
		}
		
	break
	}
	case "die":
	{
		hspd = 0;
		y += kforce;
	
	break	
	}
}

x += hspd;







