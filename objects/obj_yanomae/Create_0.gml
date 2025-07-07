#region MOVIMENTAÇÃO BASE

spd = 5;	//	VELOCIDADE DO JOGADOR
hspd = 0;	// VELOCIDADE HORIZONTAL
vspd = 0;	// VELOCIADE VERTICAL
jforce = -13;	// FORÇA DO PULO
tjump = 3;		//TOTAL DE PULOS	
grvt = 0.5;	// GRAVIDADE	
lado = noone;
soco = false;
volta = noone;
daash = true;
#endregion 

#region DASH
estado = "idle";	//VARIÁVEL PARA CONFERIR OS ESTADOS
estado_dash = "ndash";	// VARIÁVEL PARA CONFERIR ESTADO DO DASH
dash_speed = 40;	// VELOCIDADE DO DASH
alarm_dash = false;	//	ALARME DO DASH
dar_dash = true;	
#endregion 
daash = true;
global.personagem = obj_yanomae;
global.hspd_yanomae = noone;

alarm[2] = 0;
alpha_hit = 0;
alarm[3] = 5;





