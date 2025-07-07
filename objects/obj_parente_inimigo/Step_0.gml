

//FAZER O INIMIGO PISCAR AO RECEBER UM ATAQUE
if (hit == true)
{
	audio_play_sound(sd_animals_hit, 1, 0);	
	alarm[10] = 5;
	hit = false;
}

chao = place_meeting(x,y + 1, obj_colisor);
//	aplicando gravidade
if(!chao)
{
	vspd = vspd + grvt;
}
// APLICANDO A VELICADE HORIZONTAL AO EIXO X
y += vspd;
if(estado != "die")
{
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
//x += hspd;


//	COLISÃO VERTICAL
if (place_meeting(x , y + vspd, obj_colisor))
{
	
	while(!place_meeting(x, y + sign(vspd), obj_colisor))
	{
		y = y + sign(vspd);	
	}
	
	vspd = 0;
}



#endregion
}








