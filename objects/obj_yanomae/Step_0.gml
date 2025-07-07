//YANOMAE

//SISTEMA DE PAUSE
if(global.pause or global.tutorial){
	//parando animações
	image_speed = 0;
	exit;
} else{ 
	//retornando animações
	image_speed = 1;
	}

#region CONTROLES/VARIAVEIS
var _move, _key_right, _key_left, _key_jump, _key_dash, _val_dash, _chao, _key_troca, _key_atk, _lado_soco, _lado_hb

_key_right = keyboard_check(ord("D"));	// direita
_key_left = keyboard_check(ord("A"));	// esquerda
_key_jump = keyboard_check_pressed(vk_space);	// pular
_key_dash = keyboard_check_pressed(ord("L"));	// investida/dash
_chao = place_meeting(x, y + 1, obj_colisor);	// verificação de colisão
_key_troca = keyboard_check_pressed(ord("H"))	//troca de personagem
_key_atk = keyboard_check_pressed(ord("J"));	// ataque
_lado_soco = x + (15 * image_xscale);
_lado_hb = x + (40 * image_xscale);
#endregion

#region MOVIMENTAÇÃO

//	definindo direção (direta||esquerda)
_move = _key_right - _key_left;	

var _ladin = 0
// aplicando velocidade horizontal
hspd = _move * spd;	

//iniciando o som em cada passo do personagem
if(_chao and _move != 0)
{
	if(alarm[5] <= 0)
	{
	audio_play_sound(sd_walk_grass, 1, 0);	
	alarm[5] = 10;
	} else if (alarm[5] > 0) {
		audio_stop_sound(sd_walk_grass);
	}
}

//	aplicando gravidade
if(!_chao)
{
	vspd = vspd + grvt;
}

//	definindo lado do soco
if(image_xscale > 0)
{
	lado = 0;
	_ladin = 40;
}
else if(image_xscale < 0)
{
	lado = 1;	
	_ladin = -40;
}

//	reiniciando dash
if(place_meeting(x, y + 1, obj_colisor))
{
	dar_dash = true;
}
	
//	reiniciando total de pulos
if(_chao)
{
	tjump = 2;	
}

#endregion

#region DASH



#endregion

#region COLISÃO

