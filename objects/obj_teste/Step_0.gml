var _chao;
_chao = place_meeting(x, y + 1, obj_colisor);

#region COLISÃO

//	COLISÃO HORIZONTAL
if (place_meeting(x + hspd, y, obj_colisor))
{
	
	while(!place_meeting(x + sign(hspd), y, obj_colisor))
	{
		x = x + sign(hspd);	
	}
	
	hspd = 0;
}

// APLICANDO A VELociADE HORIZONTAL AO EIXO X
x += hspd;

if(!_chao)
{
	vspd = vspd + grvt;
}

//	COLISÃO VERTICAL
if (place_meeting(x , y + vspd, obj_colisor))
{
	
	while(!place_meeting(x, y + sign(vspd), obj_colisor))
	{
		y = y + sign(vspd);	
	}
	
	vspd = 0;
}

// APLICANDO A VELICADE HORIZONTAL AO EIXO X
y += vspd;

#endregion

#region MAQUINA DE ESTADO
switch(estado)
{
case "idle": 
	{
		//	COMPORTAMENTO
		sprite_index = spr_teste_idle;
		
		//	CONDIÇÃO DE TROCA
		if(hp <= 0)
		{
			estado = "die"	
		}
		
	}
	break
	
	case "atk":
	{
		
	}
	break
	
case "damage":
	{
		//	COMPORTAMENTO
		sprite_index = spr_teste_damage
		mask_index = noone;
		
		//	CONDIÇÃO DE TROCA
		if(image_index > image_number - 1)
		{
			estado = "idle";
		}
		
	}
	break
case "die":
	{
		//	COMPORTAMENTO
		sprite_index = spr_teste_die
		
		//	CONDIÇÃO DE TROCA
		if(image_index > image_number - 1)
		{
			instance_destroy();
		}
	}
	break
}
#endregion