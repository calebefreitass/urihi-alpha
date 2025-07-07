#region CONTROLES/VARIAVEIS
var _key_right, _key_left, _key_jump, _key_dash, _val_dash, _chao, _key_troca

_key_right = keyboard_check(ord("D"));	// direita
_key_left = keyboard_check(ord("A"));	// esquerda
_key_jump = keyboard_check_pressed(vk_space);	// pular
_key_dash = keyboard_check_pressed(ord("L"));	// investida/dash
_chao = place_meeting(x, y + 1, obj_colisor);	// verificação de colisão
_key_troca = keyboard_check(ord("H"))	//troca de personagem
#endregion

#region MOVIMENTAÇÃO

//	definindo direção (direta||esquerda)
var _move = _key_right - _key_left;	

// aplicando velocidade horizontal
hspd = _move * spd;	

//	aplicando gravidade
if(!_chao)
{
	vspd = vspd + grvt;
}



// "Função' p/ alterar direção da sprite
if (hspd != 0) image_xscale = sign(hspd);

if(place_meeting(x, y + 1, obj_colisor))
{
	dar_dash = true;	
}
if(_chao)
{
	tjump = 2;	
}

#endregion

#region DASH

if(_key_dash and dar_dash)
{
	dar_dash = false;
	estado_dash = "dash";
	
	if(alarm_dash == false)
	{
		alarm[0] = 15;	
		alarm_dash = true;
	}
}
	
if(estado_dash == "dash")
{
	instance_create_layer(x, y, "Instances", obj_yanomae_sombra);
	_val_dash = (_key_right - _key_left) * dash_speed;
	hspd += lerp(0, _val_dash, 0.3);	
}

#endregion

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