//	COLISÃO HORIZONTAL
if (place_meeting(x + hspd, y, obj_colisor))
{
	
	while(!place_meeting(x + sign(hspd), y, obj_colisor))
	{
		x = x + sign(hspd);	
	}
	daash = false;
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

// APLICANDO A VELICADE HORIZONTAL AO EIXO X
//y += vspd;

#endregion

#region MÁQUINA DE ESTADO

switch(estado)
{
	
case "idle":
	{
		// comportamento do estado
		sprite_index = spr_yanomae_idle;
		daash = false;
		
		// condição para mudar de estado
		if(_key_right or _key_left)
		{
			estado = "walk";	
		}
		else if (_key_jump or vspd != 0)
		{
			estado = "jump";
			audio_play_sound(sd_player_jump, 1, 0);	
			image_index = 0;
			vspd = (jforce * _key_jump);
			//tjump -= 1;
		}
		else if (_key_atk)
		{
			estado = "atk";
			audio_play_sound(sd_punch, 1, 0);	
			image_index = 0;
		}
		else if(_key_troca and _chao)
		{
		estado = "troca";
		audio_play_sound(snd_troca,1,0);
		image_index = 0;
		}
		else if(global.vida_player <= 0)
		{
		estado = "dead";	
		audio_stop_sound(sd_fase_1);
		audio_play_sound(sd_defeat, 1, 0);	
		alarm[4] = 480;
		}
		
		break
	}
case "jump":
	{
			//comportamento
			// APLICANDO A VELociADE HORIZONTAL AO EIXO X E Y
			x += hspd;
			y += vspd;
			
			daash = true;
			
			// "Função" p/ alterar direção da sprite
if (hspd != 0)
{
	image_xscale = sign(hspd);
}
			
	if(vspd > 0)
	{
		sprite_index = spr_yanomae_down
	}
	else
	{
		sprite_index = spr_yanomae_jump
			
		if (image_index >= image_number - 1)
		{
			image_index = image_number - 1;	
		}
			
	}

		
		//condição de troca
		if (vspd = 0 and _chao)
		{
			estado = "idle";
		}
		else if (_key_atk)
		{
			estado = "atk";
			audio_play_sound(sd_punch, 1, 0);	
			image_index = 0;
		}
		else if(global.vida_player <= 0)
		{
		estado = "dead";	
		audio_stop_sound(sd_fase_1);
		audio_play_sound(sd_defeat, 1, 0);	
		alarm[4] = 480;
		}
		else if(_key_dash and dar_dash)
		{
			
		dar_dash = false;
		estado = "dash";
		audio_play_sound(sd_dash, 1, 0);	
		
		if(alarm_dash == false)
			{
				alarm[0] = 15;	
				alarm_dash = true;
			}
		}
		
		break
	}
case "walk":
	{
		// comportamento
		// APLICANDO A VELociADE HORIZONTAL AO EIXO X E Y
		x += hspd;
		y += vspd;
		sprite_index = spr_yanomae_walk;
		
		
		
		// "Função" p/ alterar direção da sprite
if (hspd != 0)
{
	image_xscale = sign(hspd);
}
		
		// condição de troca
		if(_move == 0 and _chao)
		{
			estado = "idle";
			hspd = 0;
		}
		else if (_key_jump or vspd != 0)
		{
			estado = "jump";
			image_index = 0;
			vspd = (jforce * _key_jump);
			//tjump -= 1;
		}
		else if (_key_atk)
		{
			estado = "atk";
			audio_play_sound(sd_punch, 1, 0);	
			image_index = 0;
		}
		else if(_key_troca and _chao)
		{
		estado = "troca";
		audio_play_sound(snd_troca,1,0);
		image_index = 0;
		}
		else if(global.vida_player <= 0)
		{
		estado = "dead";	
		audio_stop_sound(sd_fase_1);
		audio_play_sound(sd_defeat, 1, 0);	
		alarm[4] = 480;
		
		}
		else if(_key_dash and dar_dash)
		{
			
		dar_dash = false;
		estado = "dash";
		audio_play_sound(sd_dash, 1, 0);	
		
		if(alarm_dash == false)
			{
				alarm[0] = 15;	
				alarm_dash = true;
			}
		}
		
		break
	}
case "dash":
	{

	vspd = 0;
	instance_create_layer(x, y, "Instances", obj_yanomae_sombra);
	_val_dash = (_key_right - _key_left) * dash_speed;
	hspd += lerp(0, _val_dash, 0.3);	
	
	if(place_meeting(x + hspd, y, obj_colisor))
	{
		hspd = 0;
	} else {
		x += hspd;	
	}
	
	}
	break
	
	
case "atk":
	{
		//	comportamento
		hspd = 0;
		sprite_index = spr_yanomae_atk;
		daash = false;
		
		
		if(image_index >= image_number - 4 and !instance_exists(obj_yanomae_punch))
		{
			instance_create_layer(_lado_soco , y + 10, "Instances", obj_yanomae_punch);
			instance_create_layer(_lado_hb ,y - 25, "Instances", obj_hitbox);
		}
		//	condição de troca
		//	retorna para estado idle quando animação chega no último frame
		if(image_index > image_number - 1)
		{
			instance_destroy(obj_yanomae_punch)
			estado = "idle";
		}
		
		
		break
	}
case "troca":
	{
		
	//comportamento
	hspd = noone;
	sprite_index = spr_troca;
	daash = false;
	
	
	//condição de troca
	if(image_index > image_number - 1)
		{
		//	"setando" qual  personagem está sendo utilizado
		global.personagem = obj_ninan;
		
		//	criando instancia do outro personagem
		instance_create_layer(x, y, "Instances", obj_ninan);
		
		//	destruindo a instancia do personagem atual
		instance_destroy();	
		}
	
		
	}
	break
	
case "dead":
	{
		//	COMPORTAMENTO
		y += vspd;
		sprite_index = spr_yanomae_die
		global.vida_player = 0;
		
	break
	}
}

#endregion

//CRIANDO "CAMPO DE VISÃO" A CADA 5 FRAMES DO JOGO
/*
if(alarm[3] > 0)
{
	instance_create_layer(x,y,"Instances", obj_visao);
}else if(alarm[3] <= 0)
{
	instance_destroy(obj_visao);
	alarm[3] = 5;
}
*/
// FAZENDO O PERSONAGEM PISCAR AO RECEBER DANO
/*
if(estado != "dead")
{
	if(alarm[2] > 0)
	{
		if(image_alpha >= 1)
		{
			alpha_hit = -0.25;
		}
		else if (image_alpha <= 0 )
		{
		alpha_hit = 0.25;	
	}
	
		image_alpha += alpha_hit;
	
	}
	else 
	{
		image_alpha = 1;	
	}
}

*/